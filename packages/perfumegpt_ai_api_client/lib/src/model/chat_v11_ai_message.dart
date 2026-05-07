//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_v11_ai_message.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatV11AiMessage {
  /// Returns a new [ChatV11AiMessage] instance.
  ChatV11AiMessage({
    required this.sender,

    required this.message,

    required this.createdAt,
  });

  /// Người gửi (luôn là assistant)
  @JsonKey(name: r'sender', required: true, includeIfNull: false)
  final ChatV11AiMessageSenderEnum sender;

  /// Nội dung tin nhắn AI trả lời
  @JsonKey(name: r'message', required: true, includeIfNull: false)
  final String message;

  /// Thời gian tạo message
  @JsonKey(name: r'createdAt', required: true, includeIfNull: false)
  final DateTime createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatV11AiMessage &&
          other.sender == sender &&
          other.message == message &&
          other.createdAt == createdAt;

  @override
  int get hashCode => sender.hashCode + message.hashCode + createdAt.hashCode;

  factory ChatV11AiMessage.fromJson(Map<String, dynamic> json) =>
      _$ChatV11AiMessageFromJson(json);

  Map<String, dynamic> toJson() => _$ChatV11AiMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Người gửi (luôn là assistant)
enum ChatV11AiMessageSenderEnum {
  /// Người gửi (luôn là assistant)
  @JsonValue(r'assistant')
  assistant(r'assistant');

  const ChatV11AiMessageSenderEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
