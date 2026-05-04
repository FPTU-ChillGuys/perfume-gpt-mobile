//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_message.dart';
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_product.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mobile_survey_response_data.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MobileSurveyResponseData {
  /// Returns a new [MobileSurveyResponseData] instance.
  MobileSurveyResponseData({

    required  this.messages,

    required  this.products,
  });

      /// Danh sách tin nhắn và sản phẩm
  @JsonKey(
    
    name: r'messages',
    required: true,
    includeIfNull: false,
  )


  final List<MobileSurveyMessage> messages;



      /// Danh sách tất cả sản phẩm (đã gộp)
  @JsonKey(
    
    name: r'products',
    required: true,
    includeIfNull: false,
  )


  final List<MobileSurveyProduct> products;





    @override
    bool operator ==(Object other) => identical(this, other) || other is MobileSurveyResponseData &&
      other.messages == messages &&
      other.products == products;

    @override
    int get hashCode =>
        messages.hashCode +
        products.hashCode;

  factory MobileSurveyResponseData.fromJson(Map<String, dynamic> json) => _$MobileSurveyResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$MobileSurveyResponseDataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

