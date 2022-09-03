import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/app_reponse.dart';
import '../models/category.dart';

abstract class CategoryRepo {
  Future<AppResponse<List<Category>>> fetchAll();
}

class FirebaseCategoryRepoImpl implements CategoryRepo {
  const FirebaseCategoryRepoImpl(this.firestore);

  final FirebaseFirestore firestore;

  @override
  Future<AppResponse<List<Category>>> fetchAll() async {
    try {
      var snapshot = await firestore.collection('categories').get();
      final data = snapshot.docs
          .map((e) => Category.fromJson({'id': e.id, ...e.data()}))
          .toList();
      return AppResponse(statusCode: 200, result: data);
    } catch (e) {
      return AppResponse(statusCode: 0, errorData: e);
    }
  }
}
