// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'region.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Region _$$_RegionFromJson(Map<String, dynamic> json) => _$_Region(
      id: json['id'] as String,
      name: json['name'] as String,
      cities: (json['cities'] as List<dynamic>?)
              ?.map((e) => City.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_RegionToJson(_$_Region instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cities': instance.cities,
    };
