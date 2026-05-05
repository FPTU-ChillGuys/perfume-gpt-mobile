// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_acceptance_controller_get_all_ai_acceptance_status200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AIAcceptanceControllerGetAllAIAcceptanceStatus200ResponseCWProxy {
  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response success(
    bool? success,
  );

  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response error(
    String? error,
  );

  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response details(
    String? details,
  );

  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response data(
    AIAcceptanceResponse? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIAcceptanceControllerGetAllAIAcceptanceStatus200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIAcceptanceControllerGetAllAIAcceptanceStatus200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response call({
    bool? success,
    String? error,
    String? details,
    AIAcceptanceResponse? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfAIAcceptanceControllerGetAllAIAcceptanceStatus200Response.copyWith(...)` or call `instanceOfAIAcceptanceControllerGetAllAIAcceptanceStatus200Response.copyWith.fieldName(value)` for a single field.
class _$AIAcceptanceControllerGetAllAIAcceptanceStatus200ResponseCWProxyImpl
    implements
        _$AIAcceptanceControllerGetAllAIAcceptanceStatus200ResponseCWProxy {
  const _$AIAcceptanceControllerGetAllAIAcceptanceStatus200ResponseCWProxyImpl(
    this._value,
  );

  final AIAcceptanceControllerGetAllAIAcceptanceStatus200Response _value;

  @override
  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response success(
    bool? success,
  ) => call(success: success);

  @override
  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response error(
    String? error,
  ) => call(error: error);

  @override
  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response details(
    String? details,
  ) => call(details: details);

  @override
  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response data(
    AIAcceptanceResponse? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `AIAcceptanceControllerGetAllAIAcceptanceStatus200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// AIAcceptanceControllerGetAllAIAcceptanceStatus200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return AIAcceptanceControllerGetAllAIAcceptanceStatus200Response(
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
          : data as AIAcceptanceResponse?,
    );
  }
}

extension $AIAcceptanceControllerGetAllAIAcceptanceStatus200ResponseCopyWith
    on AIAcceptanceControllerGetAllAIAcceptanceStatus200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfAIAcceptanceControllerGetAllAIAcceptanceStatus200Response.copyWith(...)` or `instanceOfAIAcceptanceControllerGetAllAIAcceptanceStatus200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AIAcceptanceControllerGetAllAIAcceptanceStatus200ResponseCWProxy
  get copyWith =>
      _$AIAcceptanceControllerGetAllAIAcceptanceStatus200ResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AIAcceptanceControllerGetAllAIAcceptanceStatus200Response
_$AIAcceptanceControllerGetAllAIAcceptanceStatus200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'AIAcceptanceControllerGetAllAIAcceptanceStatus200Response',
  json,
  ($checkedConvert) {
    final val = AIAcceptanceControllerGetAllAIAcceptanceStatus200Response(
      success: $checkedConvert('success', (v) => v as bool?),
      error: $checkedConvert('error', (v) => v as String?),
      details: $checkedConvert('details', (v) => v as String?),
      data: $checkedConvert(
        'data',
        (v) => v == null
            ? null
            : AIAcceptanceResponse.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$AIAcceptanceControllerGetAllAIAcceptanceStatus200ResponseToJson(
  AIAcceptanceControllerGetAllAIAcceptanceStatus200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
