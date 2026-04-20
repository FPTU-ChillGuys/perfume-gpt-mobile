// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_controller_get_all_conversations_paginated200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationControllerGetAllConversationsPaginated200ResponseCWProxy {
  ConversationControllerGetAllConversationsPaginated200Response success(
    bool success,
  );

  ConversationControllerGetAllConversationsPaginated200Response error(
    Object? error,
  );

  ConversationControllerGetAllConversationsPaginated200Response payload(
    ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload?
    payload,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetAllConversationsPaginated200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetAllConversationsPaginated200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetAllConversationsPaginated200Response call({
    bool success,
    Object? error,
    ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload?
    payload,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationControllerGetAllConversationsPaginated200Response.copyWith(...)` or call `instanceOfConversationControllerGetAllConversationsPaginated200Response.copyWith.fieldName(value)` for a single field.
class _$ConversationControllerGetAllConversationsPaginated200ResponseCWProxyImpl
    implements
        _$ConversationControllerGetAllConversationsPaginated200ResponseCWProxy {
  const _$ConversationControllerGetAllConversationsPaginated200ResponseCWProxyImpl(
    this._value,
  );

  final ConversationControllerGetAllConversationsPaginated200Response _value;

  @override
  ConversationControllerGetAllConversationsPaginated200Response success(
    bool success,
  ) => call(success: success);

  @override
  ConversationControllerGetAllConversationsPaginated200Response error(
    Object? error,
  ) => call(error: error);

  @override
  ConversationControllerGetAllConversationsPaginated200Response payload(
    ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload?
    payload,
  ) => call(payload: payload);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetAllConversationsPaginated200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetAllConversationsPaginated200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetAllConversationsPaginated200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? payload = const $CopyWithPlaceholder(),
  }) {
    return ConversationControllerGetAllConversationsPaginated200Response(
      success: success == const $CopyWithPlaceholder() || success == null
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool,
      error: error == const $CopyWithPlaceholder()
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as Object?,
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload
                as ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload?,
    );
  }
}

extension $ConversationControllerGetAllConversationsPaginated200ResponseCopyWith
    on ConversationControllerGetAllConversationsPaginated200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationControllerGetAllConversationsPaginated200Response.copyWith(...)` or `instanceOfConversationControllerGetAllConversationsPaginated200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationControllerGetAllConversationsPaginated200ResponseCWProxy
  get copyWith =>
      _$ConversationControllerGetAllConversationsPaginated200ResponseCWProxyImpl(
        this,
      );
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationControllerGetAllConversationsPaginated200Response
_$ConversationControllerGetAllConversationsPaginated200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ConversationControllerGetAllConversationsPaginated200Response',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['success']);
    final val = ConversationControllerGetAllConversationsPaginated200Response(
      success: $checkedConvert('success', (v) => v as bool),
      error: $checkedConvert('error', (v) => v),
      payload: $checkedConvert(
        'payload',
        (v) => v == null
            ? null
            : ConversationControllerGetAllConversationsPaginated200ResponseAllOfPayload.fromJson(
                v as Map<String, dynamic>,
              ),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$ConversationControllerGetAllConversationsPaginated200ResponseToJson(
  ConversationControllerGetAllConversationsPaginated200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'payload': ?instance.payload?.toJson(),
};
