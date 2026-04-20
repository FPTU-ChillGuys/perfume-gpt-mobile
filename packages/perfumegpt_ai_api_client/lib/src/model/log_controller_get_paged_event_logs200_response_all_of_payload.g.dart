// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_controller_get_paged_event_logs200_response_all_of_payload.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LogControllerGetPagedEventLogs200ResponseAllOfPayloadCWProxy {
  LogControllerGetPagedEventLogs200ResponseAllOfPayload items(
    List<EventLog> items,
  );

  LogControllerGetPagedEventLogs200ResponseAllOfPayload pageNumber(
    num pageNumber,
  );

  LogControllerGetPagedEventLogs200ResponseAllOfPayload pageSize(num pageSize);

  LogControllerGetPagedEventLogs200ResponseAllOfPayload totalCount(
    num totalCount,
  );

  LogControllerGetPagedEventLogs200ResponseAllOfPayload totalPages(
    num totalPages,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetPagedEventLogs200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetPagedEventLogs200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetPagedEventLogs200ResponseAllOfPayload call({
    List<EventLog> items,
    num pageNumber,
    num pageSize,
    num totalCount,
    num totalPages,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLogControllerGetPagedEventLogs200ResponseAllOfPayload.copyWith(...)` or call `instanceOfLogControllerGetPagedEventLogs200ResponseAllOfPayload.copyWith.fieldName(value)` for a single field.
class _$LogControllerGetPagedEventLogs200ResponseAllOfPayloadCWProxyImpl
    implements _$LogControllerGetPagedEventLogs200ResponseAllOfPayloadCWProxy {
  const _$LogControllerGetPagedEventLogs200ResponseAllOfPayloadCWProxyImpl(
    this._value,
  );

  final LogControllerGetPagedEventLogs200ResponseAllOfPayload _value;

  @override
  LogControllerGetPagedEventLogs200ResponseAllOfPayload items(
    List<EventLog> items,
  ) => call(items: items);

  @override
  LogControllerGetPagedEventLogs200ResponseAllOfPayload pageNumber(
    num pageNumber,
  ) => call(pageNumber: pageNumber);

  @override
  LogControllerGetPagedEventLogs200ResponseAllOfPayload pageSize(
    num pageSize,
  ) => call(pageSize: pageSize);

  @override
  LogControllerGetPagedEventLogs200ResponseAllOfPayload totalCount(
    num totalCount,
  ) => call(totalCount: totalCount);

  @override
  LogControllerGetPagedEventLogs200ResponseAllOfPayload totalPages(
    num totalPages,
  ) => call(totalPages: totalPages);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LogControllerGetPagedEventLogs200ResponseAllOfPayload(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LogControllerGetPagedEventLogs200ResponseAllOfPayload(...).copyWith(id: 12, name: "My name")
  /// ```
  LogControllerGetPagedEventLogs200ResponseAllOfPayload call({
    Object? items = const $CopyWithPlaceholder(),
    Object? pageNumber = const $CopyWithPlaceholder(),
    Object? pageSize = const $CopyWithPlaceholder(),
    Object? totalCount = const $CopyWithPlaceholder(),
    Object? totalPages = const $CopyWithPlaceholder(),
  }) {
    return LogControllerGetPagedEventLogs200ResponseAllOfPayload(
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

extension $LogControllerGetPagedEventLogs200ResponseAllOfPayloadCopyWith
    on LogControllerGetPagedEventLogs200ResponseAllOfPayload {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLogControllerGetPagedEventLogs200ResponseAllOfPayload.copyWith(...)` or `instanceOfLogControllerGetPagedEventLogs200ResponseAllOfPayload.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LogControllerGetPagedEventLogs200ResponseAllOfPayloadCWProxy get copyWith =>
      _$LogControllerGetPagedEventLogs200ResponseAllOfPayloadCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogControllerGetPagedEventLogs200ResponseAllOfPayload
_$LogControllerGetPagedEventLogs200ResponseAllOfPayloadFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'LogControllerGetPagedEventLogs200ResponseAllOfPayload',
  json,
  ($checkedConvert) {
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
    final val = LogControllerGetPagedEventLogs200ResponseAllOfPayload(
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
  },
);

Map<String, dynamic>
_$LogControllerGetPagedEventLogs200ResponseAllOfPayloadToJson(
  LogControllerGetPagedEventLogs200ResponseAllOfPayload instance,
) => <String, dynamic>{
  'items': instance.items.map((e) => e.toJson()).toList(),
  'pageNumber': instance.pageNumber,
  'pageSize': instance.pageSize,
  'totalCount': instance.totalCount,
  'totalPages': instance.totalPages,
};
