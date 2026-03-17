//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/bulk_action_error.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bulk_operation_result.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BulkOperationResult {
  /// Returns a new [BulkOperationResult] instance.
  BulkOperationResult({
    this.operationName,

    this.succeededCount,

    this.failedCount,

    this.errors,

    this.totalProcessed,

    this.hasError,
  });

  @JsonKey(name: r'operationName', required: false, includeIfNull: false)
  final String? operationName;

  @JsonKey(name: r'succeededCount', required: false, includeIfNull: false)
  final int? succeededCount;

  @JsonKey(name: r'failedCount', required: false, includeIfNull: false)
  final int? failedCount;

  @JsonKey(name: r'errors', required: false, includeIfNull: false)
  final List<BulkActionError>? errors;

  @JsonKey(name: r'totalProcessed', required: false, includeIfNull: false)
  final int? totalProcessed;

  @JsonKey(name: r'hasError', required: false, includeIfNull: false)
  final bool? hasError;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BulkOperationResult &&
          other.operationName == operationName &&
          other.succeededCount == succeededCount &&
          other.failedCount == failedCount &&
          other.errors == errors &&
          other.totalProcessed == totalProcessed &&
          other.hasError == hasError;

  @override
  int get hashCode =>
      operationName.hashCode +
      succeededCount.hashCode +
      failedCount.hashCode +
      errors.hashCode +
      totalProcessed.hashCode +
      hasError.hashCode;

  factory BulkOperationResult.fromJson(Map<String, dynamic> json) =>
      _$BulkOperationResultFromJson(json);

  Map<String, dynamic> toJson() => _$BulkOperationResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
