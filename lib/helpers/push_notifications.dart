import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:malbazar/imports.dart';

import '../data/constants.dart';

/// Define a top-level named handler which background/terminated messages will
/// call.
///
/// To verify things are working, check out the native platform logs.
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  print('Handling a background message ${message.messageId}');
}

class PushNotificationsManager {
  PushNotificationsManager._();

  factory PushNotificationsManager() => _instance;

  static final PushNotificationsManager _instance =
      PushNotificationsManager._();

  static final _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  bool _initialized = false;
  String? _token;

  String? getToken() {
    return _token;
  }

  Future<void> init() async {
    if (!_initialized) {
      // Set the background messaging handler early on, as a named top-level function
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);

      await _firebaseMessaging.requestPermission(
          alert: true, badge: true, sound: true);

      if (!kIsWeb) {
        final android = AndroidInitializationSettings('mipmap/ic_launcher');
        final iOS = IOSInitializationSettings();
        final platform = InitializationSettings(android: android, iOS: iOS);

        await _flutterLocalNotificationsPlugin.initialize(platform);

        await _firebaseMessaging.requestPermission(
            sound: true, alert: true, badge: true, provisional: false);

        await _firebaseMessaging.subscribeToTopic('allDevices');
      }

      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        print('onmessage $message');
        RemoteNotification? notification = message.notification;
        AndroidNotification? android = message.notification?.android;
        if (notification != null && android != null && !kIsWeb) {
          _flutterLocalNotificationsPlugin.show(
              notification.hashCode,
              notification.title,
              notification.body,
              NotificationDetails(
                android: AndroidNotificationDetails(
                  'channelId',
                  'Уведомления',
                  channelDescription: 'Канал уведомлений',
                  icon: 'icon_1',
                ),
              ));
        }
      });
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        print('onNotificationOpen');
      });

      _token = await _firebaseMessaging.getToken();
      _firebaseMessaging.subscribeToTopic('allDevices');
      _firebaseMessaging.onTokenRefresh.listen((newToken) {
        _token = newToken;
      });

      _initialized = true;
    }
  }

  Future<bool> didNotificationLaunchApp() async {
    final notificationLaunchDetails = await FlutterLocalNotificationsPlugin()
        .getNotificationAppLaunchDetails();
    return notificationLaunchDetails?.didNotificationLaunchApp ?? false;
  }

  Future<void> disable() async {
    if (LocaleStorage().fcmEnabled) {
      await FirebaseMessaging.instance.deleteToken();
      LocaleStorage().fcmEnabled = false;
    }
  }

  Future<void> enable() async {
    if (!LocaleStorage().fcmEnabled) {
      _token = await _firebaseMessaging.getToken();
      LocaleStorage().fcmEnabled = true;
    }
  }

  Future<void> sendPushMessage() async {
    if (_token == null) {
      print('Unable to send FCM message, no token exists.');
      return;
    }

    try {
      await Dio().post(
        'https://fcm.googleapis.com/fcm/send',
        data: constructFCMPayload(_token),
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
            'Authorization': 'key=${Const.fcmAuthKey}'
          },
        ),
      );
    } on DioError catch (e) {
      print(e);
    }
  }

  /// The API endpoint here accepts a raw FCM payload for demonstration purposes.
  String constructFCMPayload(String? token) {
    return jsonEncode({
      'registration_ids': [token],
      // 'to': '/topics/allDevices',
      'notification': {
        'title': 'Test',
        'body': 'This is test notification',
      },
    });
  }
}
