//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/chat_v11_ai_message.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_v11_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatV11Response {
  /// Returns a new [ChatV11Response] instance.
  ChatV11Response({

    required  this.conversationId,

    required  this.aiMessage,
  });

      /// ID cuộc hội thoại
  @JsonKey(
    
    name: r'conversationId',
    required: true,
    includeIfNull: false,
  )


  final String conversationId;



      /// Tin nhắn AI phản hồi
  @JsonKey(
    
    name: r'aiMessage',
    required: true,
    includeIfNull: false,
  )


  final ChatV11AiMessage aiMessage;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ChatV11Response &&
      other.conversationId == conversationId &&
      other.aiMessage == aiMessage;

    @override
    int get hashCode =>
        conversationId.hashCode +
        aiMessage.hashCode;

  factory ChatV11Response.fromJson(Map<String, dynamic> json) => _$ChatV11ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ChatV11ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

