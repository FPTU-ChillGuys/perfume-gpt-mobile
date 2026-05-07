//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/product_temp_item_dto.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_card_output_item_dto.dart';
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
    required this.sender,

    required this.message,

    this.products,

    this.productTemp,

    this.suggestedQuestions,

    required this.createdAt,
  });

  /// Người gửi tin nhắn (user hoặc assistant)
  @JsonKey(name: r'sender', required: true, includeIfNull: false)
  final MessageResponseSenderEnum sender;

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

  /// Ngày tạo
  @JsonKey(name: r'createdAt', required: true, includeIfNull: false)
  final DateTime createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MessageResponse &&
          other.sender == sender &&
          other.message == message &&
          other.products == products &&
          other.productTemp == productTemp &&
          other.suggestedQuestions == suggestedQuestions &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      sender.hashCode +
      message.hashCode +
      (products == null ? 0 : products.hashCode) +
      (productTemp == null ? 0 : productTemp.hashCode) +
      (suggestedQuestions == null ? 0 : suggestedQuestions.hashCode) +
      createdAt.hashCode;

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      _$MessageResponseFromJson(json);

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
