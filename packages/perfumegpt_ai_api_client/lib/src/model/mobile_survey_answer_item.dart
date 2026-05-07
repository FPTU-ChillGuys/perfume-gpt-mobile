//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mobile_survey_answer_item.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MobileSurveyAnswerItem {
  /// Returns a new [MobileSurveyAnswerItem] instance.
  MobileSurveyAnswerItem({
    required this.id,

    required this.answer,

    required this.displayText,
  });

  /// ID câu trả lời
  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  /// Nội dung gốc
  @JsonKey(name: r'answer', required: true, includeIfNull: false)
  final String answer;

  /// Nội dung hiển thị đã parse
  @JsonKey(name: r'displayText', required: true, includeIfNull: false)
  final String displayText;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MobileSurveyAnswerItem &&
          other.id == id &&
          other.answer == answer &&
          other.displayText == displayText;

  @override
  int get hashCode => id.hashCode + answer.hashCode + displayText.hashCode;

  factory MobileSurveyAnswerItem.fromJson(Map<String, dynamic> json) =>
      _$MobileSurveyAnswerItemFromJson(json);

  Map<String, dynamic> toJson() => _$MobileSurveyAnswerItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
