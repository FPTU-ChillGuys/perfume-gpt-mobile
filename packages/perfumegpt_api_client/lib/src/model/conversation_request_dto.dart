//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/message_request_dto.dart';
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





    @override
    bool operator ==(Object other) => identical(this, other) || other is ConversationRequestDto &&
      other.id == id &&
      other.userId == userId &&
      other.messages == messages;

    @override
    int get hashCode =>
        id.hashCode +
        userId.hashCode +
        messages.hashCode;

  factory ConversationRequestDto.fromJson(Map<String, dynamic> json) => _$ConversationRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ConversationRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

