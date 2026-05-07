//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'system_policy_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SystemPolicyResponse {
  /// Returns a new [SystemPolicyResponse] instance.
  SystemPolicyResponse({
    required this.policyCode,

    required this.title,

    required this.htmlContent,

    this.lastUpdated,
  });

  @JsonKey(name: r'policyCode', required: true, includeIfNull: false)
  final String policyCode;

  @JsonKey(name: r'title', required: true, includeIfNull: false)
  final String title;

  @JsonKey(name: r'htmlContent', required: true, includeIfNull: false)
  final String htmlContent;

  @JsonKey(name: r'lastUpdated', required: false, includeIfNull: false)
  final DateTime? lastUpdated;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SystemPolicyResponse &&
          other.policyCode == policyCode &&
          other.title == title &&
          other.htmlContent == htmlContent &&
          other.lastUpdated == lastUpdated;

  @override
  int get hashCode =>
      policyCode.hashCode +
      title.hashCode +
      htmlContent.hashCode +
      lastUpdated.hashCode;

  factory SystemPolicyResponse.fromJson(Map<String, dynamic> json) =>
      _$SystemPolicyResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SystemPolicyResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
