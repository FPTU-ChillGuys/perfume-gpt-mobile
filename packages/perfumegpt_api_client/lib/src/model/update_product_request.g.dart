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

  UpdateProductRequest gender(Gender? gender);

  UpdateProductRequest origin(String origin);

  UpdateProductRequest releaseYear(int? releaseYear);

  UpdateProductRequest olfactoryFamilyIds(List<int>? olfactoryFamilyIds);

  UpdateProductRequest scentNotes(List<ScentNoteDto>? scentNotes);

  UpdateProductRequest attributes(List<ProductAttributeDto>? attributes);

  UpdateProductRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  );

  UpdateProductRequest mediaIdsToDelete(List<String>? mediaIdsToDelete);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateProductRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateProductRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateProductRequest call({
    String? name,
    int? brandId,
    int? categoryId,
    String? description,
    Gender? gender,
    String origin,
    int? releaseYear,
    List<int>? olfactoryFamilyIds,
    List<ScentNoteDto>? scentNotes,
    List<ProductAttributeDto>? attributes,
    List<String>? temporaryMediaIdsToAdd,
    List<String>? mediaIdsToDelete,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateProductRequest.copyWith(...)` or call `instanceOfUpdateProductRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateProductRequestCWProxyImpl
    implements _$UpdateProductRequestCWProxy {
  const _$UpdateProductRequestCWProxyImpl(this._value);

  final UpdateProductRequest _value;

  @override
  UpdateProductRequest name(String? name) => call(name: name);

  @override
  UpdateProductRequest brandId(int? brandId) => call(brandId: brandId);

  @override
  UpdateProductRequest categoryId(int? categoryId) =>
      call(categoryId: categoryId);

  @override
  UpdateProductRequest description(String? description) =>
      call(description: description);

  @override
  UpdateProductRequest gender(Gender? gender) => call(gender: gender);

  @override
  UpdateProductRequest origin(String origin) => call(origin: origin);

  @override
  UpdateProductRequest releaseYear(int? releaseYear) =>
      call(releaseYear: releaseYear);

  @override
  UpdateProductRequest olfactoryFamilyIds(List<int>? olfactoryFamilyIds) =>
      call(olfactoryFamilyIds: olfactoryFamilyIds);

  @override
  UpdateProductRequest scentNotes(List<ScentNoteDto>? scentNotes) =>
      call(scentNotes: scentNotes);

  @override
  UpdateProductRequest attributes(List<ProductAttributeDto>? attributes) =>
      call(attributes: attributes);

  @override
  UpdateProductRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  ) => call(temporaryMediaIdsToAdd: temporaryMediaIdsToAdd);

  @override
  UpdateProductRequest mediaIdsToDelete(List<String>? mediaIdsToDelete) =>
      call(mediaIdsToDelete: mediaIdsToDelete);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateProductRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateProductRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateProductRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? brandId = const $CopyWithPlaceholder(),
    Object? categoryId = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
    Object? origin = const $CopyWithPlaceholder(),
    Object? releaseYear = const $CopyWithPlaceholder(),
    Object? olfactoryFamilyIds = const $CopyWithPlaceholder(),
    Object? scentNotes = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
    Object? temporaryMediaIdsToAdd = const $CopyWithPlaceholder(),
    Object? mediaIdsToDelete = const $CopyWithPlaceholder(),
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
      gender: gender == const $CopyWithPlaceholder()
          ? _value.gender
          // ignore: cast_nullable_to_non_nullable
          : gender as Gender?,
      origin: origin == const $CopyWithPlaceholder() || origin == null
          ? _value.origin
          // ignore: cast_nullable_to_non_nullable
          : origin as String,
      releaseYear: releaseYear == const $CopyWithPlaceholder()
          ? _value.releaseYear
          // ignore: cast_nullable_to_non_nullable
          : releaseYear as int?,
      olfactoryFamilyIds: olfactoryFamilyIds == const $CopyWithPlaceholder()
          ? _value.olfactoryFamilyIds
          // ignore: cast_nullable_to_non_nullable
          : olfactoryFamilyIds as List<int>?,
      scentNotes: scentNotes == const $CopyWithPlaceholder()
          ? _value.scentNotes
          // ignore: cast_nullable_to_non_nullable
          : scentNotes as List<ScentNoteDto>?,
      attributes: attributes == const $CopyWithPlaceholder()
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as List<ProductAttributeDto>?,
      temporaryMediaIdsToAdd:
          temporaryMediaIdsToAdd == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIdsToAdd
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIdsToAdd as List<String>?,
      mediaIdsToDelete: mediaIdsToDelete == const $CopyWithPlaceholder()
          ? _value.mediaIdsToDelete
          // ignore: cast_nullable_to_non_nullable
          : mediaIdsToDelete as List<String>?,
    );
  }
}

extension $UpdateProductRequestCopyWith on UpdateProductRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateProductRequest.copyWith(...)` or `instanceOfUpdateProductRequest.copyWith.fieldName(...)`.
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
  $checkKeys(json, requiredKeys: const ['origin']);
  final val = UpdateProductRequest(
    name: $checkedConvert('name', (v) => v as String?),
    brandId: $checkedConvert('brandId', (v) => (v as num?)?.toInt()),
    categoryId: $checkedConvert('categoryId', (v) => (v as num?)?.toInt()),
    description: $checkedConvert('description', (v) => v as String?),
    gender: $checkedConvert(
      'gender',
      (v) => $enumDecodeNullable(_$GenderEnumMap, v),
    ),
    origin: $checkedConvert('origin', (v) => v as String),
    releaseYear: $checkedConvert('releaseYear', (v) => (v as num?)?.toInt()),
    olfactoryFamilyIds: $checkedConvert(
      'olfactoryFamilyIds',
      (v) => (v as List<dynamic>?)?.map((e) => (e as num).toInt()).toList(),
    ),
    scentNotes: $checkedConvert(
      'scentNotes',
      (v) => (v as List<dynamic>?)
          ?.map((e) => ScentNoteDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    attributes: $checkedConvert(
      'attributes',
      (v) => (v as List<dynamic>?)
          ?.map((e) => ProductAttributeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    temporaryMediaIdsToAdd: $checkedConvert(
      'temporaryMediaIdsToAdd',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    mediaIdsToDelete: $checkedConvert(
      'mediaIdsToDelete',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
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
  'gender': ?_$GenderEnumMap[instance.gender],
  'origin': instance.origin,
  'releaseYear': ?instance.releaseYear,
  'olfactoryFamilyIds': ?instance.olfactoryFamilyIds,
  'scentNotes': ?instance.scentNotes?.map((e) => e.toJson()).toList(),
  'attributes': ?instance.attributes?.map((e) => e.toJson()).toList(),
  'temporaryMediaIdsToAdd': ?instance.temporaryMediaIdsToAdd,
  'mediaIdsToDelete': ?instance.mediaIdsToDelete,
};

const _$GenderEnumMap = {
  Gender.male: 'Male',
  Gender.female: 'Female',
  Gender.unisex: 'Unisex',
};
