//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_product.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mobile_survey_message.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MobileSurveyMessage {
  /// Returns a new [MobileSurveyMessage] instance.
  MobileSurveyMessage({

    required  this.message,

    required  this.products,
  });

      /// Tin nhắn tư vấn từ AI
  @JsonKey(
    
    name: r'message',
    required: true,
    includeIfNull: false,
  )


  final String message;



      /// Danh sách sản phẩm kèm theo
  @JsonKey(
    
    name: r'products',
    required: true,
    includeIfNull: false,
  )


  final List<MobileSurveyProduct> products;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MobileSurveyMessage &&
      other.message == message &&
      other.products == products;

    @override
    int get hashCode =>
        message.hashCode +
        products.hashCode;

  factory MobileSurveyMessage.fromJson(Map<String, dynamic> json) => _$MobileSurveyMessageFromJson(json);

  Map<String, dynamic> toJson() => _$MobileSurveyMessageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

