// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_list_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NotificationListItemResponseCWProxy {
  NotificationListItemResponse id(String? id);

  NotificationListItemResponse userId(String? userId);

  NotificationListItemResponse targetRole(String? targetRole);

  NotificationListItemResponse title(String? title);

  NotificationListItemResponse message(String? message);

  NotificationListItemResponse type(NotificationType? type);

  NotificationListItemResponse referenceId(String? referenceId);

  NotificationListItemResponse referenceType(
    NotifiReferecneType? referenceType,
  );

  NotificationListItemResponse metadataJson(String? metadataJson);

  NotificationListItemResponse isRead(bool? isRead);

  NotificationListItemResponse createdAt(DateTime? createdAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `NotificationListItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// NotificationListItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  NotificationListItemResponse call({
    String? id,
    String? userId,
    String? targetRole,
    String? title,
    String? message,
    NotificationType? type,
    String? referenceId,
    NotifiReferecneType? referenceType,
    String? metadataJson,
    bool? isRead,
    DateTime? createdAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfNotificationListItemResponse.copyWith(...)` or call `instanceOfNotificationListItemResponse.copyWith.fieldName(value)` for a single field.
class _$NotificationListItemResponseCWProxyImpl
    implements _$NotificationListItemResponseCWProxy {
  const _$NotificationListItemResponseCWProxyImpl(this._value);

  final NotificationListItemResponse _value;

  @override
  NotificationListItemResponse id(String? id) => call(id: id);

  @override
  NotificationListItemResponse userId(String? userId) => call(userId: userId);

  @override
  NotificationListItemResponse targetRole(String? targetRole) =>
      call(targetRole: targetRole);

  @override
  NotificationListItemResponse title(String? title) => call(title: title);

  @override
  NotificationListItemResponse message(String? message) =>
      call(message: message);

  @override
  NotificationListItemResponse type(NotificationType? type) => call(type: type);

  @override
  NotificationListItemResponse referenceId(String? referenceId) =>
      call(referenceId: referenceId);

  @override
  NotificationListItemResponse referenceType(
    NotifiReferecneType? referenceType,
  ) => call(referenceType: referenceType);

  @override
  NotificationListItemResponse metadataJson(String? metadataJson) =>
      call(metadataJson: metadataJson);

  @override
  NotificationListItemResponse isRead(bool? isRead) => call(isRead: isRead);

  @override
  NotificationListItemResponse createdAt(DateTime? createdAt) =>
      call(createdAt: createdAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `NotificationListItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// NotificationListItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  NotificationListItemResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? targetRole = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? referenceId = const $CopyWithPlaceholder(),
    Object? referenceType = const $CopyWithPlaceholder(),
    Object? metadataJson = const $CopyWithPlaceholder(),
    Object? isRead = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return NotificationListItemResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      targetRole: targetRole == const $CopyWithPlaceholder()
          ? _value.targetRole
          // ignore: cast_nullable_to_non_nullable
          : targetRole as String?,
      title: title == const $CopyWithPlaceholder()
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as NotificationType?,
      referenceId: referenceId == const $CopyWithPlaceholder()
          ? _value.referenceId
          // ignore: cast_nullable_to_non_nullable
          : referenceId as String?,
      referenceType: referenceType == const $CopyWithPlaceholder()
          ? _value.referenceType
          // ignore: cast_nullable_to_non_nullable
          : referenceType as NotifiReferecneType?,
      metadataJson: metadataJson == const $CopyWithPlaceholder()
          ? _value.metadataJson
          // ignore: cast_nullable_to_non_nullable
          : metadataJson as String?,
      isRead: isRead == const $CopyWithPlaceholder()
          ? _value.isRead
          // ignore: cast_nullable_to_non_nullable
          : isRead as bool?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
    );
  }
}

extension $NotificationListItemResponseCopyWith
    on NotificationListItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfNotificationListItemResponse.copyWith(...)` or `instanceOfNotificationListItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NotificationListItemResponseCWProxy get copyWith =>
      _$NotificationListItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationListItemResponse _$NotificationListItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('NotificationListItemResponse', json, ($checkedConvert) {
  final val = NotificationListItemResponse(
    id: $checkedConvert('id', (v) => v as String?),
    userId: $checkedConvert('userId', (v) => v as String?),
    targetRole: $checkedConvert('targetRole', (v) => v as String?),
    title: $checkedConvert('title', (v) => v as String?),
    message: $checkedConvert('message', (v) => v as String?),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$NotificationTypeEnumMap, v),
    ),
    referenceId: $checkedConvert('referenceId', (v) => v as String?),
    referenceType: $checkedConvert(
      'referenceType',
      (v) => $enumDecodeNullable(_$NotifiReferecneTypeEnumMap, v),
    ),
    metadataJson: $checkedConvert('metadataJson', (v) => v as String?),
    isRead: $checkedConvert('isRead', (v) => v as bool?),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$NotificationListItemResponseToJson(
  NotificationListItemResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'userId': ?instance.userId,
  'targetRole': ?instance.targetRole,
  'title': ?instance.title,
  'message': ?instance.message,
  'type': ?_$NotificationTypeEnumMap[instance.type],
  'referenceId': ?instance.referenceId,
  'referenceType': ?_$NotifiReferecneTypeEnumMap[instance.referenceType],
  'metadataJson': ?instance.metadataJson,
  'isRead': ?instance.isRead,
  'createdAt': ?instance.createdAt?.toIso8601String(),
};

const _$NotificationTypeEnumMap = {
  NotificationType.info: 'Info',
  NotificationType.warning: 'Warning',
  NotificationType.error: 'Error',
  NotificationType.success: 'Success',
  NotificationType.promotional: 'Promotional',
};

const _$NotifiReferecneTypeEnumMap = {
  NotifiReferecneType.order: 'Order',
  NotifiReferecneType.orderCancelRequest: 'OrderCancelRequest',
  NotifiReferecneType.orderReturnRequest: 'OrderReturnRequest',
  NotifiReferecneType.importTicket: 'ImportTicket',
  NotifiReferecneType.adjustment: 'Adjustment',
};
