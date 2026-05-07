//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_log_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EventLogResponse {
  /// Returns a new [EventLogResponse] instance.
  EventLogResponse({
    required this.userId,

    this.userName = 'Khách',

    required this.eventType,

    required this.entityType,

    required this.entityId,

    required this.contentText,

    required this.metadata,

    required this.createdAt,

    required this.updatedAt,
  });

  /// ID người dùng (nullable cho anonymous/system)
  @JsonKey(name: r'userId', required: true, includeIfNull: true)
  final String? userId;

  /// Tên người dùng (resolved từ DB)
  @JsonKey(
    defaultValue: 'Khách',
    name: r'userName',
    required: false,
    includeIfNull: false,
  )
  final String? userName;

  /// Loại sự kiện log
  @JsonKey(name: r'eventType', required: true, includeIfNull: false)
  final EventLogResponseEventTypeEnum eventType;

  /// Loại thực thể liên quan
  @JsonKey(name: r'entityType', required: true, includeIfNull: false)
  final EventLogResponseEntityTypeEnum entityType;

  /// ID thực thể liên quan (nullable)
  @JsonKey(name: r'entityId', required: true, includeIfNull: true)
  final String? entityId;

  /// Nội dung text cho message/search
  @JsonKey(name: r'contentText', required: true, includeIfNull: true)
  final String? contentText;

  /// Metadata dạng JSONB cho survey và dữ liệu mở rộng
  @JsonKey(name: r'metadata', required: true, includeIfNull: true)
  final Object? metadata;

  /// Ngày tạo
  @JsonKey(name: r'createdAt', required: true, includeIfNull: false)
  final DateTime createdAt;

  /// Ngày cập nhật
  @JsonKey(name: r'updatedAt', required: true, includeIfNull: false)
  final DateTime updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventLogResponse &&
          other.userId == userId &&
          other.userName == userName &&
          other.eventType == eventType &&
          other.entityType == entityType &&
          other.entityId == entityId &&
          other.contentText == contentText &&
          other.metadata == metadata &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      (userId == null ? 0 : userId.hashCode) +
      userName.hashCode +
      eventType.hashCode +
      entityType.hashCode +
      (entityId == null ? 0 : entityId.hashCode) +
      (contentText == null ? 0 : contentText.hashCode) +
      (metadata == null ? 0 : metadata.hashCode) +
      createdAt.hashCode +
      updatedAt.hashCode;

  factory EventLogResponse.fromJson(Map<String, dynamic> json) =>
      _$EventLogResponseFromJson(json);

  Map<String, dynamic> toJson() => _$EventLogResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Loại sự kiện log
enum EventLogResponseEventTypeEnum {
  /// Loại sự kiện log
  @JsonValue(r'message')
  message(r'message'),

  /// Loại sự kiện log
  @JsonValue(r'search')
  search(r'search'),

  /// Loại sự kiện log
  @JsonValue(r'survey')
  survey(r'survey'),

  /// Loại sự kiện log
  @JsonValue(r'product')
  product(r'product');

  const EventLogResponseEventTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}

/// Loại thực thể liên quan
enum EventLogResponseEntityTypeEnum {
  /// Loại thực thể liên quan
  @JsonValue(r'conversation')
  conversation(r'conversation'),

  /// Loại thực thể liên quan
  @JsonValue(r'search')
  search(r'search'),

  /// Loại thực thể liên quan
  @JsonValue(r'survey')
  survey(r'survey'),

  /// Loại thực thể liên quan
  @JsonValue(r'product')
  product(r'product');

  const EventLogResponseEntityTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
