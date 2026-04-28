// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MessageRequestDtoCWProxy {
  MessageRequestDto sender(MessageRequestDtoSenderEnum sender);

  MessageRequestDto message(MessageRequestDtoMessage message);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageRequestDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageRequestDto(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageRequestDto call({
    MessageRequestDtoSenderEnum sender,
    MessageRequestDtoMessage message,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMessageRequestDto.copyWith(...)` or call `instanceOfMessageRequestDto.copyWith.fieldName(value)` for a single field.
class _$MessageRequestDtoCWProxyImpl implements _$MessageRequestDtoCWProxy {
  const _$MessageRequestDtoCWProxyImpl(this._value);

  final MessageRequestDto _value;

  @override
  MessageRequestDto sender(MessageRequestDtoSenderEnum sender) =>
      call(sender: sender);

  @override
  MessageRequestDto message(MessageRequestDtoMessage message) =>
      call(message: message);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageRequestDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageRequestDto(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageRequestDto call({
    Object? sender = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
  }) {
    return MessageRequestDto(
      sender: sender == const $CopyWithPlaceholder() || sender == null
          ? _value.sender
          // ignore: cast_nullable_to_non_nullable
          : sender as MessageRequestDtoSenderEnum,
      message: message == const $CopyWithPlaceholder() || message == null
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as MessageRequestDtoMessage,
    );
  }
}

extension $MessageRequestDtoCopyWith on MessageRequestDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMessageRequestDto.copyWith(...)` or `instanceOfMessageRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MessageRequestDtoCWProxy get copyWith =>
      _$MessageRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageRequestDto _$MessageRequestDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MessageRequestDto', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['sender', 'message']);
      final val = MessageRequestDto(
        sender: $checkedConvert(
          'sender',
          (v) => $enumDecode(_$MessageRequestDtoSenderEnumEnumMap, v),
        ),
        message: $checkedConvert(
          'message',
          (v) => MessageRequestDtoMessage.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$MessageRequestDtoToJson(MessageRequestDto instance) =>
    <String, dynamic>{
      'sender': _$MessageRequestDtoSenderEnumEnumMap[instance.sender]!,
      'message': instance.message.toJson(),
    };

const _$MessageRequestDtoSenderEnumEnumMap = {
  MessageRequestDtoSenderEnum.user: 'user',
  MessageRequestDtoSenderEnum.assistant: 'assistant',
};
