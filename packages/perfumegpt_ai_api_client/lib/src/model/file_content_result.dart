//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/entity_tag_header_value.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'file_content_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FileContentResult {
  /// Returns a new [FileContentResult] instance.
  FileContentResult({

     this.fileContents,

     this.contentType,

     this.fileDownloadName,

     this.lastModified,

     this.entityTag,

     this.enableRangeProcessing,
  });

  @JsonKey(
    
    name: r'fileContents',
    required: false,
    includeIfNull: false,
  )


  final String? fileContents;



  @JsonKey(
    
    name: r'contentType',
    required: false,
    includeIfNull: false,
  )


  final String? contentType;



  @JsonKey(
    
    name: r'fileDownloadName',
    required: false,
    includeIfNull: false,
  )


  final String? fileDownloadName;



  @JsonKey(
    
    name: r'lastModified',
    required: false,
    includeIfNull: false,
  )


  final DateTime? lastModified;



  @JsonKey(
    
    name: r'entityTag',
    required: false,
    includeIfNull: false,
  )


  final EntityTagHeaderValue? entityTag;



  @JsonKey(
    
    name: r'enableRangeProcessing',
    required: false,
    includeIfNull: false,
  )


  final bool? enableRangeProcessing;





    @override
    bool operator ==(Object other) => identical(this, other) || other is FileContentResult &&
      other.fileContents == fileContents &&
      other.contentType == contentType &&
      other.fileDownloadName == fileDownloadName &&
      other.lastModified == lastModified &&
      other.entityTag == entityTag &&
      other.enableRangeProcessing == enableRangeProcessing;

    @override
    int get hashCode =>
        fileContents.hashCode +
        (contentType == null ? 0 : contentType.hashCode) +
        (fileDownloadName == null ? 0 : fileDownloadName.hashCode) +
        (lastModified == null ? 0 : lastModified.hashCode) +
        (entityTag == null ? 0 : entityTag.hashCode) +
        enableRangeProcessing.hashCode;

  factory FileContentResult.fromJson(Map<String, dynamic> json) => _$FileContentResultFromJson(json);

  Map<String, dynamic> toJson() => _$FileContentResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

