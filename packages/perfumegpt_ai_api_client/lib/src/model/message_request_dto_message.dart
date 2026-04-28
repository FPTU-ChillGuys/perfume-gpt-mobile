//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/product_temp_item_dto.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_card_output_item_dto.dart';
import 'package:perfumegpt_ai_api_client/src/model/conversation_output_dto.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'message_request_dto_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MessageRequestDtoMessage {
  /// Returns a new [MessageRequestDtoMessage] instance.
  MessageRequestDtoMessage({

    required  this.message,

     this.products,

     this.productTemp,

    required  this.suggestedQuestions,
  });

      /// Nội dung tin nhắn văn bản
  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;



  @JsonKey(
    
    name: r'products',
    required: false,
    includeIfNull: false,
  )


  final List<ProductCardOutputItemDto>? products;



  @JsonKey(
    
    name: r'productTemp',
    required: false,
    includeIfNull: false,
  )


  final List<ProductTempItemDto>? productTemp;



      /// Gợi ý 3-4 câu hỏi tiếp theo
  @JsonKey(
    
    name: r'suggestedQuestions',
    required: true,
    includeIfNull: false,
  )


  final List<String> suggestedQuestions;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MessageRequestDtoMessage &&
      other.message == message &&
      other.products == products &&
      other.productTemp == productTemp &&
      other.suggestedQuestions == suggestedQuestions;

    @override
    int get hashCode =>
        message.hashCode +
        (products == null ? 0 : products.hashCode) +
        (productTemp == null ? 0 : productTemp.hashCode) +
        suggestedQuestions.hashCode;

  factory MessageRequestDtoMessage.fromJson(Map<String, dynamic> json) => _$MessageRequestDtoMessageFromJson(json);

  Map<String, dynamic> toJson() => _$MessageRequestDtoMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

