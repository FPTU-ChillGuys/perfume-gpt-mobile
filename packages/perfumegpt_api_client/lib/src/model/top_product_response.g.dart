// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_product_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TopProductResponseCWProxy {
  TopProductResponse productId(String? productId);

  TopProductResponse productName(String? productName);

  TopProductResponse totalUnitsSold(int? totalUnitsSold);

  TopProductResponse revenue(num? revenue);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TopProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TopProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  TopProductResponse call({
    String? productId,
    String? productName,
    int? totalUnitsSold,
    num? revenue,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfTopProductResponse.copyWith(...)` or call `instanceOfTopProductResponse.copyWith.fieldName(value)` for a single field.
class _$TopProductResponseCWProxyImpl implements _$TopProductResponseCWProxy {
  const _$TopProductResponseCWProxyImpl(this._value);

  final TopProductResponse _value;

  @override
  TopProductResponse productId(String? productId) => call(productId: productId);

  @override
  TopProductResponse productName(String? productName) =>
      call(productName: productName);

  @override
  TopProductResponse totalUnitsSold(int? totalUnitsSold) =>
      call(totalUnitsSold: totalUnitsSold);

  @override
  TopProductResponse revenue(num? revenue) => call(revenue: revenue);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TopProductResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TopProductResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  TopProductResponse call({
    Object? productId = const $CopyWithPlaceholder(),
    Object? productName = const $CopyWithPlaceholder(),
    Object? totalUnitsSold = const $CopyWithPlaceholder(),
    Object? revenue = const $CopyWithPlaceholder(),
  }) {
    return TopProductResponse(
      productId: productId == const $CopyWithPlaceholder()
          ? _value.productId
          // ignore: cast_nullable_to_non_nullable
          : productId as String?,
      productName: productName == const $CopyWithPlaceholder()
          ? _value.productName
          // ignore: cast_nullable_to_non_nullable
          : productName as String?,
      totalUnitsSold: totalUnitsSold == const $CopyWithPlaceholder()
          ? _value.totalUnitsSold
          // ignore: cast_nullable_to_non_nullable
          : totalUnitsSold as int?,
      revenue: revenue == const $CopyWithPlaceholder()
          ? _value.revenue
          // ignore: cast_nullable_to_non_nullable
          : revenue as num?,
    );
  }
}

extension $TopProductResponseCopyWith on TopProductResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfTopProductResponse.copyWith(...)` or `instanceOfTopProductResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TopProductResponseCWProxy get copyWith =>
      _$TopProductResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopProductResponse _$TopProductResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('TopProductResponse', json, ($checkedConvert) {
      final val = TopProductResponse(
        productId: $checkedConvert('productId', (v) => v as String?),
        productName: $checkedConvert('productName', (v) => v as String?),
        totalUnitsSold: $checkedConvert(
          'totalUnitsSold',
          (v) => (v as num?)?.toInt(),
        ),
        revenue: $checkedConvert('revenue', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$TopProductResponseToJson(TopProductResponse instance) =>
    <String, dynamic>{
      'productId': ?instance.productId,
      'productName': ?instance.productName,
      'totalUnitsSold': ?instance.totalUnitsSold,
      'revenue': ?instance.revenue,
    };
