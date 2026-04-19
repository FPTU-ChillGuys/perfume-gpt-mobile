// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_controller_get_all_conversations200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationControllerGetAllConversations200ResponseCWProxy {
  ConversationControllerGetAllConversations200Response success(bool success);

  ConversationControllerGetAllConversations200Response error(Object? error);

  ConversationControllerGetAllConversations200Response details(Object? details);

  ConversationControllerGetAllConversations200Response data(
    ConversationDto? data,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetAllConversations200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetAllConversations200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetAllConversations200Response call({
    bool success,
    Object? error,
    Object? details,
    ConversationDto? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationControllerGetAllConversations200Response.copyWith(...)` or call `instanceOfConversationControllerGetAllConversations200Response.copyWith.fieldName(value)` for a single field.
class _$ConversationControllerGetAllConversations200ResponseCWProxyImpl
    implements _$ConversationControllerGetAllConversations200ResponseCWProxy {
  const _$ConversationControllerGetAllConversations200ResponseCWProxyImpl(
    this._value,
  );

  final ConversationControllerGetAllConversations200Response _value;

  @override
  ConversationControllerGetAllConversations200Response success(bool success) =>
      call(success: success);

  @override
  ConversationControllerGetAllConversations200Response error(Object? error) =>
      call(error: error);

  @override
  ConversationControllerGetAllConversations200Response details(
    Object? details,
  ) => call(details: details);

  @override
  ConversationControllerGetAllConversations200Response data(
    ConversationDto? data,
  ) => call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerGetAllConversations200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerGetAllConversations200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerGetAllConversations200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ConversationControllerGetAllConversations200Response(
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
          : data as ConversationDto?,
    );
  }
}

extension $ConversationControllerGetAllConversations200ResponseCopyWith
    on ConversationControllerGetAllConversations200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationControllerGetAllConversations200Response.copyWith(...)` or `instanceOfConversationControllerGetAllConversations200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationControllerGetAllConversations200ResponseCWProxy get copyWith =>
      _$ConversationControllerGetAllConversations200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationControllerGetAllConversations200Response
_$ConversationControllerGetAllConversations200ResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'ConversationControllerGetAllConversations200Response',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['success']);
    final val = ConversationControllerGetAllConversations200Response(
      success: $checkedConvert('success', (v) => v as bool),
      error: $checkedConvert('error', (v) => v),
      details: $checkedConvert('details', (v) => v),
      data: $checkedConvert(
        'data',
        (v) => v == null
            ? null
            : ConversationDto.fromJson(v as Map<String, dynamic>),
      ),
    );
    return val;
  },
);

Map<String, dynamic>
_$ConversationControllerGetAllConversations200ResponseToJson(
  ConversationControllerGetAllConversations200Response instance,
) => <String, dynamic>{
  'success': instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
