// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationRequestDtoCWProxy {
  ConversationRequestDto id(String id);

  ConversationRequestDto userId(String? userId);

  ConversationRequestDto messages(List<MessageRequestDto> messages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationRequestDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationRequestDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationRequestDto call({
    String id,
    String? userId,
    List<MessageRequestDto> messages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationRequestDto.copyWith(...)` or call `instanceOfConversationRequestDto.copyWith.fieldName(value)` for a single field.
class _$ConversationRequestDtoCWProxyImpl
    implements _$ConversationRequestDtoCWProxy {
  const _$ConversationRequestDtoCWProxyImpl(this._value);

  final ConversationRequestDto _value;

  @override
  ConversationRequestDto id(String id) => call(id: id);

  @override
  ConversationRequestDto userId(String? userId) => call(userId: userId);

  @override
  ConversationRequestDto messages(List<MessageRequestDto> messages) =>
      call(messages: messages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationRequestDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationRequestDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationRequestDto call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? messages = const $CopyWithPlaceholder(),
  }) {
    return ConversationRequestDto(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      messages: messages == const $CopyWithPlaceholder() || messages == null
          ? _value.messages
          // ignore: cast_nullable_to_non_nullable
          : messages as List<MessageRequestDto>,
    );
  }
}

extension $ConversationRequestDtoCopyWith on ConversationRequestDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationRequestDto.copyWith(...)` or `instanceOfConversationRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationRequestDtoCWProxy get copyWith =>
      _$ConversationRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationRequestDto _$ConversationRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConversationRequestDto', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['id', 'messages']);
  final val = ConversationRequestDto(
    id: $checkedConvert('id', (v) => v as String),
    userId: $checkedConvert('userId', (v) => v as String?),
    messages: $checkedConvert(
      'messages',
      (v) => (v as List<dynamic>)
          .map((e) => MessageRequestDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ConversationRequestDtoToJson(
  ConversationRequestDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': ?instance.userId,
  'messages': instance.messages.map((e) => e.toJson()).toList(),
};
