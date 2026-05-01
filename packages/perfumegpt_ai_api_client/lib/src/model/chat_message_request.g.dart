// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChatMessageRequestCWProxy {
  ChatMessageRequest sender(ChatMessageRequestSenderEnum sender);

  ChatMessageRequest message(ChatMessageRequestMessage message);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatMessageRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatMessageRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatMessageRequest call({
    ChatMessageRequestSenderEnum sender,
    ChatMessageRequestMessage message,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfChatMessageRequest.copyWith(...)` or call `instanceOfChatMessageRequest.copyWith.fieldName(value)` for a single field.
class _$ChatMessageRequestCWProxyImpl implements _$ChatMessageRequestCWProxy {
  const _$ChatMessageRequestCWProxyImpl(this._value);

  final ChatMessageRequest _value;

  @override
  ChatMessageRequest sender(ChatMessageRequestSenderEnum sender) =>
      call(sender: sender);

  @override
  ChatMessageRequest message(ChatMessageRequestMessage message) =>
      call(message: message);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatMessageRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatMessageRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatMessageRequest call({
    Object? sender = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
  }) {
    return ChatMessageRequest(
      sender: sender == const $CopyWithPlaceholder() || sender == null
          ? _value.sender
          // ignore: cast_nullable_to_non_nullable
          : sender as ChatMessageRequestSenderEnum,
      message: message == const $CopyWithPlaceholder() || message == null
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as ChatMessageRequestMessage,
    );
  }
}

extension $ChatMessageRequestCopyWith on ChatMessageRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfChatMessageRequest.copyWith(...)` or `instanceOfChatMessageRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatMessageRequestCWProxy get copyWith =>
      _$ChatMessageRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatMessageRequest _$ChatMessageRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ChatMessageRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['sender', 'message']);
      final val = ChatMessageRequest(
        sender: $checkedConvert(
          'sender',
          (v) => $enumDecode(_$ChatMessageRequestSenderEnumEnumMap, v),
        ),
        message: $checkedConvert(
          'message',
          (v) => ChatMessageRequestMessage.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ChatMessageRequestToJson(ChatMessageRequest instance) =>
    <String, dynamic>{
      'sender': _$ChatMessageRequestSenderEnumEnumMap[instance.sender]!,
      'message': instance.message.toJson(),
    };

const _$ChatMessageRequestSenderEnumEnumMap = {
  ChatMessageRequestSenderEnum.user: 'user',
  ChatMessageRequestSenderEnum.assistant: 'assistant',
};
