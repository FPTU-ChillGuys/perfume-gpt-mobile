//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/product_temp_item_dto.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_card_output_item_dto.dart';
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
    required this.sender,

    required this.message,

    this.products,

    this.productTemp,

    this.suggestedQuestions,
  });

  /// Người gửi tin nhắn (user hoặc assistant)
  @JsonKey(name: r'sender', required: true, includeIfNull: false)
  final ChatMessageRequestSenderEnum sender;

  /// Nội dung tin nhắn dạng text
  @JsonKey(name: r'message', required: true, includeIfNull: false)
  final String message;

  /// Danh sách sản phẩm gợi ý
  @JsonKey(name: r'products', required: false, includeIfNull: false)
  final List<ProductCardOutputItemDto>? products;

  /// Danh sách sản phẩm tạm
  @JsonKey(name: r'productTemp', required: false, includeIfNull: false)
  final List<ProductTempItemDto>? productTemp;

  /// Gợi ý 3-4 câu hỏi tiếp theo
  @JsonKey(name: r'suggestedQuestions', required: false, includeIfNull: false)
  final List<String>? suggestedQuestions;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatMessageRequest &&
          other.sender == sender &&
          other.message == message &&
          other.products == products &&
          other.productTemp == productTemp &&
          other.suggestedQuestions == suggestedQuestions;

  @override
  int get hashCode =>
      sender.hashCode +
      message.hashCode +
      (products == null ? 0 : products.hashCode) +
      (productTemp == null ? 0 : productTemp.hashCode) +
      (suggestedQuestions == null ? 0 : suggestedQuestions.hashCode);

  factory ChatMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageRequestFromJson(json);

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
