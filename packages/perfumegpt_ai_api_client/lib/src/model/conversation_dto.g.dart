// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationDtoCWProxy {
  ConversationDto id(String id);

  ConversationDto createdAt(DateTime createdAt);

  ConversationDto updatedAt(DateTime updatedAt);

  ConversationDto isActive(bool isActive);

  ConversationDto userId(String? userId);

  ConversationDto messages(List<MessageDto>? messages);

  ConversationDto isMobile(bool? isMobile);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationDto call({
    String id,
    DateTime createdAt,
    DateTime updatedAt,
    bool isActive,
    String? userId,
    List<MessageDto>? messages,
    bool? isMobile,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationDto.copyWith(...)` or call `instanceOfConversationDto.copyWith.fieldName(value)` for a single field.
class _$ConversationDtoCWProxyImpl implements _$ConversationDtoCWProxy {
  const _$ConversationDtoCWProxyImpl(this._value);

  final ConversationDto _value;

  @override
  ConversationDto id(String id) => call(id: id);

  @override
  ConversationDto createdAt(DateTime createdAt) => call(createdAt: createdAt);

  @override
  ConversationDto updatedAt(DateTime updatedAt) => call(updatedAt: updatedAt);

  @override
  ConversationDto isActive(bool isActive) => call(isActive: isActive);

  @override
  ConversationDto userId(String? userId) => call(userId: userId);

  @override
  ConversationDto messages(List<MessageDto>? messages) =>
      call(messages: messages);

  @override
  ConversationDto isMobile(bool? isMobile) => call(isMobile: isMobile);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationDto call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? messages = const $CopyWithPlaceholder(),
    Object? isMobile = const $CopyWithPlaceholder(),
  }) {
    return ConversationDto(
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
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      messages: messages == const $CopyWithPlaceholder()
          ? _value.messages
          // ignore: cast_nullable_to_non_nullable
          : messages as List<MessageDto>?,
      isMobile: isMobile == const $CopyWithPlaceholder()
          ? _value.isMobile
          // ignore: cast_nullable_to_non_nullable
          : isMobile as bool?,
    );
  }
}

extension $ConversationDtoCopyWith on ConversationDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationDto.copyWith(...)` or `instanceOfConversationDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationDtoCWProxy get copyWith => _$ConversationDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationDto _$ConversationDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConversationDto', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'createdAt', 'updatedAt', 'isActive'],
  );
  final val = ConversationDto(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    userId: $checkedConvert('userId', (v) => v as String?),
    messages: $checkedConvert(
      'messages',
      (v) => (v as List<dynamic>?)
          ?.map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    isMobile: $checkedConvert('isMobile', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$ConversationDtoToJson(ConversationDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'isActive': instance.isActive,
      'userId': ?instance.userId,
      'messages': ?instance.messages?.map((e) => e.toJson()).toList(),
      'isMobile': ?instance.isMobile,
    };
