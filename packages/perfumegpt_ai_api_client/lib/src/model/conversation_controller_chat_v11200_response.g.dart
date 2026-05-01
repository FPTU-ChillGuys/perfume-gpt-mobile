// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_controller_chat_v11200_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationControllerChatV11200ResponseCWProxy {
  ConversationControllerChatV11200Response success(bool? success);

  ConversationControllerChatV11200Response error(String? error);

  ConversationControllerChatV11200Response details(String? details);

  ConversationControllerChatV11200Response data(ChatV11Response? data);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerChatV11200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerChatV11200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerChatV11200Response call({
    bool? success,
    String? error,
    String? details,
    ChatV11Response? data,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationControllerChatV11200Response.copyWith(...)` or call `instanceOfConversationControllerChatV11200Response.copyWith.fieldName(value)` for a single field.
class _$ConversationControllerChatV11200ResponseCWProxyImpl
    implements _$ConversationControllerChatV11200ResponseCWProxy {
  const _$ConversationControllerChatV11200ResponseCWProxyImpl(this._value);

  final ConversationControllerChatV11200Response _value;

  @override
  ConversationControllerChatV11200Response success(bool? success) =>
      call(success: success);

  @override
  ConversationControllerChatV11200Response error(String? error) =>
      call(error: error);

  @override
  ConversationControllerChatV11200Response details(String? details) =>
      call(details: details);

  @override
  ConversationControllerChatV11200Response data(ChatV11Response? data) =>
      call(data: data);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationControllerChatV11200Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationControllerChatV11200Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationControllerChatV11200Response call({
    Object? success = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
    Object? details = const $CopyWithPlaceholder(),
    Object? data = const $CopyWithPlaceholder(),
  }) {
    return ConversationControllerChatV11200Response(
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
          : data as ChatV11Response?,
    );
  }
}

extension $ConversationControllerChatV11200ResponseCopyWith
    on ConversationControllerChatV11200Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationControllerChatV11200Response.copyWith(...)` or `instanceOfConversationControllerChatV11200Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationControllerChatV11200ResponseCWProxy get copyWith =>
      _$ConversationControllerChatV11200ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationControllerChatV11200Response
_$ConversationControllerChatV11200ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ConversationControllerChatV11200Response', json, (
      $checkedConvert,
    ) {
      final val = ConversationControllerChatV11200Response(
        success: $checkedConvert('success', (v) => v as bool?),
        error: $checkedConvert('error', (v) => v as String?),
        details: $checkedConvert('details', (v) => v as String?),
        data: $checkedConvert(
          'data',
          (v) => v == null
              ? null
              : ChatV11Response.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ConversationControllerChatV11200ResponseToJson(
  ConversationControllerChatV11200Response instance,
) => <String, dynamic>{
  'success': ?instance.success,
  'error': ?instance.error,
  'details': ?instance.details,
  'data': ?instance.data?.toJson(),
};
