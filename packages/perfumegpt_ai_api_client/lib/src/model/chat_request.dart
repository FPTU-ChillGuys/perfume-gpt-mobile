//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/chat_message_request.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'chat_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChatRequest {
  /// Returns a new [ChatRequest] instance.
  ChatRequest({
    required this.id,

    this.userId,

    required this.messages,

    this.isStaff = false,

    this.isMobile = false,
  });

  /// ID cuộc hội thoại
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// ID người dùng (optional — tự động lấy từ JWT token nếu không truyền)
  @JsonKey(name: r'userId', required: false, includeIfNull: false)
  final String? userId;

  /// Danh sách tin nhắn
  @JsonKey(name: r'messages', required: true, includeIfNull: false)
  final List<ChatMessageRequest> messages;

  /// Chế độ nhân viên tư vấn tại quầy
  @JsonKey(
    defaultValue: false,
    name: r'isStaff',
    required: false,
    includeIfNull: false,
  )
  final bool? isStaff;

  /// Client là Mobile App
  @JsonKey(
    defaultValue: false,
    name: r'isMobile',
    required: false,
    includeIfNull: false,
  )
  final bool? isMobile;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatRequest &&
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

  factory ChatRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ChatRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
