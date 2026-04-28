// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MessageDtoCWProxy {
  MessageDto id(String id);

  MessageDto createdAt(DateTime createdAt);

  MessageDto updatedAt(DateTime updatedAt);

  MessageDto isActive(bool isActive);

  MessageDto sender(String sender);

  MessageDto message(MessageDtoMessage message);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageDto(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageDto call({
    String id,
    DateTime createdAt,
    DateTime updatedAt,
    bool isActive,
    String sender,
    MessageDtoMessage message,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMessageDto.copyWith(...)` or call `instanceOfMessageDto.copyWith.fieldName(value)` for a single field.
class _$MessageDtoCWProxyImpl implements _$MessageDtoCWProxy {
  const _$MessageDtoCWProxyImpl(this._value);

  final MessageDto _value;

  @override
  MessageDto id(String id) => call(id: id);

  @override
  MessageDto createdAt(DateTime createdAt) => call(createdAt: createdAt);

  @override
  MessageDto updatedAt(DateTime updatedAt) => call(updatedAt: updatedAt);

  @override
  MessageDto isActive(bool isActive) => call(isActive: isActive);

  @override
  MessageDto sender(String sender) => call(sender: sender);

  @override
  MessageDto message(MessageDtoMessage message) => call(message: message);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MessageDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MessageDto(...).copyWith(id: 12, name: "My name")
  /// ```
  MessageDto call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? sender = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
  }) {
    return MessageDto(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as bool,
      sender: sender == const $CopyWithPlaceholder() || sender == null
          ? _value.sender
          // ignore: cast_nullable_to_non_nullable
          : sender as String,
      message: message == const $CopyWithPlaceholder() || message == null
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as MessageDtoMessage,
    );
  }
}

extension $MessageDtoCopyWith on MessageDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMessageDto.copyWith(...)` or `instanceOfMessageDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MessageDtoCWProxy get copyWith => _$MessageDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageDto _$MessageDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('MessageDto', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'createdAt',
      'updatedAt',
      'isActive',
      'sender',
      'message',
    ],
  );
  final val = MessageDto(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    sender: $checkedConvert('sender', (v) => v as String),
    message: $checkedConvert(
      'message',
      (v) => MessageDtoMessage.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$MessageDtoToJson(MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isActive': instance.isActive,
      'sender': instance.sender,
      'message': instance.message.toJson(),
    };
