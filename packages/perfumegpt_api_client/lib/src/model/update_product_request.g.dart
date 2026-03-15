// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_product_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateProductRequestCWProxy {
  UpdateProductRequest name(String? name);

  UpdateProductRequest brandId(int? brandId);

  UpdateProductRequest categoryId(int? categoryId);

  UpdateProductRequest description(String? description);

  UpdateProductRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  );

  UpdateProductRequest mediaIdsToDelete(List<String>? mediaIdsToDelete);

  UpdateProductRequest attributes(List<ProductAttributeDto>? attributes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateProductRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateProductRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateProductRequest call({
    String? name,
    int? brandId,
    int? categoryId,
    String? description,
    List<String>? temporaryMediaIdsToAdd,
    List<String>? mediaIdsToDelete,
    List<ProductAttributeDto>? attributes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateProductRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateProductRequest.copyWith.fieldName(...)`
class _$UpdateProductRequestCWProxyImpl
    implements _$UpdateProductRequestCWProxy {
  const _$UpdateProductRequestCWProxyImpl(this._value);

  final UpdateProductRequest _value;

  @override
  UpdateProductRequest name(String? name) => this(name: name);

  @override
  UpdateProductRequest brandId(int? brandId) => this(brandId: brandId);

  @override
  UpdateProductRequest categoryId(int? categoryId) =>
      this(categoryId: categoryId);

  @override
  UpdateProductRequest description(String? description) =>
      this(description: description);

  @override
  UpdateProductRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  ) => this(temporaryMediaIdsToAdd: temporaryMediaIdsToAdd);

  @override
  UpdateProductRequest mediaIdsToDelete(List<String>? mediaIdsToDelete) =>
      this(mediaIdsToDelete: mediaIdsToDelete);

  @override
  UpdateProductRequest attributes(List<ProductAttributeDto>? attributes) =>
      this(attributes: attributes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateProductRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateProductRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateProductRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? brandId = const $CopyWithPlaceholder(),
    Object? categoryId = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? temporaryMediaIdsToAdd = const $CopyWithPlaceholder(),
    Object? mediaIdsToDelete = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
  }) {
    return UpdateProductRequest(
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
      temporaryMediaIdsToAdd:
          temporaryMediaIdsToAdd == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIdsToAdd
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIdsToAdd as List<String>?,
      mediaIdsToDelete: mediaIdsToDelete == const $CopyWithPlaceholder()
          ? _value.mediaIdsToDelete
          // ignore: cast_nullable_to_non_nullable
          : mediaIdsToDelete as List<String>?,
      attributes: attributes == const $CopyWithPlaceholder()
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as List<ProductAttributeDto>?,
    );
  }
}

extension $UpdateProductRequestCopyWith on UpdateProductRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateProductRequest.copyWith(...)` or like so:`instanceOfUpdateProductRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateProductRequestCWProxy get copyWith =>
      _$UpdateProductRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateProductRequest _$UpdateProductRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateProductRequest', json, ($checkedConvert) {
  final val = UpdateProductRequest(
    name: $checkedConvert('name', (v) => v as String?),
    brandId: $checkedConvert('brandId', (v) => (v as num?)?.toInt()),
    categoryId: $checkedConvert('categoryId', (v) => (v as num?)?.toInt()),
    description: $checkedConvert('description', (v) => v as String?),
    temporaryMediaIdsToAdd: $checkedConvert(
      'temporaryMediaIdsToAdd',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    mediaIdsToDelete: $checkedConvert(
      'mediaIdsToDelete',
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

Map<String, dynamic> _$UpdateProductRequestToJson(
  UpdateProductRequest instance,
) => <String, dynamic>{
  'name': ?instance.name,
  'brandId': ?instance.brandId,
  'categoryId': ?instance.categoryId,
  'description': ?instance.description,
  'temporaryMediaIdsToAdd': ?instance.temporaryMediaIdsToAdd,
  'mediaIdsToDelete': ?instance.mediaIdsToDelete,
  'attributes': ?instance.attributes?.map((e) => e.toJson()).toList(),
};
