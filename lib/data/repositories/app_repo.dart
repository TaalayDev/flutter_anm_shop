import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/app_reponse.dart';
import '../models/app_settings_model.dart';

abstract class AppRepo {
  Future<AppResponse<AppSettingsModel>> fetchSettings();
}

class FirebaseAppRepoImpl implements AppRepo {
  const FirebaseAppRepoImpl(this.firestore);

  final FirebaseFirestore firestore;

  @override
  Future<AppResponse<AppSettingsModel>> fetchSettings() async {
    try {
      var snapshot = await firestore.collection('app').doc('settings').get();
      if (snapshot.data() != null) {
        final data = AppSettingsModel.fromJson({
          'id': snapshot.id,
          ...snapshot.data()!,
        });

        return AppResponse(statusCode: 200, result: data);
      }

      return AppResponse(statusCode: 404, errorData: snapshot);
    } catch (e) {
      return AppResponse(statusCode: 0, errorData: e);
    }
  }
}
