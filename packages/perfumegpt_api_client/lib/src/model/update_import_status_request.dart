//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/import_status.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_import_status_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateImportStatusRequest {
  /// Returns a new [UpdateImportStatusRequest] instance.
  UpdateImportStatusRequest({

     this.status,
  });

  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
  )


  final ImportStatus? status;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateImportStatusRequest &&
      other.status == status;

    @override
    int get hashCode =>
        status.hashCode;

  factory UpdateImportStatusRequest.fromJson(Map<String, dynamic> json) => _$UpdateImportStatusRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateImportStatusRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

