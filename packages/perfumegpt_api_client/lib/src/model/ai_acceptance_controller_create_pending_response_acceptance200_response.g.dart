// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_acceptance_controller_create_pending_response_acceptance200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AIAcceptanceControllerCreatePendingResponseAcceptance200ResponseCWProxy {
  AIAcceptanceControllerCreatePendingResponseAcceptance200Response success(
    bool success,
  );

  AIAcceptanceControllerCreatePendingResponseAcceptance200Response error(
    Object? error,
  );

  AIAcceptanceControllerCreatePendingResponseAcceptance200Response details(
    Object? details,
  );

  AIAcceptanceControllerCreatePendingResponseAcceptance200Response data(
    AIAcceptance? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIAcceptanceControllerCreatePendingResponseAcceptance200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIAcceptanceControllerCreatePendingResponseAcceptance200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AIAcceptanceControllerCreatePendingResponseAcceptance200Response call({
    bool success,
    Object? error,
    Object? details,
    AIAcceptance? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAIAcceptanceControllerCreatePendingResponseAcceptance200Response.copyWith(...)` or call `instanceOfAIAcceptanceControllerCreatePendingResponseAcceptance200Response.copyWith.fieldName(value)` for a single field.
class _$AIAcceptanceControllerCreatePendingResponseAcceptance200ResponseCWProxyImpl
    implements
        _$AIAcceptanceControllerCreatePendingResponseAcceptance200ResponseCWProxy {
  const _$AIAcceptanceControllerCreatePendingResponseAcceptance200ResponseCWProxyImpl(
    this._value,
  );

  final AIAcceptanceControllerCreatePendingResponseAcceptance200Response _value;

  @override
  AIAcceptanceControllerCreatePendingResponseAcceptance200Response success(
    bool success,
  ) => call(success: success);

  @override
  AIAcceptanceControllerCreatePendingResponseAcceptance200Response error(
    Object? error,
  ) => call(error: error);

  @override
  AIAcceptanceControllerCreatePendingResponseAcceptance200Response details(
    Object? details,
  ) => call(details: details);

  @override
  AIAcceptanceControllerCreatePendingResponseAcceptance200Response data(
    AIAcceptance? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIAcceptanceControllerCreatePendingResponseAcceptance200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIAcceptanceControllerCreatePendingResponseAcceptance200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AIAcceptanceControllerCreatePendingResponseAcceptance200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return AIAcceptanceControllerCreatePendingResponseAcceptance200Response(
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
          : data as AIAcceptance?,
    );
  }
}

extension $AIAcceptanceControllerCreatePendingResponseAcceptance200ResponseCopyWith
    on AIAcceptanceControllerCreatePendingResponseAcceptance200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAIAcceptanceControllerCreatePendingResponseAcceptance200Response.copyWith(...)` or `instanceOfAIAcceptanceControllerCreatePendingResponseAcceptance200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AIAcceptanceControllerCreatePendingResponseAcceptance200ResponseCWProxy
  get copyWith =>
      _$AIAcceptanceControllerCreatePendingResponseAcceptance200ResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AIAcceptanceControllerCreatePendingResponseAcceptance200Response
_$AIAcceptanceControllerCreatePendingResponseAcceptance200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'AIAcceptanceControllerCreatePendingResponseAcceptance200Response',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['success']);
    final val =
        AIAcceptanceControllerCreatePendingResponseAcceptance200Response(
          success: $checkedConvert('success', (v) => v as bool),
          error: $checkedConvert('error', (v) => v),
          details: $checkedConvert('details', (v) => v),
          data: $checkedConvert(
            'data',
            (v) => v == null
                ? null
                : AIAcceptance.fromJson(v as Map<String, dynamic>),
          ),
        );
    return val;
  },
);

Map<String, dynamic>
_$AIAcceptanceControllerCreatePendingResponseAcceptance200ResponseToJson(
  AIAcceptanceControllerCreatePendingResponseAcceptance200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
