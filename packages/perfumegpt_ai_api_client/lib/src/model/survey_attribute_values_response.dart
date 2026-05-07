//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/survey_attribute_value_item.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_attribute_values_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyAttributeValuesResponse {
  /// Returns a new [SurveyAttributeValuesResponse] instance.
  SurveyAttributeValuesResponse({
    required this.type,

    required this.label,

    this.values,

    this.subGroups,
  });

  @JsonKey(name: r'type', required: true, includeIfNull: false)
  final SurveyAttributeValuesResponseTypeEnum type;

  @JsonKey(name: r'label', required: true, includeIfNull: false)
  final String label;

  @JsonKey(name: r'values', required: false, includeIfNull: false)
  final List<SurveyAttributeValueItem>? values;

  @JsonKey(name: r'subGroups', required: false, includeIfNull: false)
  final List<String>? subGroups;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyAttributeValuesResponse &&
          other.type == type &&
          other.label == label &&
          other.values == values &&
          other.subGroups == subGroups;

  @override
  int get hashCode =>
      type.hashCode + label.hashCode + values.hashCode + subGroups.hashCode;

  factory SurveyAttributeValuesResponse.fromJson(Map<String, dynamic> json) =>
      _$SurveyAttributeValuesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyAttributeValuesResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum SurveyAttributeValuesResponseTypeEnum {
  @JsonValue(r'gender')
  gender(r'gender'),
  @JsonValue(r'origin')
  origin(r'origin'),
  @JsonValue(r'brand')
  brand(r'brand'),
  @JsonValue(r'category')
  category(r'category'),
  @JsonValue(r'concentration')
  concentration(r'concentration'),
  @JsonValue(r'note')
  note(r'note'),
  @JsonValue(r'family')
  family(r'family'),
  @JsonValue(r'attribute')
  attribute(r'attribute'),
  @JsonValue(r'budget')
  budget(r'budget');

  const SurveyAttributeValuesResponseTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
