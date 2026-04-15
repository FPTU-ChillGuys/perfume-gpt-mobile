// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_controller_conversation_v8200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationControllerConversationV8200ResponseCWProxy {
  ConversationControllerConversationV8200Response success(bool success);

  ConversationControllerConversationV8200Response error(Object? error);

  ConversationControllerConversationV8200Response details(Object? details);

  ConversationControllerConversationV8200Response data(
    ConversationRequestDto? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerConversationV8200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerConversationV8200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerConversationV8200Response call({
    bool success,
    Object? error,
    Object? details,
    ConversationRequestDto? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationControllerConversationV8200Response.copyWith(...)` or call `instanceOfConversationControllerConversationV8200Response.copyWith.fieldName(value)` for a single field.
class _$ConversationControllerConversationV8200ResponseCWProxyImpl
    implements _$ConversationControllerConversationV8200ResponseCWProxy {
  const _$ConversationControllerConversationV8200ResponseCWProxyImpl(
    this._value,
  );

  final ConversationControllerConversationV8200Response _value;

  @override
  ConversationControllerConversationV8200Response success(bool success) =>
      call(success: success);

  @override
  ConversationControllerConversationV8200Response error(Object? error) =>
      call(error: error);

  @override
  ConversationControllerConversationV8200Response details(Object? details) =>
      call(details: details);

  @override
  ConversationControllerConversationV8200Response data(
    ConversationRequestDto? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerConversationV8200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerConversationV8200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerConversationV8200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ConversationControllerConversationV8200Response(
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
          : data as ConversationRequestDto?,
    );
  }
}

extension $ConversationControllerConversationV8200ResponseCopyWith
    on ConversationControllerConversationV8200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationControllerConversationV8200Response.copyWith(...)` or `instanceOfConversationControllerConversationV8200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationControllerConversationV8200ResponseCWProxy get copyWith =>
      _$ConversationControllerConversationV8200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationControllerConversationV8200Response
_$ConversationControllerConversationV8200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConversationControllerConversationV8200Response', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['success']);
  final val = ConversationControllerConversationV8200Response(
    success: $checkedConvert('success', (v) => v as bool),
    error: $checkedConvert('error', (v) => v),
    details: $checkedConvert('details', (v) => v),
    data: $checkedConvert(
      'data',
      (v) => v == null
          ? null
          : ConversationRequestDto.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ConversationControllerConversationV8200ResponseToJson(
  ConversationControllerConversationV8200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
