// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_content_result.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$FileContentResultCWProxy {
  FileContentResult fileContents(String? fileContents);

  FileContentResult contentType(String? contentType);

  FileContentResult fileDownloadName(String? fileDownloadName);

  FileContentResult lastModified(DateTime? lastModified);

  FileContentResult entityTag(EntityTagHeaderValue? entityTag);

  FileContentResult enableRangeProcessing(bool? enableRangeProcessing);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FileContentResult(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FileContentResult(...).copyWith(id: 12, name: "My name")
  /// ```
  FileContentResult call({
    String? fileContents,
    String? contentType,
    String? fileDownloadName,
    DateTime? lastModified,
    EntityTagHeaderValue? entityTag,
    bool? enableRangeProcessing,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfFileContentResult.copyWith(...)` or call `instanceOfFileContentResult.copyWith.fieldName(value)` for a single field.
class _$FileContentResultCWProxyImpl implements _$FileContentResultCWProxy {
  const _$FileContentResultCWProxyImpl(this._value);

  final FileContentResult _value;

  @override
  FileContentResult fileContents(String? fileContents) =>
      call(fileContents: fileContents);

  @override
  FileContentResult contentType(String? contentType) =>
      call(contentType: contentType);

  @override
  FileContentResult fileDownloadName(String? fileDownloadName) =>
      call(fileDownloadName: fileDownloadName);

  @override
  FileContentResult lastModified(DateTime? lastModified) =>
      call(lastModified: lastModified);

  @override
  FileContentResult entityTag(EntityTagHeaderValue? entityTag) =>
      call(entityTag: entityTag);

  @override
  FileContentResult enableRangeProcessing(bool? enableRangeProcessing) =>
      call(enableRangeProcessing: enableRangeProcessing);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `FileContentResult(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// FileContentResult(...).copyWith(id: 12, name: "My name")
  /// ```
  FileContentResult call({
    Object? fileContents = const $CopyWithPlaceholder(),
    Object? contentType = const $CopyWithPlaceholder(),
    Object? fileDownloadName = const $CopyWithPlaceholder(),
    Object? lastModified = const $CopyWithPlaceholder(),
    Object? entityTag = const $CopyWithPlaceholder(),
    Object? enableRangeProcessing = const $CopyWithPlaceholder(),
  }) {
    return FileContentResult(
      fileContents: fileContents == const $CopyWithPlaceholder()
          ? _value.fileContents
          // ignore: cast_nullable_to_non_nullable
          : fileContents as String?,
      contentType: contentType == const $CopyWithPlaceholder()
          ? _value.contentType
          // ignore: cast_nullable_to_non_nullable
          : contentType as String?,
      fileDownloadName: fileDownloadName == const $CopyWithPlaceholder()
          ? _value.fileDownloadName
          // ignore: cast_nullable_to_non_nullable
          : fileDownloadName as String?,
      lastModified: lastModified == const $CopyWithPlaceholder()
          ? _value.lastModified
          // ignore: cast_nullable_to_non_nullable
          : lastModified as DateTime?,
      entityTag: entityTag == const $CopyWithPlaceholder()
          ? _value.entityTag
          // ignore: cast_nullable_to_non_nullable
          : entityTag as EntityTagHeaderValue?,
      enableRangeProcessing:
          enableRangeProcessing == const $CopyWithPlaceholder()
          ? _value.enableRangeProcessing
          // ignore: cast_nullable_to_non_nullable
          : enableRangeProcessing as bool?,
    );
  }
}

extension $FileContentResultCopyWith on FileContentResult {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfFileContentResult.copyWith(...)` or `instanceOfFileContentResult.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$FileContentResultCWProxy get copyWith =>
      _$FileContentResultCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FileContentResult _$FileContentResultFromJson(Map<String, dynamic> json) =>
    $checkedCreate('FileContentResult', json, ($checkedConvert) {
      final val = FileContentResult(
        fileContents: $checkedConvert('fileContents', (v) => v as String?),
        contentType: $checkedConvert('contentType', (v) => v as String?),
        fileDownloadName: $checkedConvert(
          'fileDownloadName',
          (v) => v as String?,
        ),
        lastModified: $checkedConvert(
          'lastModified',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        entityTag: $checkedConvert(
          'entityTag',
          (v) => v == null
              ? null
              : EntityTagHeaderValue.fromJson(v as Map<String, dynamic>),
        ),
        enableRangeProcessing: $checkedConvert(
          'enableRangeProcessing',
          (v) => v as bool?,
        ),
      );
      return val;
    });

Map<String, dynamic> _$FileContentResultToJson(FileContentResult instance) =>
    <String, dynamic>{
      'fileContents': ?instance.fileContents,
      'contentType': ?instance.contentType,
      'fileDownloadName': ?instance.fileDownloadName,
      'lastModified': ?instance.lastModified?.toIso8601String(),
      'entityTag': ?instance.entityTag?.toJson(),
      'enableRangeProcessing': ?instance.enableRangeProcessing,
    };
