//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_request_dto.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MessageRequestDto {
  /// Returns a new [MessageRequestDto] instance.
  MessageRequestDto({required this.sender, required this.message});

  /// Người gửi tin nhắn
  @JsonKey(name: r'sender', required: true, includeIfNull: false)
  final MessageRequestDtoSenderEnum sender;

  /// Nội dung tin nhắn
  @JsonKey(name: r'message', required: true, includeIfNull: false)
  final String message;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessageRequestDto &&
          other.sender == sender &&
          other.message == message;

  @override
  int get hashCode => sender.hashCode + message.hashCode;

  factory MessageRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MessageRequestDtoFromJson(json);

  Map<String, dynamic> toJson() => _$MessageRequestDtoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Người gửi tin nhắn
enum MessageRequestDtoSenderEnum {
  /// Người gửi tin nhắn
  @JsonValue(r'user')
  user(r'user'),

  /// Người gửi tin nhắn
  @JsonValue(r'assistant')
  assistant(r'assistant');

  const MessageRequestDtoSenderEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
