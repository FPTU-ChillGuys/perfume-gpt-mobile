// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_infor_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductInforResponseCWProxy {
  ProductInforResponse productCode(String? productCode);

  ProductInforResponse brandName(String? brandName);

  ProductInforResponse origin(String? origin);

  ProductInforResponse releaseYear(int? releaseYear);

  ProductInforResponse scentGroup(String? scentGroup);

  ProductInforResponse style(String? style);

  ProductInforResponse topNotes(String? topNotes);

  ProductInforResponse middleNotes(String? middleNotes);

  ProductInforResponse baseNotes(String? baseNotes);

  ProductInforResponse description(String? description);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductInforResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductInforResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductInforResponse call({
    String? productCode,
    String? brandName,
    String? origin,
    int? releaseYear,
    String? scentGroup,
    String? style,
    String? topNotes,
    String? middleNotes,
    String? baseNotes,
    String? description,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductInforResponse.copyWith(...)` or call `instanceOfProductInforResponse.copyWith.fieldName(value)` for a single field.
class _$ProductInforResponseCWProxyImpl
    implements _$ProductInforResponseCWProxy {
  const _$ProductInforResponseCWProxyImpl(this._value);

  final ProductInforResponse _value;

  @override
  ProductInforResponse productCode(String? productCode) =>
      call(productCode: productCode);

  @override
  ProductInforResponse brandName(String? brandName) =>
      call(brandName: brandName);

  @override
  ProductInforResponse origin(String? origin) => call(origin: origin);

  @override
  ProductInforResponse releaseYear(int? releaseYear) =>
      call(releaseYear: releaseYear);

  @override
  ProductInforResponse scentGroup(String? scentGroup) =>
      call(scentGroup: scentGroup);

  @override
  ProductInforResponse style(String? style) => call(style: style);

  @override
  ProductInforResponse topNotes(String? topNotes) => call(topNotes: topNotes);

  @override
  ProductInforResponse middleNotes(String? middleNotes) =>
      call(middleNotes: middleNotes);

  @override
  ProductInforResponse baseNotes(String? baseNotes) =>
      call(baseNotes: baseNotes);

  @override
  ProductInforResponse description(String? description) =>
      call(description: description);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductInforResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductInforResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductInforResponse call({
    Object? productCode = const $CopyWithPlaceholder(),
    Object? brandName = const $CopyWithPlaceholder(),
    Object? origin = const $CopyWithPlaceholder(),
    Object? releaseYear = const $CopyWithPlaceholder(),
    Object? scentGroup = const $CopyWithPlaceholder(),
    Object? style = const $CopyWithPlaceholder(),
    Object? topNotes = const $CopyWithPlaceholder(),
    Object? middleNotes = const $CopyWithPlaceholder(),
    Object? baseNotes = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
  }) {
    return ProductInforResponse(
      productCode: productCode == const $CopyWithPlaceholder()
          ? _value.productCode
          // ignore: cast_nullable_to_non_nullable
          : productCode as String?,
      brandName: brandName == const $CopyWithPlaceholder()
          ? _value.brandName
          // ignore: cast_nullable_to_non_nullable
          : brandName as String?,
      origin: origin == const $CopyWithPlaceholder()
          ? _value.origin
          // ignore: cast_nullable_to_non_nullable
          : origin as String?,
      releaseYear: releaseYear == const $CopyWithPlaceholder()
          ? _value.releaseYear
          // ignore: cast_nullable_to_non_nullable
          : releaseYear as int?,
      scentGroup: scentGroup == const $CopyWithPlaceholder()
          ? _value.scentGroup
          // ignore: cast_nullable_to_non_nullable
          : scentGroup as String?,
      style: style == const $CopyWithPlaceholder()
          ? _value.style
          // ignore: cast_nullable_to_non_nullable
          : style as String?,
      topNotes: topNotes == const $CopyWithPlaceholder()
          ? _value.topNotes
          // ignore: cast_nullable_to_non_nullable
          : topNotes as String?,
      middleNotes: middleNotes == const $CopyWithPlaceholder()
          ? _value.middleNotes
          // ignore: cast_nullable_to_non_nullable
          : middleNotes as String?,
      baseNotes: baseNotes == const $CopyWithPlaceholder()
          ? _value.baseNotes
          // ignore: cast_nullable_to_non_nullable
          : baseNotes as String?,
      description: description == const $CopyWithPlaceholder()
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String?,
    );
  }
}

extension $ProductInforResponseCopyWith on ProductInforResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductInforResponse.copyWith(...)` or `instanceOfProductInforResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductInforResponseCWProxy get copyWith =>
      _$ProductInforResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductInforResponse _$ProductInforResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductInforResponse', json, ($checkedConvert) {
  final val = ProductInforResponse(
    productCode: $checkedConvert('productCode', (v) => v as String?),
    brandName: $checkedConvert('brandName', (v) => v as String?),
    origin: $checkedConvert('origin', (v) => v as String?),
    releaseYear: $checkedConvert('releaseYear', (v) => (v as num?)?.toInt()),
    scentGroup: $checkedConvert('scentGroup', (v) => v as String?),
    style: $checkedConvert('style', (v) => v as String?),
    topNotes: $checkedConvert('topNotes', (v) => v as String?),
    middleNotes: $checkedConvert('middleNotes', (v) => v as String?),
    baseNotes: $checkedConvert('baseNotes', (v) => v as String?),
    description: $checkedConvert('description', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ProductInforResponseToJson(
  ProductInforResponse instance,
) => <String, dynamic>{
  'productCode': ?instance.productCode,
  'brandName': ?instance.brandName,
  'origin': ?instance.origin,
  'releaseYear': ?instance.releaseYear,
  'scentGroup': ?instance.scentGroup,
  'style': ?instance.style,
  'topNotes': ?instance.topNotes,
  'middleNotes': ?instance.middleNotes,
  'baseNotes': ?instance.baseNotes,
  'description': ?instance.description,
};
