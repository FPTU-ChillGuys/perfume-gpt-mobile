//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/message_request_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'conversation_request_dto.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ConversationRequestDto {
  /// Returns a new [ConversationRequestDto] instance.
  ConversationRequestDto({

    required  this.id,

     this.userId,

    required  this.messages,

     this.isStaff,

     this.isMobile,
  });

      /// ID cuộc hội thoại
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// ID người dùng (tự động lấy từ token, không cần truyền)
  @JsonKey(
    
    name: r'userId',
    required: false,
    includeIfNull: false,
  )


  final String? userId;



      /// Danh sách tin nhắn
  @JsonKey(
    
    name: r'messages',
    required: true,
    includeIfNull: false,
  )


  final List<MessageRequestDto> messages;



      /// Chế độ nhân viên tư vấn tại quầy
  @JsonKey(
    
    name: r'isStaff',
    required: false,
    includeIfNull: false,
  )


  final bool? isStaff;



      /// Client là Mobile App
  @JsonKey(
    
    name: r'isMobile',
    required: false,
    includeIfNull: false,
  )


  final bool? isMobile;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ConversationRequestDto &&
      other.id == id &&
      other.userId == userId &&
      other.messages == messages &&
      other.isStaff == isStaff &&
      other.isMobile == isMobile;

    @override
    int get hashCode =>
        id.hashCode +
        userId.hashCode +
        messages.hashCode +
        isStaff.hashCode +
        isMobile.hashCode;

  factory ConversationRequestDto.fromJson(Map<String, dynamic> json) => _$ConversationRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

