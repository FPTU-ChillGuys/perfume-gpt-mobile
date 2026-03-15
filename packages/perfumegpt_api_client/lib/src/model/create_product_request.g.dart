// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateProductRequestCWProxy {
  CreateProductRequest name(String? name);

  CreateProductRequest brandId(int? brandId);

  CreateProductRequest categoryId(int? categoryId);

  CreateProductRequest description(String? description);

  CreateProductRequest temporaryMediaIds(List<String>? temporaryMediaIds);

  CreateProductRequest attributes(List<ProductAttributeDto>? attributes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateProductRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateProductRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateProductRequest call({
    String? name,
    int? brandId,
    int? categoryId,
    String? description,
    List<String>? temporaryMediaIds,
    List<ProductAttributeDto>? attributes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateProductRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateProductRequest.copyWith.fieldName(...)`
class _$CreateProductRequestCWProxyImpl
    implements _$CreateProductRequestCWProxy {
  const _$CreateProductRequestCWProxyImpl(this._value);

  final CreateProductRequest _value;

  @override
  CreateProductRequest name(String? name) => this(name: name);

  @override
  CreateProductRequest brandId(int? brandId) => this(brandId: brandId);

  @override
  CreateProductRequest categoryId(int? categoryId) =>
      this(categoryId: categoryId);

  @override
  CreateProductRequest description(String? description) =>
      this(description: description);

  @override
  CreateProductRequest temporaryMediaIds(List<String>? temporaryMediaIds) =>
      this(temporaryMediaIds: temporaryMediaIds);

  @override
  CreateProductRequest attributes(List<ProductAttributeDto>? attributes) =>
      this(attributes: attributes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateProductRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateProductRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateProductRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? brandId = const $CopyWithPlaceholder(),
    Object? categoryId = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? temporaryMediaIds = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
  }) {
    return CreateProductRequest(
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      brandId: brandId == const $CopyWithPlaceholder()
          ? _value.brandId
          // ignore: cast_nullable_to_non_nullable
          : brandId as int?,
      categoryId: categoryId == const $CopyWithPlaceholder()
          ? _value.categoryId
          // ignore: cast_nullable_to_non_nullable
          : categoryId as int?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      temporaryMediaIds: temporaryMediaIds == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIds
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIds as List<String>?,
      attributes: attributes == const $CopyWithPlaceholder()
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as List<ProductAttributeDto>?,
    );
  }
}

extension $CreateProductRequestCopyWith on CreateProductRequest {
  /// Returns a callable class that can be used as follows: `instanceOfCreateProductRequest.copyWith(...)` or like so:`instanceOfCreateProductRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateProductRequestCWProxy get copyWith =>
      _$CreateProductRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateProductRequest _$CreateProductRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateProductRequest', json, ($checkedConvert) {
  final val = CreateProductRequest(
    name: $checkedConvert('name', (v) => v as String?),
    brandId: $checkedConvert('brandId', (v) => (v as num?)?.toInt()),
    categoryId: $checkedConvert('categoryId', (v) => (v as num?)?.toInt()),
    description: $checkedConvert('description', (v) => v as String?),
    temporaryMediaIds: $checkedConvert(
      'temporaryMediaIds',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    attributes: $checkedConvert(
      'attributes',
      (v) => (v as List<dynamic>?)
          ?.map((e) => ProductAttributeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateProductRequestToJson(
  CreateProductRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'brandId': ?instance.brandId,
  'categoryId': ?instance.categoryId,
  'description': ?instance.description,
  'temporaryMediaIds': ?instance.temporaryMediaIds,
  'attributes': ?instance.attributes?.map((e) => e.toJson()).toList(),
};
