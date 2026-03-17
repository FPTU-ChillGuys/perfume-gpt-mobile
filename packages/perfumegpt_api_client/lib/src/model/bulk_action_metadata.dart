//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/bulk_operation_result.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bulk_action_metadata.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BulkActionMetadata {
  /// Returns a new [BulkActionMetadata] instance.
  BulkActionMetadata({
    this.operations,

    this.hasPartialFailure,

    this.allSucceeded,

    this.totalOperations,

    this.totalSucceeded,

    this.totalFailed,
  });

  @JsonKey(name: r'operations', required: false, includeIfNull: false)
  final List<BulkOperationResult>? operations;

  @JsonKey(name: r'hasPartialFailure', required: false, includeIfNull: false)
  final bool? hasPartialFailure;

  @JsonKey(name: r'allSucceeded', required: false, includeIfNull: false)
  final bool? allSucceeded;

  @JsonKey(name: r'totalOperations', required: false, includeIfNull: false)
  final int? totalOperations;

  @JsonKey(name: r'totalSucceeded', required: false, includeIfNull: false)
  final int? totalSucceeded;

  @JsonKey(name: r'totalFailed', required: false, includeIfNull: false)
  final int? totalFailed;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BulkActionMetadata &&
          other.operations == operations &&
          other.hasPartialFailure == hasPartialFailure &&
          other.allSucceeded == allSucceeded &&
          other.totalOperations == totalOperations &&
          other.totalSucceeded == totalSucceeded &&
          other.totalFailed == totalFailed;

  @override
  int get hashCode =>
      operations.hashCode +
      hasPartialFailure.hashCode +
      allSucceeded.hashCode +
      totalOperations.hashCode +
      totalSucceeded.hashCode +
      totalFailed.hashCode;

  factory BulkActionMetadata.fromJson(Map<String, dynamic> json) =>
      _$BulkActionMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$BulkActionMetadataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
