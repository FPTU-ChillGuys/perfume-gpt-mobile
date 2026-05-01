//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/message_response_message.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MessageResponse {
  /// Returns a new [MessageResponse] instance.
  MessageResponse({

    required  this.sender,

    required  this.message,

    required  this.createdAt,
  });

      /// Người gửi tin nhắn (user hoặc assistant)
  @JsonKey(
    
    name: r'sender',
    required: true,
    includeIfNull: false,
  )


  final MessageResponseSenderEnum sender;



  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final MessageResponseMessage message;



      /// Ngày tạo
  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MessageResponse &&
      other.sender == sender &&
      other.message == message &&
      other.createdAt == createdAt;

    @override
    int get hashCode =>
        sender.hashCode +
        message.hashCode +
        createdAt.hashCode;

  factory MessageResponse.fromJson(Map<String, dynamic> json) => _$MessageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MessageResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Người gửi tin nhắn (user hoặc assistant)
enum MessageResponseSenderEnum {
    /// Người gửi tin nhắn (user hoặc assistant)
@JsonValue(r'user')
user(r'user'),
    /// Người gửi tin nhắn (user hoặc assistant)
@JsonValue(r'assistant')
assistant(r'assistant');

const MessageResponseSenderEnum(this.value);

final String value;

@override
String toString() => value;
}


