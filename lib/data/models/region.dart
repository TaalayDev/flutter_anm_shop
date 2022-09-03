import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'city.dart';

part 'region.freezed.dart';
part 'region.g.dart';

@freezed
class Region with _$Region {
  const factory Region({
    required final String id,
    required final String name,
    @Default([]) final List<City> cities,
  }) = _Region;

  factory Region.fromJson(Map<String, dynamic> json) => _$RegionFromJson(json);
}
