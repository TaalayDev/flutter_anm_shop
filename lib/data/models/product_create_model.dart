import 'dart:io';

import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:malbazar/data/models/city.dart';
import 'package:malbazar/data/models/region.dart';

import 'category.dart';

part 'product_create_model.freezed.dart';

@freezed
class ProductCreateModel with _$ProductCreateModel {
  const ProductCreateModel._();
  const factory ProductCreateModel({
    final String? title,
    final String? description,
    final double? price,
    final Category? category,
    final Region? region,
    final City? city,
    final List<String>? phones,
    final List<File>? images,
  }) = _ProductCreateModel;

  Map<String, dynamic> toJson() => {
        'title': title,
        'description': description,
        'price': price,
        'phones': phones,
      };
}
