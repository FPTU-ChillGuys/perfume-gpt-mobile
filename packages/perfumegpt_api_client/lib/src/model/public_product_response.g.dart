// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_product_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PublicProductResponseCWProxy {
  PublicProductResponse id(String? id);

  PublicProductResponse name(String? name);

  PublicProductResponse gender(Gender? gender);

  PublicProductResponse origin(String origin);

  PublicProductResponse releaseYear(int? releaseYear);

  PublicProductResponse brandName(String brandName);

  PublicProductResponse categoryName(String categoryName);

  PublicProductResponse description(String? description);

  PublicProductResponse media(List<MediaResponse> media);

  PublicProductResponse variants(List<PublicProductVariantResponse> variants);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PublicProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PublicProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PublicProductResponse call({
    String? id,
    String? name,
    Gender? gender,
    String origin,
    int? releaseYear,
    String brandName,
    String categoryName,
    String? description,
    List<MediaResponse> media,
    List<PublicProductVariantResponse> variants,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPublicProductResponse.copyWith(...)` or call `instanceOfPublicProductResponse.copyWith.fieldName(value)` for a single field.
class _$PublicProductResponseCWProxyImpl
    implements _$PublicProductResponseCWProxy {
  const _$PublicProductResponseCWProxyImpl(this._value);

  final PublicProductResponse _value;

  @override
  PublicProductResponse id(String? id) => call(id: id);

  @override
  PublicProductResponse name(String? name) => call(name: name);

  @override
  PublicProductResponse gender(Gender? gender) => call(gender: gender);

  @override
  PublicProductResponse origin(String origin) => call(origin: origin);

  @override
  PublicProductResponse releaseYear(int? releaseYear) =>
      call(releaseYear: releaseYear);

  @override
  PublicProductResponse brandName(String brandName) =>
      call(brandName: brandName);

  @override
  PublicProductResponse categoryName(String categoryName) =>
      call(categoryName: categoryName);

  @override
  PublicProductResponse description(String? description) =>
      call(description: description);

  @override
  PublicProductResponse media(List<MediaResponse> media) => call(media: media);

  @override
  PublicProductResponse variants(List<PublicProductVariantResponse> variants) =>
      call(variants: variants);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PublicProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PublicProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PublicProductResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
    Object? origin = const $CopyWithPlaceholder(),
    Object? releaseYear = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? categoryName = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? media = const $CopyWithPlaceholder(),
    Object? variants = const $CopyWithPlaceholder(),
  }) {
    return PublicProductResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
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
      brandName: brandName == const $CopyWithPlaceholder() || brandName == null
          ? _value.brandName
          // ignore: cast_nullable_to_non_nullable
          : brandName as String,
      categoryName:
          categoryName == const $CopyWithPlaceholder() || categoryName == null
          ? _value.categoryName
          // ignore: cast_nullable_to_non_nullable
          : categoryName as String,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      media: media == const $CopyWithPlaceholder() || media == null
          ? _value.media
          // ignore: cast_nullable_to_non_nullable
          : media as List<MediaResponse>,
      variants: variants == const $CopyWithPlaceholder() || variants == null
          ? _value.variants
          // ignore: cast_nullable_to_non_nullable
          : variants as List<PublicProductVariantResponse>,
    );
  }
}

extension $PublicProductResponseCopyWith on PublicProductResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPublicProductResponse.copyWith(...)` or `instanceOfPublicProductResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PublicProductResponseCWProxy get copyWith =>
      _$PublicProductResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicProductResponse _$PublicProductResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PublicProductResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'origin',
      'brandName',
      'categoryName',
      'media',
      'variants',
    ],
  );
  final val = PublicProductResponse(
    id: $checkedConvert('id', (v) => v as String?),
    name: $checkedConvert('name', (v) => v as String?),
    gender: $checkedConvert(
      'gender',
      (v) => $enumDecodeNullable(_$GenderEnumMap, v),
    ),
    origin: $checkedConvert('origin', (v) => v as String),
    releaseYear: $checkedConvert('releaseYear', (v) => (v as num?)?.toInt()),
    brandName: $checkedConvert('brandName', (v) => v as String),
    categoryName: $checkedConvert('categoryName', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String?),
    media: $checkedConvert(
      'media',
      (v) => (v as List<dynamic>)
          .map((e) => MediaResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    variants: $checkedConvert(
      'variants',
      (v) => (v as List<dynamic>)
          .map(
            (e) => PublicProductVariantResponse.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PublicProductResponseToJson(
  PublicProductResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'gender': ?_$GenderEnumMap[instance.gender],
  'origin': instance.origin,
  'releaseYear': ?instance.releaseYear,
  'brandName': instance.brandName,
  'categoryName': instance.categoryName,
  'description': ?instance.description,
  'media': instance.media.map((e) => e.toJson()).toList(),
  'variants': instance.variants.map((e) => e.toJson()).toList(),
};

const _$GenderEnumMap = {
  Gender.male: 'Male',
  Gender.female: 'Female',
  Gender.unisex: 'Unisex',
};
