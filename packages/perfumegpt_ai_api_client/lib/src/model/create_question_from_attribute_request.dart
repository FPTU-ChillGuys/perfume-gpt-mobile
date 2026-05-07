//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_question_from_attribute_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateQuestionFromAttributeRequest {
  /// Returns a new [CreateQuestionFromAttributeRequest] instance.
  CreateQuestionFromAttributeRequest({
    required this.question,

    required this.questionType,

    required this.attributeType,

    this.attributeName,

    this.selectedValues,

    this.budgetRanges,
  });

  @JsonKey(name: r'question', required: true, includeIfNull: false)
  final String question;

  @JsonKey(name: r'questionType', required: true, includeIfNull: false)
  final CreateQuestionFromAttributeRequestQuestionTypeEnum questionType;

  @JsonKey(name: r'attributeType', required: true, includeIfNull: false)
  final CreateQuestionFromAttributeRequestAttributeTypeEnum attributeType;

  @JsonKey(name: r'attributeName', required: false, includeIfNull: false)
  final String? attributeName;

  @JsonKey(name: r'selectedValues', required: false, includeIfNull: false)
  final List<String>? selectedValues;

  @JsonKey(name: r'budgetRanges', required: false, includeIfNull: false)
  final List<String>? budgetRanges;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateQuestionFromAttributeRequest &&
          other.question == question &&
          other.questionType == questionType &&
          other.attributeType == attributeType &&
          other.attributeName == attributeName &&
          other.selectedValues == selectedValues &&
          other.budgetRanges == budgetRanges;

  @override
  int get hashCode =>
      question.hashCode +
      questionType.hashCode +
      attributeType.hashCode +
      attributeName.hashCode +
      selectedValues.hashCode +
      budgetRanges.hashCode;

  factory CreateQuestionFromAttributeRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateQuestionFromAttributeRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateQuestionFromAttributeRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum CreateQuestionFromAttributeRequestQuestionTypeEnum {
  @JsonValue(r'single')
  single(r'single'),
  @JsonValue(r'multiple')
  multiple(r'multiple');

  const CreateQuestionFromAttributeRequestQuestionTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}

enum CreateQuestionFromAttributeRequestAttributeTypeEnum {
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

  const CreateQuestionFromAttributeRequestAttributeTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
