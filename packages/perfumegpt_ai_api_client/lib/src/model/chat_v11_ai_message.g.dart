// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_v11_ai_message.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChatV11AiMessageCWProxy {
  ChatV11AiMessage sender(ChatV11AiMessageSenderEnum sender);

  ChatV11AiMessage message(String message);

  ChatV11AiMessage createdAt(DateTime createdAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatV11AiMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatV11AiMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatV11AiMessage call({
    ChatV11AiMessageSenderEnum sender,
    String message,
    DateTime createdAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfChatV11AiMessage.copyWith(...)` or call `instanceOfChatV11AiMessage.copyWith.fieldName(value)` for a single field.
class _$ChatV11AiMessageCWProxyImpl implements _$ChatV11AiMessageCWProxy {
  const _$ChatV11AiMessageCWProxyImpl(this._value);

  final ChatV11AiMessage _value;

  @override
  ChatV11AiMessage sender(ChatV11AiMessageSenderEnum sender) =>
      call(sender: sender);

  @override
  ChatV11AiMessage message(String message) => call(message: message);

  @override
  ChatV11AiMessage createdAt(DateTime createdAt) => call(createdAt: createdAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatV11AiMessage(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatV11AiMessage(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatV11AiMessage call({
    Object? sender = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return ChatV11AiMessage(
      sender: sender == const $CopyWithPlaceholder() || sender == null
          ? _value.sender
          // ignore: cast_nullable_to_non_nullable
          : sender as ChatV11AiMessageSenderEnum,
      message: message == const $CopyWithPlaceholder() || message == null
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
    );
  }
}

extension $ChatV11AiMessageCopyWith on ChatV11AiMessage {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfChatV11AiMessage.copyWith(...)` or `instanceOfChatV11AiMessage.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatV11AiMessageCWProxy get copyWith => _$ChatV11AiMessageCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatV11AiMessage _$ChatV11AiMessageFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ChatV11AiMessage', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['sender', 'message', 'createdAt']);
      final val = ChatV11AiMessage(
        sender: $checkedConvert(
          'sender',
          (v) => $enumDecode(_$ChatV11AiMessageSenderEnumEnumMap, v),
        ),
        message: $checkedConvert('message', (v) => v as String),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ChatV11AiMessageToJson(ChatV11AiMessage instance) =>
    <String, dynamic>{
      'sender': _$ChatV11AiMessageSenderEnumEnumMap[instance.sender]!,
      'message': instance.message,
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$ChatV11AiMessageSenderEnumEnumMap = {
  ChatV11AiMessageSenderEnum.assistant: 'assistant',
};
