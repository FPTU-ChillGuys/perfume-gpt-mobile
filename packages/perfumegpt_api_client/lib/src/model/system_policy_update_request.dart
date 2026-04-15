//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'system_policy_update_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SystemPolicyUpdateRequest {
  /// Returns a new [SystemPolicyUpdateRequest] instance.
  SystemPolicyUpdateRequest({

    required  this.title,

    required  this.htmlContent,
  });

  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false,
  )


  final String title;



  @JsonKey(
    
    name: r'htmlContent',
    required: true,
    includeIfNull: false,
  )


  final String htmlContent;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SystemPolicyUpdateRequest &&
      other.title == title &&
      other.htmlContent == htmlContent;

    @override
    int get hashCode =>
        title.hashCode +
        htmlContent.hashCode;

  factory SystemPolicyUpdateRequest.fromJson(Map<String, dynamic> json) => _$SystemPolicyUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SystemPolicyUpdateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

