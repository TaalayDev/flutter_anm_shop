import 'package:flutter/foundation.dart' hide Category;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'category.dart';
import 'city.dart';
import 'region.dart';

part 'filter.freezed.dart';

@freezed
class Filter with _$Filter {
  const factory Filter({
    final double? minPrice,
    final double? maxPrice,
    final Category? category,
    final Region? region,
    final City? city,
  }) = _Filter;
}
