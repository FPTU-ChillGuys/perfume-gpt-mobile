//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'survey_attribute_type_info.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SurveyAttributeTypeInfo {
  /// Returns a new [SurveyAttributeTypeInfo] instance.
  SurveyAttributeTypeInfo({
    required this.type,

    required this.label,

    required this.description,
  });

  @JsonKey(name: r'type', required: true, includeIfNull: false)
  final SurveyAttributeTypeInfoTypeEnum type;

  @JsonKey(name: r'label', required: true, includeIfNull: false)
  final String label;

  @JsonKey(name: r'description', required: true, includeIfNull: false)
  final String description;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyAttributeTypeInfo &&
          other.type == type &&
          other.label == label &&
          other.description == description;

  @override
  int get hashCode => type.hashCode + label.hashCode + description.hashCode;

  factory SurveyAttributeTypeInfo.fromJson(Map<String, dynamic> json) =>
      _$SurveyAttributeTypeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$SurveyAttributeTypeInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum SurveyAttributeTypeInfoTypeEnum {
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

  const SurveyAttributeTypeInfoTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
