// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mobile_survey_product.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MobileSurveyProductCWProxy {
  MobileSurveyProduct id(String id);

  MobileSurveyProduct name(String name);

  MobileSurveyProduct brandName(String brandName);

  MobileSurveyProduct primaryImage(String primaryImage);

  MobileSurveyProduct reasoning(String reasoning);

  MobileSurveyProduct minPrice(num minPrice);

  MobileSurveyProduct maxPrice(num maxPrice);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyProduct(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyProduct(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyProduct call({
    String id,
    String name,
    String brandName,
    String primaryImage,
    String reasoning,
    num minPrice,
    num maxPrice,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMobileSurveyProduct.copyWith(...)` or call `instanceOfMobileSurveyProduct.copyWith.fieldName(value)` for a single field.
class _$MobileSurveyProductCWProxyImpl implements _$MobileSurveyProductCWProxy {
  const _$MobileSurveyProductCWProxyImpl(this._value);

  final MobileSurveyProduct _value;

  @override
  MobileSurveyProduct id(String id) => call(id: id);

  @override
  MobileSurveyProduct name(String name) => call(name: name);

  @override
  MobileSurveyProduct brandName(String brandName) => call(brandName: brandName);

  @override
  MobileSurveyProduct primaryImage(String primaryImage) =>
      call(primaryImage: primaryImage);

  @override
  MobileSurveyProduct reasoning(String reasoning) => call(reasoning: reasoning);

  @override
  MobileSurveyProduct minPrice(num minPrice) => call(minPrice: minPrice);

  @override
  MobileSurveyProduct maxPrice(num maxPrice) => call(maxPrice: maxPrice);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MobileSurveyProduct(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MobileSurveyProduct(...).copyWith(id: 12, name: "My name")
  /// ```
  MobileSurveyProduct call({
    Object? id = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? primaryImage = const $CopyWithPlaceholder(),
    Object? reasoning = const $CopyWithPlaceholder(),
    Object? minPrice = const $CopyWithPlaceholder(),
    Object? maxPrice = const $CopyWithPlaceholder(),
  }) {
    return MobileSurveyProduct(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      brandName: brandName == const $CopyWithPlaceholder() || brandName == null
          ? _value.brandName
          // ignore: cast_nullable_to_non_nullable
          : brandName as String,
      primaryImage:
          primaryImage == const $CopyWithPlaceholder() || primaryImage == null
          ? _value.primaryImage
          // ignore: cast_nullable_to_non_nullable
          : primaryImage as String,
      reasoning: reasoning == const $CopyWithPlaceholder() || reasoning == null
          ? _value.reasoning
          // ignore: cast_nullable_to_non_nullable
          : reasoning as String,
      minPrice: minPrice == const $CopyWithPlaceholder() || minPrice == null
          ? _value.minPrice
          // ignore: cast_nullable_to_non_nullable
          : minPrice as num,
      maxPrice: maxPrice == const $CopyWithPlaceholder() || maxPrice == null
          ? _value.maxPrice
          // ignore: cast_nullable_to_non_nullable
          : maxPrice as num,
    );
  }
}

extension $MobileSurveyProductCopyWith on MobileSurveyProduct {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMobileSurveyProduct.copyWith(...)` or `instanceOfMobileSurveyProduct.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MobileSurveyProductCWProxy get copyWith =>
      _$MobileSurveyProductCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MobileSurveyProduct _$MobileSurveyProductFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MobileSurveyProduct', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const [
          'id',
          'name',
          'brandName',
          'primaryImage',
          'reasoning',
          'minPrice',
          'maxPrice',
        ],
      );
      final val = MobileSurveyProduct(
        id: $checkedConvert('id', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        brandName: $checkedConvert('brandName', (v) => v as String),
        primaryImage: $checkedConvert('primaryImage', (v) => v as String),
        reasoning: $checkedConvert('reasoning', (v) => v as String),
        minPrice: $checkedConvert('minPrice', (v) => v as num),
        maxPrice: $checkedConvert('maxPrice', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$MobileSurveyProductToJson(
  MobileSurveyProduct instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'brandName': instance.brandName,
  'primaryImage': instance.primaryImage,
  'reasoning': instance.reasoning,
  'minPrice': instance.minPrice,
  'maxPrice': instance.maxPrice,
};
