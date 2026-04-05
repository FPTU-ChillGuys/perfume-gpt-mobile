//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'excel_template_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ExcelTemplateResponse {
  /// Returns a new [ExcelTemplateResponse] instance.
  ExcelTemplateResponse({
    required this.fileContent,

    required this.fileName,

    this.contentType,
  });

  @JsonKey(name: r'fileContent', required: true, includeIfNull: false)
  final String fileContent;

  @JsonKey(name: r'fileName', required: true, includeIfNull: false)
  final String fileName;

  @JsonKey(name: r'contentType', required: false, includeIfNull: false)
  final String? contentType;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExcelTemplateResponse &&
          other.fileContent == fileContent &&
          other.fileName == fileName &&
          other.contentType == contentType;

  @override
  int get hashCode =>
      fileContent.hashCode + fileName.hashCode + contentType.hashCode;

  factory ExcelTemplateResponse.fromJson(Map<String, dynamic> json) =>
      _$ExcelTemplateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ExcelTemplateResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
