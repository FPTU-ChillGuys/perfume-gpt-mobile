//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/survey_attribute_value_item_query_fragment.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_attribute_value_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyAttributeValueItem {
  /// Returns a new [SurveyAttributeValueItem] instance.
  SurveyAttributeValueItem({
    required this.displayText,

    required this.queryFragment,
  });

  @JsonKey(name: r'displayText', required: true, includeIfNull: false)
  final String displayText;

  @JsonKey(name: r'queryFragment', required: true, includeIfNull: false)
  final SurveyAttributeValueItemQueryFragment queryFragment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyAttributeValueItem &&
          other.displayText == displayText &&
          other.queryFragment == queryFragment;

  @override
  int get hashCode => displayText.hashCode + queryFragment.hashCode;

  factory SurveyAttributeValueItem.fromJson(Map<String, dynamic> json) =>
      _$SurveyAttributeValueItemFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyAttributeValueItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
