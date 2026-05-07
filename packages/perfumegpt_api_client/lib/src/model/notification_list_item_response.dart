//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/notifi_referecne_type.dart';
import 'package:perfumegpt_api_client/src/model/notification_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notification_list_item_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NotificationListItemResponse {
  /// Returns a new [NotificationListItemResponse] instance.
  NotificationListItemResponse({
    this.id,

    this.userId,

    this.targetRole,

    this.title,

    this.message,

    this.type,

    this.referenceId,

    this.referenceType,

    this.metadataJson,

    this.isRead,

    this.createdAt,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'userId', required: false, includeIfNull: false)
  final String? userId;

  @JsonKey(name: r'targetRole', required: false, includeIfNull: false)
  final String? targetRole;

  @JsonKey(name: r'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: r'message', required: false, includeIfNull: false)
  final String? message;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final NotificationType? type;

  @JsonKey(name: r'referenceId', required: false, includeIfNull: false)
  final String? referenceId;

  @JsonKey(name: r'referenceType', required: false, includeIfNull: false)
  final NotifiReferecneType? referenceType;

  @JsonKey(name: r'metadataJson', required: false, includeIfNull: false)
  final String? metadataJson;

  @JsonKey(name: r'isRead', required: false, includeIfNull: false)
  final bool? isRead;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NotificationListItemResponse &&
          other.id == id &&
          other.userId == userId &&
          other.targetRole == targetRole &&
          other.title == title &&
          other.message == message &&
          other.type == type &&
          other.referenceId == referenceId &&
          other.referenceType == referenceType &&
          other.metadataJson == metadataJson &&
          other.isRead == isRead &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      id.hashCode +
      (userId == null ? 0 : userId.hashCode) +
      (targetRole == null ? 0 : targetRole.hashCode) +
      (title == null ? 0 : title.hashCode) +
      (message == null ? 0 : message.hashCode) +
      type.hashCode +
      (referenceId == null ? 0 : referenceId.hashCode) +
      (referenceType == null ? 0 : referenceType.hashCode) +
      (metadataJson == null ? 0 : metadataJson.hashCode) +
      isRead.hashCode +
      createdAt.hashCode;

  factory NotificationListItemResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationListItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NotificationListItemResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
