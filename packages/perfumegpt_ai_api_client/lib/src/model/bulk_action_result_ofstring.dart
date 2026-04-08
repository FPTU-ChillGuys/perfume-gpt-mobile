//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/bulk_action_metadata.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bulk_action_result_ofstring.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BulkActionResultOfstring {
  /// Returns a new [BulkActionResultOfstring] instance.
  BulkActionResultOfstring({

    required  this.data,

     this.metadata,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: true,
  )


  final String? data;



  @JsonKey(
    
    name: r'metadata',
    required: false,
    includeIfNull: false,
  )


  final BulkActionMetadata? metadata;





    @override
    bool operator ==(Object other) => identical(this, other) || other is BulkActionResultOfstring &&
      other.data == data &&
      other.metadata == metadata;

    @override
    int get hashCode =>
        (data == null ? 0 : data.hashCode) +
        (metadata == null ? 0 : metadata.hashCode);

  factory BulkActionResultOfstring.fromJson(Map<String, dynamic> json) => _$BulkActionResultOfstringFromJson(json);

  Map<String, dynamic> toJson() => _$BulkActionResultOfstringToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

