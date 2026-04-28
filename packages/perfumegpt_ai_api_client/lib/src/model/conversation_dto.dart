//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/message_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'conversation_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ConversationDto {
  /// Returns a new [ConversationDto] instance.
  ConversationDto({

    required  this.id,

    required  this.createdAt,

    required  this.updatedAt,

    required  this.isActive,

     this.userId,

     this.messages,

     this.isMobile,
  });

      /// ID bản ghi
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Ngày tạo
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



      /// ID người dùng
  @JsonKey(
    
    name: r'userId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// Danh sách tin nhắn
  @JsonKey(
    
    name: r'messages',
    required: false,
    includeIfNull: false,
  )


  final List<MessageDto>? messages;



      /// Đánh dấu response cho Mobile
  @JsonKey(
    
    name: r'isMobile',
    required: false,
    includeIfNull: false,
  )


  final bool? isMobile;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ConversationDto &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.isActive == isActive &&
      other.userId == userId &&
      other.messages == messages &&
      other.isMobile == isMobile;

    @override
    int get hashCode =>
        id.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode +
        isActive.hashCode +
        userId.hashCode +
        messages.hashCode +
        isMobile.hashCode;

  factory ConversationDto.fromJson(Map<String, dynamic> json) => _$ConversationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

