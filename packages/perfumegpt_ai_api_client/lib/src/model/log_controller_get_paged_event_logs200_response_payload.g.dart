// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_controller_get_paged_event_logs200_response_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogControllerGetPagedEventLogs200ResponsePayloadCWProxy {
  LogControllerGetPagedEventLogs200ResponsePayload items(List<EventLog> items);

  LogControllerGetPagedEventLogs200ResponsePayload pageNumber(num pageNumber);

  LogControllerGetPagedEventLogs200ResponsePayload pageSize(num pageSize);

  LogControllerGetPagedEventLogs200ResponsePayload totalCount(num totalCount);

  LogControllerGetPagedEventLogs200ResponsePayload totalPages(num totalPages);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetPagedEventLogs200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetPagedEventLogs200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetPagedEventLogs200ResponsePayload call({
    List<EventLog> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLogControllerGetPagedEventLogs200ResponsePayload.copyWith(...)` or call `instanceOfLogControllerGetPagedEventLogs200ResponsePayload.copyWith.fieldName(value)` for a single field.
class _$LogControllerGetPagedEventLogs200ResponsePayloadCWProxyImpl
    implements _$LogControllerGetPagedEventLogs200ResponsePayloadCWProxy {
  const _$LogControllerGetPagedEventLogs200ResponsePayloadCWProxyImpl(
    this._value,
  );

  final LogControllerGetPagedEventLogs200ResponsePayload _value;

  @override
  LogControllerGetPagedEventLogs200ResponsePayload items(
    List<EventLog> items,
  ) => call(items: items);

  @override
  LogControllerGetPagedEventLogs200ResponsePayload pageNumber(num pageNumber) =>
      call(pageNumber: pageNumber);

  @override
  LogControllerGetPagedEventLogs200ResponsePayload pageSize(num pageSize) =>
      call(pageSize: pageSize);

  @override
  LogControllerGetPagedEventLogs200ResponsePayload totalCount(num totalCount) =>
      call(totalCount: totalCount);

  @override
  LogControllerGetPagedEventLogs200ResponsePayload totalPages(num totalPages) =>
      call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetPagedEventLogs200ResponsePayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetPagedEventLogs200ResponsePayload(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetPagedEventLogs200ResponsePayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return LogControllerGetPagedEventLogs200ResponsePayload(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<EventLog>,
      pageNumber:
          pageNumber == const $CopyWithPlaceholder() || pageNumber == null
          ? _value.pageNumber
          // ignore: cast_nullable_to_non_nullable
          : pageNumber as num,
      pageSize: pageSize == const $CopyWithPlaceholder() || pageSize == null
          ? _value.pageSize
          // ignore: cast_nullable_to_non_nullable
          : pageSize as num,
      totalCount:
          totalCount == const $CopyWithPlaceholder() || totalCount == null
          ? _value.totalCount
          // ignore: cast_nullable_to_non_nullable
          : totalCount as num,
      totalPages:
          totalPages == const $CopyWithPlaceholder() || totalPages == null
          ? _value.totalPages
          // ignore: cast_nullable_to_non_nullable
          : totalPages as num,
    );
  }
}

extension $LogControllerGetPagedEventLogs200ResponsePayloadCopyWith
    on LogControllerGetPagedEventLogs200ResponsePayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLogControllerGetPagedEventLogs200ResponsePayload.copyWith(...)` or `instanceOfLogControllerGetPagedEventLogs200ResponsePayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LogControllerGetPagedEventLogs200ResponsePayloadCWProxy get copyWith =>
      _$LogControllerGetPagedEventLogs200ResponsePayloadCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogControllerGetPagedEventLogs200ResponsePayload
_$LogControllerGetPagedEventLogs200ResponsePayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LogControllerGetPagedEventLogs200ResponsePayload', json, (
  $checkedConvert,
) {
  $checkKeys(
    json,
    requiredKeys: const [
      'items',
      'pageNumber',
      'pageSize',
      'totalCount',
      'totalPages',
    ],
  );
  final val = LogControllerGetPagedEventLogs200ResponsePayload(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => EventLog.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    pageNumber: $checkedConvert('pageNumber', (v) => v as num),
    pageSize: $checkedConvert('pageSize', (v) => v as num),
    totalCount: $checkedConvert('totalCount', (v) => v as num),
    totalPages: $checkedConvert('totalPages', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$LogControllerGetPagedEventLogs200ResponsePayloadToJson(
  LogControllerGetPagedEventLogs200ResponsePayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
