import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../models/app_reponse.dart';
import '../models/user.dart' as user;

abstract class UserRepo {
  Future<AppResponse<user.User>> login(String phone, String password);
  Future<AppResponse> logout();
  Future<AppResponse<user.User>> update({
    String? name,
    File? image,
  });
}

class FirebaseUserRepoImpl implements UserRepo {
  const FirebaseUserRepoImpl(this.firebaseAuth, this.firestore);

  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;

  @override
  Future<AppResponse<user.User>> login(String phone, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<AppResponse> logout() async {
    await firebaseAuth.signOut();

    return AppResponse(statusCode: 200);
  }

  @override
  Future<AppResponse<user.User>> update({String? name, File? image}) async {
    if (name != null) await firebaseAuth.currentUser?.updateDisplayName(name);

    return AppResponse(
      statusCode: 200,
      result: user.User.fromFirebaseUser(firebaseAuth.currentUser!),
    );
  }
}
