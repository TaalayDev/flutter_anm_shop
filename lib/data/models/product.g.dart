// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      price: (json['price'] as num).toDouble(),
      category: json['category'] as String,
      user: json['user'] as String?,
      timestamp: json['timestamp'] as int,
      phones: (json['phones'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      whatsapp: json['whatsapp'] as String?,
      city: json['city'] as String,
      region: json['region'] as String,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'images': instance.images,
      'price': instance.price,
      'category': instance.category,
      'user': instance.user,
      'timestamp': instance.timestamp,
      'phones': instance.phones,
      'whatsapp': instance.whatsapp,
      'city': instance.city,
      'region': instance.region,
    };
