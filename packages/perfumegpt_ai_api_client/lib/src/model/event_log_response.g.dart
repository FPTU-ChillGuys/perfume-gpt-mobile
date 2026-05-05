// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_log_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventLogResponseCWProxy {
  EventLogResponse userId(String? userId);

  EventLogResponse userName(String? userName);

  EventLogResponse eventType(EventLogResponseEventTypeEnum eventType);

  EventLogResponse entityType(EventLogResponseEntityTypeEnum entityType);

  EventLogResponse entityId(String? entityId);

  EventLogResponse contentText(String? contentText);

  EventLogResponse metadata(Object? metadata);

  EventLogResponse createdAt(DateTime createdAt);

  EventLogResponse updatedAt(DateTime updatedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLogResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLogResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLogResponse call({
    String? userId,
    String? userName,
    EventLogResponseEventTypeEnum eventType,
    EventLogResponseEntityTypeEnum entityType,
    String? entityId,
    String? contentText,
    Object? metadata,
    DateTime createdAt,
    DateTime updatedAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfEventLogResponse.copyWith(...)` or call `instanceOfEventLogResponse.copyWith.fieldName(value)` for a single field.
class _$EventLogResponseCWProxyImpl implements _$EventLogResponseCWProxy {
  const _$EventLogResponseCWProxyImpl(this._value);

  final EventLogResponse _value;

  @override
  EventLogResponse userId(String? userId) => call(userId: userId);

  @override
  EventLogResponse userName(String? userName) => call(userName: userName);

  @override
  EventLogResponse eventType(EventLogResponseEventTypeEnum eventType) =>
      call(eventType: eventType);

  @override
  EventLogResponse entityType(EventLogResponseEntityTypeEnum entityType) =>
      call(entityType: entityType);

  @override
  EventLogResponse entityId(String? entityId) => call(entityId: entityId);

  @override
  EventLogResponse contentText(String? contentText) =>
      call(contentText: contentText);

  @override
  EventLogResponse metadata(Object? metadata) => call(metadata: metadata);

  @override
  EventLogResponse createdAt(DateTime createdAt) => call(createdAt: createdAt);

  @override
  EventLogResponse updatedAt(DateTime updatedAt) => call(updatedAt: updatedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLogResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLogResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLogResponse call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? userName = const $CopyWithPlaceholder(),
    Object? eventType = const $CopyWithPlaceholder(),
    Object? entityType = const $CopyWithPlaceholder(),
    Object? entityId = const $CopyWithPlaceholder(),
    Object? contentText = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return EventLogResponse(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      userName: userName == const $CopyWithPlaceholder()
          ? _value.userName
          // ignore: cast_nullable_to_non_nullable
          : userName as String?,
      eventType: eventType == const $CopyWithPlaceholder() || eventType == null
          ? _value.eventType
          // ignore: cast_nullable_to_non_nullable
          : eventType as EventLogResponseEventTypeEnum,
      entityType:
          entityType == const $CopyWithPlaceholder() || entityType == null
          ? _value.entityType
          // ignore: cast_nullable_to_non_nullable
          : entityType as EventLogResponseEntityTypeEnum,
      entityId: entityId == const $CopyWithPlaceholder()
          ? _value.entityId
          // ignore: cast_nullable_to_non_nullable
          : entityId as String?,
      contentText: contentText == const $CopyWithPlaceholder()
          ? _value.contentText
          // ignore: cast_nullable_to_non_nullable
          : contentText as String?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as Object?,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
    );
  }
}

extension $EventLogResponseCopyWith on EventLogResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfEventLogResponse.copyWith(...)` or `instanceOfEventLogResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventLogResponseCWProxy get copyWith => _$EventLogResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventLogResponse _$EventLogResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EventLogResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'userId',
      'eventType',
      'entityType',
      'entityId',
      'contentText',
      'metadata',
      'createdAt',
      'updatedAt',
    ],
  );
  final val = EventLogResponse(
    userId: $checkedConvert('userId', (v) => v as String?),
    userName: $checkedConvert('userName', (v) => v as String? ?? 'Khách'),
    eventType: $checkedConvert(
      'eventType',
      (v) => $enumDecode(_$EventLogResponseEventTypeEnumEnumMap, v),
    ),
    entityType: $checkedConvert(
      'entityType',
      (v) => $enumDecode(_$EventLogResponseEntityTypeEnumEnumMap, v),
    ),
    entityId: $checkedConvert('entityId', (v) => v as String?),
    contentText: $checkedConvert('contentText', (v) => v as String?),
    metadata: $checkedConvert('metadata', (v) => v),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
  );
  return val;
});

Map<String, dynamic> _$EventLogResponseToJson(
  EventLogResponse instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'userName': ?instance.userName,
  'eventType': _$EventLogResponseEventTypeEnumEnumMap[instance.eventType]!,
  'entityType': _$EventLogResponseEntityTypeEnumEnumMap[instance.entityType]!,
  'entityId': instance.entityId,
  'contentText': instance.contentText,
  'metadata': instance.metadata,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

const _$EventLogResponseEventTypeEnumEnumMap = {
  EventLogResponseEventTypeEnum.message: 'message',
  EventLogResponseEventTypeEnum.search: 'search',
  EventLogResponseEventTypeEnum.survey: 'survey',
  EventLogResponseEventTypeEnum.product: 'product',
};

const _$EventLogResponseEntityTypeEnumEnumMap = {
  EventLogResponseEntityTypeEnum.conversation: 'conversation',
  EventLogResponseEntityTypeEnum.search: 'search',
  EventLogResponseEntityTypeEnum.survey: 'survey',
  EventLogResponseEntityTypeEnum.product: 'product',
};
