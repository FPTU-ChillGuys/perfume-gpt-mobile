//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/temporary_media_response.dart';
import 'package:perfumegpt_api_client/src/model/bulk_action_metadata.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bulk_action_result_of_list_of_temporary_media_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BulkActionResultOfListOfTemporaryMediaResponse {
  /// Returns a new [BulkActionResultOfListOfTemporaryMediaResponse] instance.
  BulkActionResultOfListOfTemporaryMediaResponse({
    required this.data,

    this.metadata,
  });

  @JsonKey(name: r'data', required: true, includeIfNull: true)
  final List<TemporaryMediaResponse>? data;

  @JsonKey(name: r'metadata', required: false, includeIfNull: false)
  final BulkActionMetadata? metadata;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BulkActionResultOfListOfTemporaryMediaResponse &&
          other.data == data &&
          other.metadata == metadata;

  @override
  int get hashCode =>
      (data == null ? 0 : data.hashCode) +
      (metadata == null ? 0 : metadata.hashCode);

  factory BulkActionResultOfListOfTemporaryMediaResponse.fromJson(
    Map<String, dynamic> json,
  ) => _$BulkActionResultOfListOfTemporaryMediaResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$BulkActionResultOfListOfTemporaryMediaResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
