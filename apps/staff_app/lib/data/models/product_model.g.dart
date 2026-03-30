// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: json['id'] as String,
      variantId: json['variantId'] as String,
      batchId: json['batchId'] as String,
      sku: json['sku'] as String,
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
      stockQuantity: (json['stockQuantity'] as num).toInt(),
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'variantId': instance.variantId,
      'batchId': instance.batchId,
      'sku': instance.sku,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'scentNotes': instance.scentNotes,
      'brand': instance.brand,
      'rating': instance.rating,
      'reviewCount': instance.reviewCount,
      'stockQuantity': instance.stockQuantity,
    };
