// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_acceptance_controller_get_ai_acceptance_rate200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AIAcceptanceControllerGetAIAcceptanceRate200ResponseCWProxy {
  AIAcceptanceControllerGetAIAcceptanceRate200Response success(bool? success);

  AIAcceptanceControllerGetAIAcceptanceRate200Response error(String? error);

  AIAcceptanceControllerGetAIAcceptanceRate200Response details(String? details);

  AIAcceptanceControllerGetAIAcceptanceRate200Response data(num? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIAcceptanceControllerGetAIAcceptanceRate200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIAcceptanceControllerGetAIAcceptanceRate200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AIAcceptanceControllerGetAIAcceptanceRate200Response call({
    bool? success,
    String? error,
    String? details,
    num? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAIAcceptanceControllerGetAIAcceptanceRate200Response.copyWith(...)` or call `instanceOfAIAcceptanceControllerGetAIAcceptanceRate200Response.copyWith.fieldName(value)` for a single field.
class _$AIAcceptanceControllerGetAIAcceptanceRate200ResponseCWProxyImpl
    implements _$AIAcceptanceControllerGetAIAcceptanceRate200ResponseCWProxy {
  const _$AIAcceptanceControllerGetAIAcceptanceRate200ResponseCWProxyImpl(
    this._value,
  );

  final AIAcceptanceControllerGetAIAcceptanceRate200Response _value;

  @override
  AIAcceptanceControllerGetAIAcceptanceRate200Response success(bool? success) =>
      call(success: success);

  @override
  AIAcceptanceControllerGetAIAcceptanceRate200Response error(String? error) =>
      call(error: error);

  @override
  AIAcceptanceControllerGetAIAcceptanceRate200Response details(
    String? details,
  ) => call(details: details);

  @override
  AIAcceptanceControllerGetAIAcceptanceRate200Response data(num? data) =>
      call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIAcceptanceControllerGetAIAcceptanceRate200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIAcceptanceControllerGetAIAcceptanceRate200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AIAcceptanceControllerGetAIAcceptanceRate200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return AIAcceptanceControllerGetAIAcceptanceRate200Response(
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
          : data as num?,
    );
  }
}

extension $AIAcceptanceControllerGetAIAcceptanceRate200ResponseCopyWith
    on AIAcceptanceControllerGetAIAcceptanceRate200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAIAcceptanceControllerGetAIAcceptanceRate200Response.copyWith(...)` or `instanceOfAIAcceptanceControllerGetAIAcceptanceRate200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AIAcceptanceControllerGetAIAcceptanceRate200ResponseCWProxy get copyWith =>
      _$AIAcceptanceControllerGetAIAcceptanceRate200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AIAcceptanceControllerGetAIAcceptanceRate200Response
_$AIAcceptanceControllerGetAIAcceptanceRate200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'AIAcceptanceControllerGetAIAcceptanceRate200Response',
  json,
  ($checkedConvert) {
    final val = AIAcceptanceControllerGetAIAcceptanceRate200Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      details: $checkedConvert('details', (v) => v as String?),
      data: $checkedConvert('data', (v) => v as num?),
    );
    return val;
  },
);

Map<String, dynamic>
_$AIAcceptanceControllerGetAIAcceptanceRate200ResponseToJson(
  AIAcceptanceControllerGetAIAcceptanceRate200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data,
};
