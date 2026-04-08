// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'excel_template_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ExcelTemplateResponseCWProxy {
  ExcelTemplateResponse fileContent(String fileContent);

  ExcelTemplateResponse fileName(String fileName);

  ExcelTemplateResponse contentType(String? contentType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ExcelTemplateResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ExcelTemplateResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ExcelTemplateResponse call({
    String fileContent,
    String fileName,
    String? contentType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfExcelTemplateResponse.copyWith(...)` or call `instanceOfExcelTemplateResponse.copyWith.fieldName(value)` for a single field.
class _$ExcelTemplateResponseCWProxyImpl
    implements _$ExcelTemplateResponseCWProxy {
  const _$ExcelTemplateResponseCWProxyImpl(this._value);

  final ExcelTemplateResponse _value;

  @override
  ExcelTemplateResponse fileContent(String fileContent) =>
      call(fileContent: fileContent);

  @override
  ExcelTemplateResponse fileName(String fileName) => call(fileName: fileName);

  @override
  ExcelTemplateResponse contentType(String? contentType) =>
      call(contentType: contentType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ExcelTemplateResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ExcelTemplateResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ExcelTemplateResponse call({
    Object? fileContent = const $CopyWithPlaceholder(),
    Object? fileName = const $CopyWithPlaceholder(),
    Object? contentType = const $CopyWithPlaceholder(),
  }) {
    return ExcelTemplateResponse(
      fileContent:
          fileContent == const $CopyWithPlaceholder() || fileContent == null
          ? _value.fileContent
          // ignore: cast_nullable_to_non_nullable
          : fileContent as String,
      fileName: fileName == const $CopyWithPlaceholder() || fileName == null
          ? _value.fileName
          // ignore: cast_nullable_to_non_nullable
          : fileName as String,
      contentType: contentType == const $CopyWithPlaceholder()
          ? _value.contentType
          // ignore: cast_nullable_to_non_nullable
          : contentType as String?,
    );
  }
}

extension $ExcelTemplateResponseCopyWith on ExcelTemplateResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfExcelTemplateResponse.copyWith(...)` or `instanceOfExcelTemplateResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ExcelTemplateResponseCWProxy get copyWith =>
      _$ExcelTemplateResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExcelTemplateResponse _$ExcelTemplateResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ExcelTemplateResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['fileContent', 'fileName']);
  final val = ExcelTemplateResponse(
    fileContent: $checkedConvert('fileContent', (v) => v as String),
    fileName: $checkedConvert('fileName', (v) => v as String),
    contentType: $checkedConvert('contentType', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ExcelTemplateResponseToJson(
  ExcelTemplateResponse instance,
) => <String, dynamic>{
  'fileContent': instance.fileContent,
  'fileName': instance.fileName,
  'contentType': ?instance.contentType,
};
