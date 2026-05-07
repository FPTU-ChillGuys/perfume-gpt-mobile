//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/reorder_question_item.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reorder_questions_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReorderQuestionsRequest {
  /// Returns a new [ReorderQuestionsRequest] instance.
  ReorderQuestionsRequest({required this.orders});

  /// Danh sách thứ tự câu hỏi
  @JsonKey(name: r'orders', required: true, includeIfNull: false)
  final List<ReorderQuestionItem> orders;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReorderQuestionsRequest && other.orders == orders;

  @override
  int get hashCode => orders.hashCode;

  factory ReorderQuestionsRequest.fromJson(Map<String, dynamic> json) =>
      _$ReorderQuestionsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReorderQuestionsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
