// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_daily_sale_figure_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ProductDailySaleFigureResponseCWProxy {
  ProductDailySaleFigureResponse productId(String? productId);

  ProductDailySaleFigureResponse productName(String? productName);

  ProductDailySaleFigureResponse dailySaleFigures(
    List<VariantDailySaleFigure>? dailySaleFigures,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductDailySaleFigureResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductDailySaleFigureResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductDailySaleFigureResponse call({
    String? productId,
    String? productName,
    List<VariantDailySaleFigure>? dailySaleFigures,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfProductDailySaleFigureResponse.copyWith(...)` or call `instanceOfProductDailySaleFigureResponse.copyWith.fieldName(value)` for a single field.
class _$ProductDailySaleFigureResponseCWProxyImpl
    implements _$ProductDailySaleFigureResponseCWProxy {
  const _$ProductDailySaleFigureResponseCWProxyImpl(this._value);

  final ProductDailySaleFigureResponse _value;

  @override
  ProductDailySaleFigureResponse productId(String? productId) =>
      call(productId: productId);

  @override
  ProductDailySaleFigureResponse productName(String? productName) =>
      call(productName: productName);

  @override
  ProductDailySaleFigureResponse dailySaleFigures(
    List<VariantDailySaleFigure>? dailySaleFigures,
  ) => call(dailySaleFigures: dailySaleFigures);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ProductDailySaleFigureResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ProductDailySaleFigureResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ProductDailySaleFigureResponse call({
    Object? productId = const $CopyWithPlaceholder(),
    Object? productName = const $CopyWithPlaceholder(),
    Object? dailySaleFigures = const $CopyWithPlaceholder(),
  }) {
    return ProductDailySaleFigureResponse(
      productId: productId == const $CopyWithPlaceholder()
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as String?,
      productName: productName == const $CopyWithPlaceholder()
          ? _value.productName
          // ignore: cast_nullable_to_non_nullable
          : productName as String?,
      dailySaleFigures: dailySaleFigures == const $CopyWithPlaceholder()
          ? _value.dailySaleFigures
          // ignore: cast_nullable_to_non_nullable
          : dailySaleFigures as List<VariantDailySaleFigure>?,
    );
  }
}

extension $ProductDailySaleFigureResponseCopyWith
    on ProductDailySaleFigureResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfProductDailySaleFigureResponse.copyWith(...)` or `instanceOfProductDailySaleFigureResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ProductDailySaleFigureResponseCWProxy get copyWith =>
      _$ProductDailySaleFigureResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDailySaleFigureResponse _$ProductDailySaleFigureResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ProductDailySaleFigureResponse', json, ($checkedConvert) {
  final val = ProductDailySaleFigureResponse(
    productId: $checkedConvert('productId', (v) => v as String?),
    productName: $checkedConvert('productName', (v) => v as String?),
    dailySaleFigures: $checkedConvert(
      'dailySaleFigures',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => VariantDailySaleFigure.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ProductDailySaleFigureResponseToJson(
  ProductDailySaleFigureResponse instance,
) => <String, dynamic>{
  'productId': ?instance.productId,
  'productName': ?instance.productName,
  'dailySaleFigures': ?instance.dailySaleFigures
      ?.map((e) => e.toJson())
      .toList(),
};
