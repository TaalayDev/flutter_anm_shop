import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/app_reponse.dart';
import '../models/region.dart';

abstract class RegionRepo {
  Future<AppResponse<List<Region>>> fetchAll();
}

class FirebaseRegionRepoImpl implements RegionRepo {
  const FirebaseRegionRepoImpl(this.firestore);

  final FirebaseFirestore firestore;

  @override
  Future<AppResponse<List<Region>>> fetchAll() async {
    try {
      var snapshot = await firestore.collection('regions').get();
      final data = snapshot.docs
          .map((e) => Region.fromJson({'id': e.id, ...e.data()}))
          .toList();
      return AppResponse(statusCode: 200, result: data);
    } catch (e) {
      return AppResponse(statusCode: 0, errorData: e);
    }
  }
}
