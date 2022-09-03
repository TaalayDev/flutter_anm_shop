import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase;

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String id,
    required String name,
    String? photoUrl,
    String? phoneNumber,
  }) = _User;

  factory User.fromFirebaseUser(firebase.User firebaseUser) => User(
        id: firebaseUser.uid,
        name: firebaseUser.displayName ?? '',
        photoUrl: firebaseUser.photoURL,
        phoneNumber: firebaseUser.phoneNumber,
      );
}
