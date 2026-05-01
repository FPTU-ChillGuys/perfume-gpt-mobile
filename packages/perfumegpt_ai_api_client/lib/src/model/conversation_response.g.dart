// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ConversationResponseCWProxy {
  ConversationResponse id(String id);

  ConversationResponse userId(String userId);

  ConversationResponse messages(List<MessageResponse> messages);

  ConversationResponse updatedAt(DateTime updatedAt);

  ConversationResponse isMobile(bool? isMobile);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationResponse call({
    String id,
    String userId,
    List<MessageResponse> messages,
    DateTime updatedAt,
    bool? isMobile,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfConversationResponse.copyWith(...)` or call `instanceOfConversationResponse.copyWith.fieldName(value)` for a single field.
class _$ConversationResponseCWProxyImpl
    implements _$ConversationResponseCWProxy {
  const _$ConversationResponseCWProxyImpl(this._value);

  final ConversationResponse _value;

  @override
  ConversationResponse id(String id) => call(id: id);

  @override
  ConversationResponse userId(String userId) => call(userId: userId);

  @override
  ConversationResponse messages(List<MessageResponse> messages) =>
      call(messages: messages);

  @override
  ConversationResponse updatedAt(DateTime updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  ConversationResponse isMobile(bool? isMobile) => call(isMobile: isMobile);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ConversationResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ConversationResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ConversationResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? messages = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isMobile = const $CopyWithPlaceholder(),
  }) {
    return ConversationResponse(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      userId: userId == const $CopyWithPlaceholder() || userId == null
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String,
      messages: messages == const $CopyWithPlaceholder() || messages == null
          ? _value.messages
          // ignore: cast_nullable_to_non_nullable
          : messages as List<MessageResponse>,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      isMobile: isMobile == const $CopyWithPlaceholder()
          ? _value.isMobile
          // ignore: cast_nullable_to_non_nullable
          : isMobile as bool?,
    );
  }
}

extension $ConversationResponseCopyWith on ConversationResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfConversationResponse.copyWith(...)` or `instanceOfConversationResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ConversationResponseCWProxy get copyWith =>
      _$ConversationResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConversationResponse _$ConversationResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConversationResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['id', 'userId', 'messages', 'updatedAt'],
  );
  final val = ConversationResponse(
    id: $checkedConvert('id', (v) => v as String),
    userId: $checkedConvert('userId', (v) => v as String),
    messages: $checkedConvert(
      'messages',
      (v) => (v as List<dynamic>)
          .map((e) => MessageResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isMobile: $checkedConvert('isMobile', (v) => v as bool? ?? false),
  );
  return val;
});

Map<String, dynamic> _$ConversationResponseToJson(
  ConversationResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'messages': instance.messages.map((e) => e.toJson()).toList(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'isMobile': ?instance.isMobile,
};
