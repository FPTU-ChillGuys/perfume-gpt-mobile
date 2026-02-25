// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      imageUrl: json['imageUrl'] as String,
      scentNotes: (json['scentNotes'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      brand: json['brand'] as String,
      rating: (json['rating'] as num).toDouble(),
      reviewCount: (json['reviewCount'] as num).toInt(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'scentNotes': instance.scentNotes,
      'brand': instance.brand,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
    };
