// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MediaResponseCWProxy {
  MediaResponse id(String? id);

  MediaResponse url(String? url);

  MediaResponse altText(String? altText);

  MediaResponse displayOrder(int? displayOrder);

  MediaResponse isPrimary(bool? isPrimary);

  MediaResponse fileSize(int? fileSize);

  MediaResponse mimeType(String? mimeType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MediaResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MediaResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  MediaResponse call({
    String? id,
    String? url,
    String? altText,
    int? displayOrder,
    bool? isPrimary,
    int? fileSize,
    String? mimeType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfMediaResponse.copyWith(...)` or call `instanceOfMediaResponse.copyWith.fieldName(value)` for a single field.
class _$MediaResponseCWProxyImpl implements _$MediaResponseCWProxy {
  const _$MediaResponseCWProxyImpl(this._value);

  final MediaResponse _value;

  @override
  MediaResponse id(String? id) => call(id: id);

  @override
  MediaResponse url(String? url) => call(url: url);

  @override
  MediaResponse altText(String? altText) => call(altText: altText);

  @override
  MediaResponse displayOrder(int? displayOrder) =>
      call(displayOrder: displayOrder);

  @override
  MediaResponse isPrimary(bool? isPrimary) => call(isPrimary: isPrimary);

  @override
  MediaResponse fileSize(int? fileSize) => call(fileSize: fileSize);

  @override
  MediaResponse mimeType(String? mimeType) => call(mimeType: mimeType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `MediaResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// MediaResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  MediaResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
    Object? altText = const $CopyWithPlaceholder(),
    Object? displayOrder = const $CopyWithPlaceholder(),
    Object? isPrimary = const $CopyWithPlaceholder(),
    Object? fileSize = const $CopyWithPlaceholder(),
    Object? mimeType = const $CopyWithPlaceholder(),
  }) {
    return MediaResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      url: url == const $CopyWithPlaceholder()
          ? _value.url
          // ignore: cast_nullable_to_non_nullable
          : url as String?,
      altText: altText == const $CopyWithPlaceholder()
          ? _value.altText
          // ignore: cast_nullable_to_non_nullable
          : altText as String?,
      displayOrder: displayOrder == const $CopyWithPlaceholder()
          ? _value.displayOrder
          // ignore: cast_nullable_to_non_nullable
          : displayOrder as int?,
      isPrimary: isPrimary == const $CopyWithPlaceholder()
          ? _value.isPrimary
          // ignore: cast_nullable_to_non_nullable
          : isPrimary as bool?,
      fileSize: fileSize == const $CopyWithPlaceholder()
          ? _value.fileSize
          // ignore: cast_nullable_to_non_nullable
          : fileSize as int?,
      mimeType: mimeType == const $CopyWithPlaceholder()
          ? _value.mimeType
          // ignore: cast_nullable_to_non_nullable
          : mimeType as String?,
    );
  }
}

extension $MediaResponseCopyWith on MediaResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfMediaResponse.copyWith(...)` or `instanceOfMediaResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MediaResponseCWProxy get copyWith => _$MediaResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaResponse _$MediaResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('MediaResponse', json, ($checkedConvert) {
      final val = MediaResponse(
        id: $checkedConvert('id', (v) => v as String?),
        url: $checkedConvert('url', (v) => v as String?),
        altText: $checkedConvert('altText', (v) => v as String?),
        displayOrder: $checkedConvert(
          'displayOrder',
          (v) => (v as num?)?.toInt(),
        ),
        isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
        fileSize: $checkedConvert('fileSize', (v) => (v as num?)?.toInt()),
        mimeType: $checkedConvert('mimeType', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$MediaResponseToJson(MediaResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'url': ?instance.url,
      'altText': ?instance.altText,
      'displayOrder': ?instance.displayOrder,
      'isPrimary': ?instance.isPrimary,
      'fileSize': ?instance.fileSize,
      'mimeType': ?instance.mimeType,
    };
