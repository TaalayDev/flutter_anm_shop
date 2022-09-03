import 'package:path/path.dart' as path;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/product_create_model.dart';
import '../constants.dart';
import '../models/app_reponse.dart';
import '../models/filter.dart';
import '../models/product.dart';

abstract class ProductRepo {
  Future<AppResponse<List<Product>>> fetchProducts({
    int? limit,
    int? offset,
    String? lastId,
    Filter? filter,
  });

  Future<AppResponse> create(ProductCreateModel model);
}

class FirebaseProductRepoImpl implements ProductRepo {
  const FirebaseProductRepoImpl(
    this.firestore,
    this.firebaseStorage,
  );

  final FirebaseFirestore firestore;
  final FirebaseStorage firebaseStorage;

  @override
  Future<AppResponse<List<Product>>> fetchProducts({
    int? limit,
    int? offset,
    String? lastId,
    Filter? filter,
  }) async {
    try {
      var query = await firestore
          .collection('products')
          .where('status', isEqualTo: 'active')
          .orderBy('price', descending: true)
          .where(
            'price',
            isGreaterThanOrEqualTo: filter?.minPrice ?? 0,
            isLessThanOrEqualTo: filter?.maxPrice ?? Const.intMaxValue,
          );
      if (filter != null) {
        /*query = query
          ..where('category', isEqualTo: filter.category?.name)
          ..where('region', isEqualTo: filter.region?.name);*/
      }

      query = query.orderBy('timestamp', descending: true);
      if (limit != null) query = query.limit(limit);
      if (lastId != null) {
        final document =
            await firestore.collection('products').doc(lastId).get();
        query = query.startAfterDocument(document);
      }
      var snapshot = await query.get();
      final data = snapshot.docs
          .map((e) => Product.fromJson({'id': e.id, ...e.data()}))
          .toList();
      return AppResponse(statusCode: 200, result: data);
    } catch (e) {
      return AppResponse(statusCode: 0, errorData: e);
    }
  }

  @override
  Future<AppResponse> create(ProductCreateModel model) async {
    try {
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final images = <String>[];
      final storageRef = FirebaseStorage.instance.ref();
      for (var file in model.images ?? []) {
        final ext = path.extension(file.path);
        final name = path.basename(file.path);

        final imageRef = storageRef.child("${name}_$timestamp.$ext");
        await imageRef.putFile(file);
        images.add(await imageRef.getDownloadURL());
      }

      final data = model.toJson();
      data['images'] = images;
      data['category'] = model.category?.name;
      data['region'] = model.region?.name;
      data['city'] = model.city?.name;
      data['timestamp'] = timestamp;
      data['status'] = 'moderation';

      await firestore.collection('products').add(data);

      return AppResponse(statusCode: 200);
    } catch (e) {
      return AppResponse(statusCode: 0, errorData: e);
    }
  }
}
