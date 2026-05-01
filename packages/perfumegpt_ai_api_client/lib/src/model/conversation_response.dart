//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/message_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'conversation_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ConversationResponse {
  /// Returns a new [ConversationResponse] instance.
  ConversationResponse({

    required  this.id,

    required  this.userId,

    required  this.messages,

    required  this.updatedAt,

     this.isMobile = false,
  });

      /// ID cuộc hội thoại
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// ID người dùng
  @JsonKey(
    
    name: r'userId',
    required: true,
    includeIfNull: false,
  )


  final String userId;



      /// Danh sách tin nhắn
  @JsonKey(
    
    name: r'messages',
    required: true,
    includeIfNull: false,
  )


  final List<MessageResponse> messages;



      /// Ngày cập nhật
  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;



      /// Đánh dấu response cho Mobile
  @JsonKey(
    defaultValue: false,
    name: r'isMobile',
    required: false,
    includeIfNull: false,
  )


  final bool? isMobile;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ConversationResponse &&
      other.id == id &&
      other.userId == userId &&
      other.messages == messages &&
      other.updatedAt == updatedAt &&
      other.isMobile == isMobile;

    @override
    int get hashCode =>
        id.hashCode +
        userId.hashCode +
        messages.hashCode +
        updatedAt.hashCode +
        isMobile.hashCode;

  factory ConversationResponse.fromJson(Map<String, dynamic> json) => _$ConversationResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

