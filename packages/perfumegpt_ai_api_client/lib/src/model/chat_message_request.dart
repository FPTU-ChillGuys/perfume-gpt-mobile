//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/chat_message_request_message.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_message_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatMessageRequest {
  /// Returns a new [ChatMessageRequest] instance.
  ChatMessageRequest({

    required  this.sender,

    required  this.message,
  });

      /// Người gửi tin nhắn (user hoặc assistant)
  @JsonKey(
    
    name: r'sender',
    required: true,
    includeIfNull: false,
  )


  final ChatMessageRequestSenderEnum sender;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final ChatMessageRequestMessage message;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ChatMessageRequest &&
      other.sender == sender &&
      other.message == message;

    @override
    int get hashCode =>
        sender.hashCode +
        message.hashCode;

  factory ChatMessageRequest.fromJson(Map<String, dynamic> json) => _$ChatMessageRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatMessageRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Người gửi tin nhắn (user hoặc assistant)
enum ChatMessageRequestSenderEnum {
    /// Người gửi tin nhắn (user hoặc assistant)
@JsonValue(r'user')
user(r'user'),
    /// Người gửi tin nhắn (user hoặc assistant)
@JsonValue(r'assistant')
assistant(r'assistant');

const ChatMessageRequestSenderEnum(this.value);

final String value;

@override
String toString() => value;
}


