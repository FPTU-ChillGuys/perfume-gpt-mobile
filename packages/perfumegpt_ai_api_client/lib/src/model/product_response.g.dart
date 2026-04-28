// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductResponseCWProxy {
  ProductResponse id(String id);

  ProductResponse name(String name);

  ProductResponse brandId(num brandId);

  ProductResponse brandName(String brandName);

  ProductResponse categoryId(num categoryId);

  ProductResponse categoryName(String categoryName);

  ProductResponse description(String? description);

  ProductResponse primaryImage(Object? primaryImage);

  ProductResponse attributes(List<ProductAttributeResponse> attributes);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductResponse call({
    String id,
    String name,
    num brandId,
    String brandName,
    num categoryId,
    String categoryName,
    String? description,
    Object? primaryImage,
    List<ProductAttributeResponse> attributes,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductResponse.copyWith(...)` or call `instanceOfProductResponse.copyWith.fieldName(value)` for a single field.
class _$ProductResponseCWProxyImpl implements _$ProductResponseCWProxy {
  const _$ProductResponseCWProxyImpl(this._value);

  final ProductResponse _value;

  @override
  ProductResponse id(String id) => call(id: id);

  @override
  ProductResponse name(String name) => call(name: name);

  @override
  ProductResponse brandId(num brandId) => call(brandId: brandId);

  @override
  ProductResponse brandName(String brandName) => call(brandName: brandName);

  @override
  ProductResponse categoryId(num categoryId) => call(categoryId: categoryId);

  @override
  ProductResponse categoryName(String categoryName) =>
      call(categoryName: categoryName);

  @override
  ProductResponse description(String? description) =>
      call(description: description);

  @override
  ProductResponse primaryImage(Object? primaryImage) =>
      call(primaryImage: primaryImage);

  @override
  ProductResponse attributes(List<ProductAttributeResponse> attributes) =>
      call(attributes: attributes);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? brandId = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? categoryId = const $CopyWithPlaceholder(),
    Object? categoryName = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? primaryImage = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
  }) {
    return ProductResponse(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      brandId: brandId == const $CopyWithPlaceholder() || brandId == null
          ? _value.brandId
          // ignore: cast_nullable_to_non_nullable
          : brandId as num,
      brandName: brandName == const $CopyWithPlaceholder() || brandName == null
          ? _value.brandName
          // ignore: cast_nullable_to_non_nullable
          : brandName as String,
      categoryId:
          categoryId == const $CopyWithPlaceholder() || categoryId == null
          ? _value.categoryId
          // ignore: cast_nullable_to_non_nullable
          : categoryId as num,
      categoryName:
          categoryName == const $CopyWithPlaceholder() || categoryName == null
          ? _value.categoryName
          // ignore: cast_nullable_to_non_nullable
          : categoryName as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      primaryImage: primaryImage == const $CopyWithPlaceholder()
          ? _value.primaryImage
          // ignore: cast_nullable_to_non_nullable
          : primaryImage as Object?,
      attributes:
          attributes == const $CopyWithPlaceholder() || attributes == null
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as List<ProductAttributeResponse>,
    );
  }
}

extension $ProductResponseCopyWith on ProductResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductResponse.copyWith(...)` or `instanceOfProductResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductResponseCWProxy get copyWith => _$ProductResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ProductResponse', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const [
          'id',
          'name',
          'brandId',
          'brandName',
          'categoryId',
          'categoryName',
          'primaryImage',
          'attributes',
        ],
      );
      final val = ProductResponse(
        id: $checkedConvert('id', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        brandId: $checkedConvert('brandId', (v) => v as num),
        brandName: $checkedConvert('brandName', (v) => v as String),
        categoryId: $checkedConvert('categoryId', (v) => v as num),
        categoryName: $checkedConvert('categoryName', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String?),
        primaryImage: $checkedConvert('primaryImage', (v) => v),
        attributes: $checkedConvert(
          'attributes',
          (v) => (v as List<dynamic>)
              .map(
                (e) => ProductAttributeResponse.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ProductResponseToJson(ProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brandId': instance.brandId,
      'brandName': instance.brandName,
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'description': ?instance.description,
      'primaryImage': instance.primaryImage,
      'attributes': instance.attributes.map((e) => e.toJson()).toList(),
    };
