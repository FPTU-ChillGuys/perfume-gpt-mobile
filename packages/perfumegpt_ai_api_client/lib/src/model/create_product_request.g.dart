// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_product_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateProductRequestCWProxy {
  CreateProductRequest name(String name);

  CreateProductRequest brandId(int? brandId);

  CreateProductRequest categoryId(int? categoryId);

  CreateProductRequest gender(Gender? gender);

  CreateProductRequest origin(String origin);

  CreateProductRequest releaseYear(int? releaseYear);

  CreateProductRequest description(String? description);

  CreateProductRequest olfactoryFamilyIds(List<int> olfactoryFamilyIds);

  CreateProductRequest temporaryMediaIds(List<String>? temporaryMediaIds);

  CreateProductRequest scentNotes(List<ScentNoteDto> scentNotes);

  CreateProductRequest attributes(List<ProductAttributeDto>? attributes);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateProductRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateProductRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateProductRequest call({
    String name,
    int? brandId,
    int? categoryId,
    Gender? gender,
    String origin,
    int? releaseYear,
    String? description,
    List<int> olfactoryFamilyIds,
    List<String>? temporaryMediaIds,
    List<ScentNoteDto> scentNotes,
    List<ProductAttributeDto>? attributes,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateProductRequest.copyWith(...)` or call `instanceOfCreateProductRequest.copyWith.fieldName(value)` for a single field.
class _$CreateProductRequestCWProxyImpl
    implements _$CreateProductRequestCWProxy {
  const _$CreateProductRequestCWProxyImpl(this._value);

  final CreateProductRequest _value;

  @override
  CreateProductRequest name(String name) => call(name: name);

  @override
  CreateProductRequest brandId(int? brandId) => call(brandId: brandId);

  @override
  CreateProductRequest categoryId(int? categoryId) =>
      call(categoryId: categoryId);

  @override
  CreateProductRequest gender(Gender? gender) => call(gender: gender);

  @override
  CreateProductRequest origin(String origin) => call(origin: origin);

  @override
  CreateProductRequest releaseYear(int? releaseYear) =>
      call(releaseYear: releaseYear);

  @override
  CreateProductRequest description(String? description) =>
      call(description: description);

  @override
  CreateProductRequest olfactoryFamilyIds(List<int> olfactoryFamilyIds) =>
      call(olfactoryFamilyIds: olfactoryFamilyIds);

  @override
  CreateProductRequest temporaryMediaIds(List<String>? temporaryMediaIds) =>
      call(temporaryMediaIds: temporaryMediaIds);

  @override
  CreateProductRequest scentNotes(List<ScentNoteDto> scentNotes) =>
      call(scentNotes: scentNotes);

  @override
  CreateProductRequest attributes(List<ProductAttributeDto>? attributes) =>
      call(attributes: attributes);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateProductRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateProductRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateProductRequest call({
    Object? name = const $CopyWithPlaceholder(),
    Object? brandId = const $CopyWithPlaceholder(),
    Object? categoryId = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
    Object? origin = const $CopyWithPlaceholder(),
    Object? releaseYear = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? olfactoryFamilyIds = const $CopyWithPlaceholder(),
    Object? temporaryMediaIds = const $CopyWithPlaceholder(),
    Object? scentNotes = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
  }) {
    return CreateProductRequest(
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      brandId: brandId == const $CopyWithPlaceholder()
          ? _value.brandId
          // ignore: cast_nullable_to_non_nullable
          : brandId as int?,
      categoryId: categoryId == const $CopyWithPlaceholder()
          ? _value.categoryId
          // ignore: cast_nullable_to_non_nullable
          : categoryId as int?,
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
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      olfactoryFamilyIds:
          olfactoryFamilyIds == const $CopyWithPlaceholder() ||
              olfactoryFamilyIds == null
          ? _value.olfactoryFamilyIds
          // ignore: cast_nullable_to_non_nullable
          : olfactoryFamilyIds as List<int>,
      temporaryMediaIds: temporaryMediaIds == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIds
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIds as List<String>?,
      scentNotes:
          scentNotes == const $CopyWithPlaceholder() || scentNotes == null
          ? _value.scentNotes
          // ignore: cast_nullable_to_non_nullable
          : scentNotes as List<ScentNoteDto>,
      attributes: attributes == const $CopyWithPlaceholder()
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as List<ProductAttributeDto>?,
    );
  }
}

extension $CreateProductRequestCopyWith on CreateProductRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateProductRequest.copyWith(...)` or `instanceOfCreateProductRequest.copyWith.fieldName(...)`.
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
  $checkKeys(
    json,
    requiredKeys: const ['name', 'origin', 'olfactoryFamilyIds', 'scentNotes'],
  );
  final val = CreateProductRequest(
    name: $checkedConvert('name', (v) => v as String),
    brandId: $checkedConvert('brandId', (v) => (v as num?)?.toInt()),
    categoryId: $checkedConvert('categoryId', (v) => (v as num?)?.toInt()),
    gender: $checkedConvert(
      'gender',
      (v) => $enumDecodeNullable(_$GenderEnumMap, v),
    ),
    origin: $checkedConvert('origin', (v) => v as String),
    releaseYear: $checkedConvert('releaseYear', (v) => (v as num?)?.toInt()),
    description: $checkedConvert('description', (v) => v as String?),
    olfactoryFamilyIds: $checkedConvert(
      'olfactoryFamilyIds',
      (v) => (v as List<dynamic>).map((e) => (e as num).toInt()).toList(),
    ),
    temporaryMediaIds: $checkedConvert(
      'temporaryMediaIds',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    scentNotes: $checkedConvert(
      'scentNotes',
      (v) => (v as List<dynamic>)
          .map((e) => ScentNoteDto.fromJson(e as Map<String, dynamic>))
          .toList(),
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
  'name': instance.name,
  'brandId': ?instance.brandId,
  'categoryId': ?instance.categoryId,
  'gender': ?_$GenderEnumMap[instance.gender],
  'origin': instance.origin,
  'releaseYear': ?instance.releaseYear,
  'description': ?instance.description,
  'olfactoryFamilyIds': instance.olfactoryFamilyIds,
  'temporaryMediaIds': ?instance.temporaryMediaIds,
  'scentNotes': instance.scentNotes.map((e) => e.toJson()).toList(),
  'attributes': ?instance.attributes?.map((e) => e.toJson()).toList(),
};

const _$GenderEnumMap = {
  Gender.male: 'Male',
  Gender.female: 'Female',
  Gender.unisex: 'Unisex',
};
