import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'city.freezed.dart';
part 'city.g.dart';

@freezed
class City with _$City {
  const factory City({
    final String? id,
    required final String name,
  }) = _City;

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
}
