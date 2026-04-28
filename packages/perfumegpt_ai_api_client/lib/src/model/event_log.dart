//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'event_log.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EventLog {
  /// Returns a new [EventLog] instance.
  EventLog({

    required  this.id,

    required  this.createdAt,

    required  this.updatedAt,

    required  this.isActive,

    required  this.userId,

    required  this.eventType,

    required  this.entityType,

    required  this.entityId,

    required  this.contentText,

    required  this.metadata,
  });

      /// ID duy nhất (UUID)
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Ngày tạo bản ghi
  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;



      /// Ngày cập nhật gần nhất
  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;



      /// Trạng thái hoạt động
  @JsonKey(
    
    name: r'isActive',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;



      /// ID người dùng (nullable cho anonymous/system)
  @JsonKey(
    
    name: r'userId',
    required: true,
    includeIfNull: true,
  )


  final String? userId;



      /// Loại sự kiện log
  @JsonKey(
    
    name: r'eventType',
    required: true,
    includeIfNull: false,
  )


  final EventLogEventTypeEnum eventType;



      /// Loại thực thể liên quan
  @JsonKey(
    
    name: r'entityType',
    required: true,
    includeIfNull: false,
  )


  final EventLogEntityTypeEnum entityType;



      /// ID thực thể liên quan (nullable)
  @JsonKey(
    
    name: r'entityId',
    required: true,
    includeIfNull: true,
  )


  final String? entityId;



      /// Nội dung text cho message/search
  @JsonKey(
    
    name: r'contentText',
    required: true,
    includeIfNull: true,
  )


  final String? contentText;



      /// Metadata dạng JSONB cho survey và dữ liệu mở rộng
  @JsonKey(
    
    name: r'metadata',
    required: true,
    includeIfNull: true,
  )


  final Object? metadata;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EventLog &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.isActive == isActive &&
      other.userId == userId &&
      other.eventType == eventType &&
      other.entityType == entityType &&
      other.entityId == entityId &&
      other.contentText == contentText &&
      other.metadata == metadata;

    @override
    int get hashCode =>
        id.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode +
        isActive.hashCode +
        (userId == null ? 0 : userId.hashCode) +
        eventType.hashCode +
        entityType.hashCode +
        (entityId == null ? 0 : entityId.hashCode) +
        (contentText == null ? 0 : contentText.hashCode) +
        (metadata == null ? 0 : metadata.hashCode);

  factory EventLog.fromJson(Map<String, dynamic> json) => _$EventLogFromJson(json);

  Map<String, dynamic> toJson() => _$EventLogToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Loại sự kiện log
enum EventLogEventTypeEnum {
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

const EventLogEventTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Loại thực thể liên quan
enum EventLogEntityTypeEnum {
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

const EventLogEntityTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


