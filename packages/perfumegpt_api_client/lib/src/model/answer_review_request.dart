//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'answer_review_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AnswerReviewRequest {
  /// Returns a new [AnswerReviewRequest] instance.
  AnswerReviewRequest({required this.staffFeedbackComment});

  @JsonKey(name: r'staffFeedbackComment', required: true, includeIfNull: false)
  final String staffFeedbackComment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnswerReviewRequest &&
          other.staffFeedbackComment == staffFeedbackComment;

  @override
  int get hashCode => staffFeedbackComment.hashCode;

  factory AnswerReviewRequest.fromJson(Map<String, dynamic> json) =>
      _$AnswerReviewRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerReviewRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
