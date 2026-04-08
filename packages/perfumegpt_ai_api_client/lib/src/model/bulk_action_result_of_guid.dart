//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/bulk_action_metadata.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bulk_action_result_of_guid.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BulkActionResultOfGuid {
  /// Returns a new [BulkActionResultOfGuid] instance.
  BulkActionResultOfGuid({

    required  this.data,

     this.metadata,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final String data;



  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false,
  )


  final BulkActionMetadata? metadata;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BulkActionResultOfGuid &&
      other.data == data &&
      other.metadata == metadata;

    @override
    int get hashCode =>
        data.hashCode +
        (metadata == null ? 0 : metadata.hashCode);

  factory BulkActionResultOfGuid.fromJson(Map<String, dynamic> json) => _$BulkActionResultOfGuidFromJson(json);

  Map<String, dynamic> toJson() => _$BulkActionResultOfGuidToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

