// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_log_create_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EventLogCreateRequestCWProxy {
  EventLogCreateRequest userId(String? userId);

  EventLogCreateRequest eventType(EventLogCreateRequestEventTypeEnum eventType);

  EventLogCreateRequest entityType(
    EventLogCreateRequestEntityTypeEnum entityType,
  );

  EventLogCreateRequest entityId(String? entityId);

  EventLogCreateRequest contentText(String? contentText);

  EventLogCreateRequest metadata(Object? metadata);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLogCreateRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLogCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLogCreateRequest call({
    String? userId,
    EventLogCreateRequestEventTypeEnum eventType,
    EventLogCreateRequestEntityTypeEnum entityType,
    String? entityId,
    String? contentText,
    Object? metadata,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfEventLogCreateRequest.copyWith(...)` or call `instanceOfEventLogCreateRequest.copyWith.fieldName(value)` for a single field.
class _$EventLogCreateRequestCWProxyImpl
    implements _$EventLogCreateRequestCWProxy {
  const _$EventLogCreateRequestCWProxyImpl(this._value);

  final EventLogCreateRequest _value;

  @override
  EventLogCreateRequest userId(String? userId) => call(userId: userId);

  @override
  EventLogCreateRequest eventType(
    EventLogCreateRequestEventTypeEnum eventType,
  ) => call(eventType: eventType);

  @override
  EventLogCreateRequest entityType(
    EventLogCreateRequestEntityTypeEnum entityType,
  ) => call(entityType: entityType);

  @override
  EventLogCreateRequest entityId(String? entityId) => call(entityId: entityId);

  @override
  EventLogCreateRequest contentText(String? contentText) =>
      call(contentText: contentText);

  @override
  EventLogCreateRequest metadata(Object? metadata) => call(metadata: metadata);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EventLogCreateRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EventLogCreateRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  EventLogCreateRequest call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? eventType = const $CopyWithPlaceholder(),
    Object? entityType = const $CopyWithPlaceholder(),
    Object? entityId = const $CopyWithPlaceholder(),
    Object? contentText = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return EventLogCreateRequest(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      eventType: eventType == const $CopyWithPlaceholder() || eventType == null
          ? _value.eventType
          // ignore: cast_nullable_to_non_nullable
          : eventType as EventLogCreateRequestEventTypeEnum,
      entityType:
          entityType == const $CopyWithPlaceholder() || entityType == null
          ? _value.entityType
          // ignore: cast_nullable_to_non_nullable
          : entityType as EventLogCreateRequestEntityTypeEnum,
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

extension $EventLogCreateRequestCopyWith on EventLogCreateRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfEventLogCreateRequest.copyWith(...)` or `instanceOfEventLogCreateRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EventLogCreateRequestCWProxy get copyWith =>
      _$EventLogCreateRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EventLogCreateRequest _$EventLogCreateRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EventLogCreateRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['eventType', 'entityType']);
  final val = EventLogCreateRequest(
    userId: $checkedConvert('userId', (v) => v as String?),
    eventType: $checkedConvert(
      'eventType',
      (v) => $enumDecode(_$EventLogCreateRequestEventTypeEnumEnumMap, v),
    ),
    entityType: $checkedConvert(
      'entityType',
      (v) => $enumDecode(_$EventLogCreateRequestEntityTypeEnumEnumMap, v),
    ),
    entityId: $checkedConvert('entityId', (v) => v as String?),
    contentText: $checkedConvert('contentText', (v) => v as String?),
    metadata: $checkedConvert('metadata', (v) => v),
  );
  return val;
});

Map<String, dynamic> _$EventLogCreateRequestToJson(
  EventLogCreateRequest instance,
) => <String, dynamic>{
  'userId': ?instance.userId,
  'eventType': _$EventLogCreateRequestEventTypeEnumEnumMap[instance.eventType]!,
  'entityType':
      _$EventLogCreateRequestEntityTypeEnumEnumMap[instance.entityType]!,
  'entityId': ?instance.entityId,
  'contentText': ?instance.contentText,
  'metadata': ?instance.metadata,
};

const _$EventLogCreateRequestEventTypeEnumEnumMap = {
  EventLogCreateRequestEventTypeEnum.message: 'message',
  EventLogCreateRequestEventTypeEnum.search: 'search',
  EventLogCreateRequestEventTypeEnum.survey: 'survey',
  EventLogCreateRequestEventTypeEnum.product: 'product',
};

const _$EventLogCreateRequestEntityTypeEnumEnumMap = {
  EventLogCreateRequestEntityTypeEnum.conversation: 'conversation',
  EventLogCreateRequestEntityTypeEnum.search: 'search',
  EventLogCreateRequestEntityTypeEnum.survey: 'survey',
  EventLogCreateRequestEntityTypeEnum.product: 'product',
};
