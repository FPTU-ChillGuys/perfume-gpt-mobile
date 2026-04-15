// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trend_controller_get_product_from_trend_caching200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TrendControllerGetProductFromTrendCaching200ResponseCWProxy {
  TrendControllerGetProductFromTrendCaching200Response success(bool success);

  TrendControllerGetProductFromTrendCaching200Response error(Object? error);

  TrendControllerGetProductFromTrendCaching200Response details(Object? details);

  TrendControllerGetProductFromTrendCaching200Response data(
    ProductCardResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TrendControllerGetProductFromTrendCaching200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TrendControllerGetProductFromTrendCaching200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  TrendControllerGetProductFromTrendCaching200Response call({
    bool success,
    Object? error,
    Object? details,
    ProductCardResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfTrendControllerGetProductFromTrendCaching200Response.copyWith(...)` or call `instanceOfTrendControllerGetProductFromTrendCaching200Response.copyWith.fieldName(value)` for a single field.
class _$TrendControllerGetProductFromTrendCaching200ResponseCWProxyImpl
    implements _$TrendControllerGetProductFromTrendCaching200ResponseCWProxy {
  const _$TrendControllerGetProductFromTrendCaching200ResponseCWProxyImpl(
    this._value,
  );

  final TrendControllerGetProductFromTrendCaching200Response _value;

  @override
  TrendControllerGetProductFromTrendCaching200Response success(bool success) =>
      call(success: success);

  @override
  TrendControllerGetProductFromTrendCaching200Response error(Object? error) =>
      call(error: error);

  @override
  TrendControllerGetProductFromTrendCaching200Response details(
    Object? details,
  ) => call(details: details);

  @override
  TrendControllerGetProductFromTrendCaching200Response data(
    ProductCardResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TrendControllerGetProductFromTrendCaching200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TrendControllerGetProductFromTrendCaching200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  TrendControllerGetProductFromTrendCaching200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return TrendControllerGetProductFromTrendCaching200Response(
      success: success == const $CopyWithPlaceholder() || success == null
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as Object?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as ProductCardResponse?,
    );
  }
}

extension $TrendControllerGetProductFromTrendCaching200ResponseCopyWith
    on TrendControllerGetProductFromTrendCaching200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfTrendControllerGetProductFromTrendCaching200Response.copyWith(...)` or `instanceOfTrendControllerGetProductFromTrendCaching200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TrendControllerGetProductFromTrendCaching200ResponseCWProxy get copyWith =>
      _$TrendControllerGetProductFromTrendCaching200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendControllerGetProductFromTrendCaching200Response
_$TrendControllerGetProductFromTrendCaching200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TrendControllerGetProductFromTrendCaching200Response',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['success']);
    final val = TrendControllerGetProductFromTrendCaching200Response(
      success: $checkedConvert('success', (v) => v as bool),
      error: $checkedConvert('error', (v) => v),
      details: $checkedConvert('details', (v) => v),
      data: $checkedConvert(
        'data',
        (v) => v == null
            ? null
            : ProductCardResponse.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$TrendControllerGetProductFromTrendCaching200ResponseToJson(
  TrendControllerGetProductFromTrendCaching200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
