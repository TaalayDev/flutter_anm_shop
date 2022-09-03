import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jiffy/jiffy.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product {
  const Product._();
  const factory Product({
    required final String id,
    required final String title,
    required final String description,
    required final List<String> images,
    required final double price,
    required final String category,
    final String? user,
    required final int timestamp,
    @Default([]) final List<String> phones,
    final String? whatsapp,
    required final String city,
    required final String region,
  }) = _Product;

  DateTime? get date => DateTime.fromMicrosecondsSinceEpoch(timestamp);
  String get formattedDate =>
      Jiffy.unixFromMillisecondsSinceEpoch(timestamp).fromNow();
  bool get isNew =>
      date != null ? date!.isAtSameMomentAs(DateTime.now()) : false;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

// class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
//   const TimestampConverter();

//   @override
//   DateTime fromJson(Timestamp timestamp) {
//     return timestamp.toDate();
//   }

//   @override
//   Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
// }
