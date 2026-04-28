// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trend_controller_get_product_trend_job_result200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TrendControllerGetProductTrendJobResult200ResponseCWProxy {
  TrendControllerGetProductTrendJobResult200Response success(bool? success);

  TrendControllerGetProductTrendJobResult200Response error(String? error);

  TrendControllerGetProductTrendJobResult200Response details(String? details);

  TrendControllerGetProductTrendJobResult200Response data(Object? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TrendControllerGetProductTrendJobResult200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TrendControllerGetProductTrendJobResult200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  TrendControllerGetProductTrendJobResult200Response call({
    bool? success,
    String? error,
    String? details,
    Object? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfTrendControllerGetProductTrendJobResult200Response.copyWith(...)` or call `instanceOfTrendControllerGetProductTrendJobResult200Response.copyWith.fieldName(value)` for a single field.
class _$TrendControllerGetProductTrendJobResult200ResponseCWProxyImpl
    implements _$TrendControllerGetProductTrendJobResult200ResponseCWProxy {
  const _$TrendControllerGetProductTrendJobResult200ResponseCWProxyImpl(
    this._value,
  );

  final TrendControllerGetProductTrendJobResult200Response _value;

  @override
  TrendControllerGetProductTrendJobResult200Response success(bool? success) =>
      call(success: success);

  @override
  TrendControllerGetProductTrendJobResult200Response error(String? error) =>
      call(error: error);

  @override
  TrendControllerGetProductTrendJobResult200Response details(String? details) =>
      call(details: details);

  @override
  TrendControllerGetProductTrendJobResult200Response data(Object? data) =>
      call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `TrendControllerGetProductTrendJobResult200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// TrendControllerGetProductTrendJobResult200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  TrendControllerGetProductTrendJobResult200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return TrendControllerGetProductTrendJobResult200Response(
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String?,
      details: details == const $CopyWithPlaceholder()
          ? _value.details
          // ignore: cast_nullable_to_non_nullable
          : details as String?,
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as Object?,
    );
  }
}

extension $TrendControllerGetProductTrendJobResult200ResponseCopyWith
    on TrendControllerGetProductTrendJobResult200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfTrendControllerGetProductTrendJobResult200Response.copyWith(...)` or `instanceOfTrendControllerGetProductTrendJobResult200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TrendControllerGetProductTrendJobResult200ResponseCWProxy get copyWith =>
      _$TrendControllerGetProductTrendJobResult200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendControllerGetProductTrendJobResult200Response
_$TrendControllerGetProductTrendJobResult200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'TrendControllerGetProductTrendJobResult200Response',
  json,
  ($checkedConvert) {
    final val = TrendControllerGetProductTrendJobResult200Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      details: $checkedConvert('details', (v) => v as String?),
      data: $checkedConvert('data', (v) => v),
    );
    return val;
  },
);

Map<String, dynamic> _$TrendControllerGetProductTrendJobResult200ResponseToJson(
  TrendControllerGetProductTrendJobResult200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data,
};
