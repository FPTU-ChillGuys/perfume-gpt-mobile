// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_log.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventLogCWProxy {
  EventLog id(String id);

  EventLog createdAt(DateTime createdAt);

  EventLog updatedAt(DateTime updatedAt);

  EventLog isActive(bool isActive);

  EventLog userId(String? userId);

  EventLog eventType(EventLogEventTypeEnum eventType);

  EventLog entityType(EventLogEntityTypeEnum entityType);

  EventLog entityId(String? entityId);

  EventLog contentText(String? contentText);

  EventLog metadata(Object? metadata);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLog(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLog(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLog call({
    String id,
    DateTime createdAt,
    DateTime updatedAt,
    bool isActive,
    String? userId,
    EventLogEventTypeEnum eventType,
    EventLogEntityTypeEnum entityType,
    String? entityId,
    String? contentText,
    Object? metadata,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfEventLog.copyWith(...)` or call `instanceOfEventLog.copyWith.fieldName(value)` for a single field.
class _$EventLogCWProxyImpl implements _$EventLogCWProxy {
  const _$EventLogCWProxyImpl(this._value);

  final EventLog _value;

  @override
  EventLog id(String id) => call(id: id);

  @override
  EventLog createdAt(DateTime createdAt) => call(createdAt: createdAt);

  @override
  EventLog updatedAt(DateTime updatedAt) => call(updatedAt: updatedAt);

  @override
  EventLog isActive(bool isActive) => call(isActive: isActive);

  @override
  EventLog userId(String? userId) => call(userId: userId);

  @override
  EventLog eventType(EventLogEventTypeEnum eventType) =>
      call(eventType: eventType);

  @override
  EventLog entityType(EventLogEntityTypeEnum entityType) =>
      call(entityType: entityType);

  @override
  EventLog entityId(String? entityId) => call(entityId: entityId);

  @override
  EventLog contentText(String? contentText) => call(contentText: contentText);

  @override
  EventLog metadata(Object? metadata) => call(metadata: metadata);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLog(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLog(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLog call({
    Object? id = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? eventType = const $CopyWithPlaceholder(),
    Object? entityType = const $CopyWithPlaceholder(),
    Object? entityId = const $CopyWithPlaceholder(),
    Object? contentText = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return EventLog(
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
      eventType: eventType == const $CopyWithPlaceholder() || eventType == null
          ? _value.eventType
          // ignore: cast_nullable_to_non_nullable
          : eventType as EventLogEventTypeEnum,
      entityType:
          entityType == const $CopyWithPlaceholder() || entityType == null
          ? _value.entityType
          // ignore: cast_nullable_to_non_nullable
          : entityType as EventLogEntityTypeEnum,
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
    );
  }
}

extension $EventLogCopyWith on EventLog {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfEventLog.copyWith(...)` or `instanceOfEventLog.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventLogCWProxy get copyWith => _$EventLogCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventLog _$EventLogFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EventLog', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'createdAt',
      'updatedAt',
      'isActive',
      'userId',
      'eventType',
      'entityType',
      'entityId',
      'contentText',
      'metadata',
    ],
  );
  final val = EventLog(
    id: $checkedConvert('id', (v) => v as String),
    createdAt: $checkedConvert('createdAt', (v) => DateTime.parse(v as String)),
    updatedAt: $checkedConvert('updatedAt', (v) => DateTime.parse(v as String)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    userId: $checkedConvert('userId', (v) => v as String?),
    eventType: $checkedConvert(
      'eventType',
      (v) => $enumDecode(_$EventLogEventTypeEnumEnumMap, v),
    ),
    entityType: $checkedConvert(
      'entityType',
      (v) => $enumDecode(_$EventLogEntityTypeEnumEnumMap, v),
    ),
    entityId: $checkedConvert('entityId', (v) => v as String?),
    contentText: $checkedConvert('contentText', (v) => v as String?),
    metadata: $checkedConvert('metadata', (v) => v),
  );
  return val;
});

Map<String, dynamic> _$EventLogToJson(EventLog instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'isActive': instance.isActive,
  'userId': instance.userId,
  'eventType': _$EventLogEventTypeEnumEnumMap[instance.eventType]!,
  'entityType': _$EventLogEntityTypeEnumEnumMap[instance.entityType]!,
  'entityId': instance.entityId,
  'contentText': instance.contentText,
  'metadata': instance.metadata,
};

const _$EventLogEventTypeEnumEnumMap = {
  EventLogEventTypeEnum.message: 'message',
  EventLogEventTypeEnum.search: 'search',
  EventLogEventTypeEnum.survey: 'survey',
  EventLogEventTypeEnum.product: 'product',
};

const _$EventLogEntityTypeEnumEnumMap = {
  EventLogEntityTypeEnum.conversation: 'conversation',
  EventLogEntityTypeEnum.search: 'search',
  EventLogEntityTypeEnum.survey: 'survey',
  EventLogEntityTypeEnum.product: 'product',
};
