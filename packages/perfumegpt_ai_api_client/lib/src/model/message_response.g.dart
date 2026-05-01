// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MessageResponseCWProxy {
  MessageResponse sender(MessageResponseSenderEnum sender);

  MessageResponse message(MessageResponseMessage message);

  MessageResponse createdAt(DateTime createdAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageResponse call({
    MessageResponseSenderEnum sender,
    MessageResponseMessage message,
    DateTime createdAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMessageResponse.copyWith(...)` or call `instanceOfMessageResponse.copyWith.fieldName(value)` for a single field.
class _$MessageResponseCWProxyImpl implements _$MessageResponseCWProxy {
  const _$MessageResponseCWProxyImpl(this._value);

  final MessageResponse _value;

  @override
  MessageResponse sender(MessageResponseSenderEnum sender) =>
      call(sender: sender);

  @override
  MessageResponse message(MessageResponseMessage message) =>
      call(message: message);

  @override
  MessageResponse createdAt(DateTime createdAt) => call(createdAt: createdAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageResponse call({
    Object? sender = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return MessageResponse(
      sender: sender == const $CopyWithPlaceholder() || sender == null
          ? _value.sender
          // ignore: cast_nullable_to_non_nullable
          : sender as MessageResponseSenderEnum,
      message: message == const $CopyWithPlaceholder() || message == null
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as MessageResponseMessage,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
    );
  }
}

extension $MessageResponseCopyWith on MessageResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMessageResponse.copyWith(...)` or `instanceOfMessageResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MessageResponseCWProxy get copyWith => _$MessageResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageResponse _$MessageResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MessageResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['sender', 'message', 'createdAt']);
      final val = MessageResponse(
        sender: $checkedConvert(
          'sender',
          (v) => $enumDecode(_$MessageResponseSenderEnumEnumMap, v),
        ),
        message: $checkedConvert(
          'message',
          (v) => MessageResponseMessage.fromJson(v as Map<String, dynamic>),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$MessageResponseToJson(MessageResponse instance) =>
    <String, dynamic>{
      'sender': _$MessageResponseSenderEnumEnumMap[instance.sender]!,
      'message': instance.message.toJson(),
      'createdAt': instance.createdAt.toIso8601String(),
    };

const _$MessageResponseSenderEnumEnumMap = {
  MessageResponseSenderEnum.user: 'user',
  MessageResponseSenderEnum.assistant: 'assistant',
};
