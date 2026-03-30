// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_fast_look_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductFastLookResponseCWProxy {
  ProductFastLookResponse id(String? id);

  ProductFastLookResponse name(String? name);

  ProductFastLookResponse description(String? description);

  ProductFastLookResponse brandName(String? brandName);

  ProductFastLookResponse gender(Gender? gender);

  ProductFastLookResponse variants(List<VariantFastLookResponse>? variants);

  ProductFastLookResponse rating(int? rating);

  ProductFastLookResponse reviewCount(int? reviewCount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductFastLookResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductFastLookResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductFastLookResponse call({
    String? id,
    String? name,
    String? description,
    String? brandName,
    Gender? gender,
    List<VariantFastLookResponse>? variants,
    int? rating,
    int? reviewCount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductFastLookResponse.copyWith(...)` or call `instanceOfProductFastLookResponse.copyWith.fieldName(value)` for a single field.
class _$ProductFastLookResponseCWProxyImpl
    implements _$ProductFastLookResponseCWProxy {
  const _$ProductFastLookResponseCWProxyImpl(this._value);

  final ProductFastLookResponse _value;

  @override
  ProductFastLookResponse id(String? id) => call(id: id);

  @override
  ProductFastLookResponse name(String? name) => call(name: name);

  @override
  ProductFastLookResponse description(String? description) =>
      call(description: description);

  @override
  ProductFastLookResponse brandName(String? brandName) =>
      call(brandName: brandName);

  @override
  ProductFastLookResponse gender(Gender? gender) => call(gender: gender);

  @override
  ProductFastLookResponse variants(List<VariantFastLookResponse>? variants) =>
      call(variants: variants);

  @override
  ProductFastLookResponse rating(int? rating) => call(rating: rating);

  @override
  ProductFastLookResponse reviewCount(int? reviewCount) =>
      call(reviewCount: reviewCount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductFastLookResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductFastLookResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductFastLookResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
    Object? variants = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? reviewCount = const $CopyWithPlaceholder(),
  }) {
    return ProductFastLookResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      name: name == const $CopyWithPlaceholder()
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
      brandName: brandName == const $CopyWithPlaceholder()
          ? _value.brandName
          // ignore: cast_nullable_to_non_nullable
          : brandName as String?,
      gender: gender == const $CopyWithPlaceholder()
          ? _value.gender
          // ignore: cast_nullable_to_non_nullable
          : gender as Gender?,
      variants: variants == const $CopyWithPlaceholder()
          ? _value.variants
          // ignore: cast_nullable_to_non_nullable
          : variants as List<VariantFastLookResponse>?,
      rating: rating == const $CopyWithPlaceholder()
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as int?,
      reviewCount: reviewCount == const $CopyWithPlaceholder()
          ? _value.reviewCount
          // ignore: cast_nullable_to_non_nullable
          : reviewCount as int?,
    );
  }
}

extension $ProductFastLookResponseCopyWith on ProductFastLookResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductFastLookResponse.copyWith(...)` or `instanceOfProductFastLookResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductFastLookResponseCWProxy get copyWith =>
      _$ProductFastLookResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductFastLookResponse _$ProductFastLookResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductFastLookResponse', json, ($checkedConvert) {
  final val = ProductFastLookResponse(
    id: $checkedConvert('id', (v) => v as String?),
    name: $checkedConvert('name', (v) => v as String?),
    description: $checkedConvert('description', (v) => v as String?),
    brandName: $checkedConvert('brandName', (v) => v as String?),
    gender: $checkedConvert(
      'gender',
      (v) => $enumDecodeNullable(_$GenderEnumMap, v),
    ),
    variants: $checkedConvert(
      'variants',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => VariantFastLookResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    rating: $checkedConvert('rating', (v) => (v as num?)?.toInt()),
    reviewCount: $checkedConvert('reviewCount', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$ProductFastLookResponseToJson(
  ProductFastLookResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'name': ?instance.name,
  'description': ?instance.description,
  'brandName': ?instance.brandName,
  'gender': ?_$GenderEnumMap[instance.gender],
  'variants': ?instance.variants?.map((e) => e.toJson()).toList(),
  'rating': ?instance.rating,
  'reviewCount': ?instance.reviewCount,
};

const _$GenderEnumMap = {
  Gender.male: 'Male',
  Gender.female: 'Female',
  Gender.unisex: 'Unisex',
};
