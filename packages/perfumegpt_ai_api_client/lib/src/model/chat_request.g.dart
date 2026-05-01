// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ChatRequestCWProxy {
  ChatRequest id(String id);

  ChatRequest userId(String? userId);

  ChatRequest messages(List<ChatMessageRequest> messages);

  ChatRequest isStaff(bool? isStaff);

  ChatRequest isMobile(bool? isMobile);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatRequest call({
    String id,
    String? userId,
    List<ChatMessageRequest> messages,
    bool? isStaff,
    bool? isMobile,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfChatRequest.copyWith(...)` or call `instanceOfChatRequest.copyWith.fieldName(value)` for a single field.
class _$ChatRequestCWProxyImpl implements _$ChatRequestCWProxy {
  const _$ChatRequestCWProxyImpl(this._value);

  final ChatRequest _value;

  @override
  ChatRequest id(String id) => call(id: id);

  @override
  ChatRequest userId(String? userId) => call(userId: userId);

  @override
  ChatRequest messages(List<ChatMessageRequest> messages) =>
      call(messages: messages);

  @override
  ChatRequest isStaff(bool? isStaff) => call(isStaff: isStaff);

  @override
  ChatRequest isMobile(bool? isMobile) => call(isMobile: isMobile);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ChatRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ChatRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ChatRequest call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? messages = const $CopyWithPlaceholder(),
    Object? isStaff = const $CopyWithPlaceholder(),
    Object? isMobile = const $CopyWithPlaceholder(),
  }) {
    return ChatRequest(
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
          : messages as List<ChatMessageRequest>,
      isStaff: isStaff == const $CopyWithPlaceholder()
          ? _value.isStaff
          // ignore: cast_nullable_to_non_nullable
          : isStaff as bool?,
      isMobile: isMobile == const $CopyWithPlaceholder()
          ? _value.isMobile
          // ignore: cast_nullable_to_non_nullable
          : isMobile as bool?,
    );
  }
}

extension $ChatRequestCopyWith on ChatRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfChatRequest.copyWith(...)` or `instanceOfChatRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ChatRequestCWProxy get copyWith => _$ChatRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatRequest _$ChatRequestFromJson(Map<String, dynamic> json) => $checkedCreate(
  'ChatRequest',
  json,
  ($checkedConvert) {
    $checkKeys(json, requiredKeys: const ['id', 'messages']);
    final val = ChatRequest(
      id: $checkedConvert('id', (v) => v as String),
      userId: $checkedConvert('userId', (v) => v as String?),
      messages: $checkedConvert(
        'messages',
        (v) => (v as List<dynamic>)
            .map((e) => ChatMessageRequest.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      isStaff: $checkedConvert('isStaff', (v) => v as bool? ?? false),
      isMobile: $checkedConvert('isMobile', (v) => v as bool? ?? false),
    );
    return val;
  },
);

Map<String, dynamic> _$ChatRequestToJson(ChatRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': ?instance.userId,
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'isStaff': ?instance.isStaff,
      'isMobile': ?instance.isMobile,
    };
