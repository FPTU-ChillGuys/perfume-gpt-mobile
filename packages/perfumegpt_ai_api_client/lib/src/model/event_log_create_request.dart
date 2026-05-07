//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_log_create_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EventLogCreateRequest {
  /// Returns a new [EventLogCreateRequest] instance.
  EventLogCreateRequest({
    this.userId,

    required this.eventType,

    required this.entityType,

    this.entityId,

    this.contentText,

    this.metadata,
  });

  /// ID người dùng
  @JsonKey(name: r'userId', required: false, includeIfNull: false)
  final String? userId;

  /// Loại event
  @JsonKey(name: r'eventType', required: true, includeIfNull: false)
  final EventLogCreateRequestEventTypeEnum eventType;

  /// Loại thực thể
  @JsonKey(name: r'entityType', required: true, includeIfNull: false)
  final EventLogCreateRequestEntityTypeEnum entityType;

  /// ID thực thể liên quan
  @JsonKey(name: r'entityId', required: false, includeIfNull: false)
  final String? entityId;

  /// Text payload cho message/search
  @JsonKey(name: r'contentText', required: false, includeIfNull: false)
  final String? contentText;

  /// Metadata JSONB cho survey/extra
  @JsonKey(name: r'metadata', required: false, includeIfNull: false)
  final Object? metadata;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EventLogCreateRequest &&
          other.userId == userId &&
          other.eventType == eventType &&
          other.entityType == entityType &&
          other.entityId == entityId &&
          other.contentText == contentText &&
          other.metadata == metadata;

  @override
  int get hashCode =>
      (userId == null ? 0 : userId.hashCode) +
      eventType.hashCode +
      entityType.hashCode +
      (entityId == null ? 0 : entityId.hashCode) +
      (contentText == null ? 0 : contentText.hashCode) +
      (metadata == null ? 0 : metadata.hashCode);

  factory EventLogCreateRequest.fromJson(Map<String, dynamic> json) =>
      _$EventLogCreateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$EventLogCreateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Loại event
enum EventLogCreateRequestEventTypeEnum {
  /// Loại event
  @JsonValue(r'message')
  message(r'message'),

  /// Loại event
  @JsonValue(r'search')
  search(r'search'),

  /// Loại event
  @JsonValue(r'survey')
  survey(r'survey'),

  /// Loại event
  @JsonValue(r'product')
  product(r'product');

  const EventLogCreateRequestEventTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}

/// Loại thực thể
enum EventLogCreateRequestEntityTypeEnum {
  /// Loại thực thể
  @JsonValue(r'conversation')
  conversation(r'conversation'),

  /// Loại thực thể
  @JsonValue(r'search')
  search(r'search'),

  /// Loại thực thể
  @JsonValue(r'survey')
  survey(r'survey'),

  /// Loại thực thể
  @JsonValue(r'product')
  product(r'product');

  const EventLogCreateRequestEntityTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
