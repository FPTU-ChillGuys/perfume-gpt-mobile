// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_v11_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChatV11ResponseCWProxy {
  ChatV11Response conversationId(String conversationId);

  ChatV11Response aiMessage(ChatV11AiMessage aiMessage);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatV11Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatV11Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatV11Response call({String conversationId, ChatV11AiMessage aiMessage});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfChatV11Response.copyWith(...)` or call `instanceOfChatV11Response.copyWith.fieldName(value)` for a single field.
class _$ChatV11ResponseCWProxyImpl implements _$ChatV11ResponseCWProxy {
  const _$ChatV11ResponseCWProxyImpl(this._value);

  final ChatV11Response _value;

  @override
  ChatV11Response conversationId(String conversationId) =>
      call(conversationId: conversationId);

  @override
  ChatV11Response aiMessage(ChatV11AiMessage aiMessage) =>
      call(aiMessage: aiMessage);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatV11Response(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatV11Response(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatV11Response call({
    Object? conversationId = const $CopyWithPlaceholder(),
    Object? aiMessage = const $CopyWithPlaceholder(),
  }) {
    return ChatV11Response(
      conversationId:
          conversationId == const $CopyWithPlaceholder() ||
              conversationId == null
          ? _value.conversationId
          // ignore: cast_nullable_to_non_nullable
          : conversationId as String,
      aiMessage: aiMessage == const $CopyWithPlaceholder() || aiMessage == null
          ? _value.aiMessage
          // ignore: cast_nullable_to_non_nullable
          : aiMessage as ChatV11AiMessage,
    );
  }
}

extension $ChatV11ResponseCopyWith on ChatV11Response {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfChatV11Response.copyWith(...)` or `instanceOfChatV11Response.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatV11ResponseCWProxy get copyWith => _$ChatV11ResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatV11Response _$ChatV11ResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ChatV11Response', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['conversationId', 'aiMessage']);
      final val = ChatV11Response(
        conversationId: $checkedConvert('conversationId', (v) => v as String),
        aiMessage: $checkedConvert(
          'aiMessage',
          (v) => ChatV11AiMessage.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ChatV11ResponseToJson(ChatV11Response instance) =>
    <String, dynamic>{
      'conversationId': instance.conversationId,
      'aiMessage': instance.aiMessage.toJson(),
    };
