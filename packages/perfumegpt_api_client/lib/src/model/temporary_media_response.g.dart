// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temporary_media_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TemporaryMediaResponseCWProxy {
  TemporaryMediaResponse id(String? id);

  TemporaryMediaResponse url(String? url);

  TemporaryMediaResponse altText(String? altText);

  TemporaryMediaResponse displayOrder(int? displayOrder);

  TemporaryMediaResponse fileSize(int? fileSize);

  TemporaryMediaResponse mimeType(String? mimeType);

  TemporaryMediaResponse expiresAt(DateTime? expiresAt);

  TemporaryMediaResponse createdAt(DateTime? createdAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TemporaryMediaResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TemporaryMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  TemporaryMediaResponse call({
    String? id,
    String? url,
    String? altText,
    int? displayOrder,
    int? fileSize,
    String? mimeType,
    DateTime? expiresAt,
    DateTime? createdAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTemporaryMediaResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTemporaryMediaResponse.copyWith.fieldName(...)`
class _$TemporaryMediaResponseCWProxyImpl
    implements _$TemporaryMediaResponseCWProxy {
  const _$TemporaryMediaResponseCWProxyImpl(this._value);

  final TemporaryMediaResponse _value;

  @override
  TemporaryMediaResponse id(String? id) => this(id: id);

  @override
  TemporaryMediaResponse url(String? url) => this(url: url);

  @override
  TemporaryMediaResponse altText(String? altText) => this(altText: altText);

  @override
  TemporaryMediaResponse displayOrder(int? displayOrder) =>
      this(displayOrder: displayOrder);

  @override
  TemporaryMediaResponse fileSize(int? fileSize) => this(fileSize: fileSize);

  @override
  TemporaryMediaResponse mimeType(String? mimeType) => this(mimeType: mimeType);

  @override
  TemporaryMediaResponse expiresAt(DateTime? expiresAt) =>
      this(expiresAt: expiresAt);

  @override
  TemporaryMediaResponse createdAt(DateTime? createdAt) =>
      this(createdAt: createdAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TemporaryMediaResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TemporaryMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  TemporaryMediaResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? url = const $CopyWithPlaceholder(),
    Object? altText = const $CopyWithPlaceholder(),
    Object? displayOrder = const $CopyWithPlaceholder(),
    Object? fileSize = const $CopyWithPlaceholder(),
    Object? mimeType = const $CopyWithPlaceholder(),
    Object? expiresAt = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
  }) {
    return TemporaryMediaResponse(
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
      fileSize: fileSize == const $CopyWithPlaceholder()
          ? _value.fileSize
          // ignore: cast_nullable_to_non_nullable
          : fileSize as int?,
      mimeType: mimeType == const $CopyWithPlaceholder()
          ? _value.mimeType
          // ignore: cast_nullable_to_non_nullable
          : mimeType as String?,
      expiresAt: expiresAt == const $CopyWithPlaceholder()
          ? _value.expiresAt
          // ignore: cast_nullable_to_non_nullable
          : expiresAt as DateTime?,
      createdAt: createdAt == const $CopyWithPlaceholder()
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime?,
    );
  }
}

extension $TemporaryMediaResponseCopyWith on TemporaryMediaResponse {
  /// Returns a callable class that can be used as follows: `instanceOfTemporaryMediaResponse.copyWith(...)` or like so:`instanceOfTemporaryMediaResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TemporaryMediaResponseCWProxy get copyWith =>
      _$TemporaryMediaResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemporaryMediaResponse _$TemporaryMediaResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('TemporaryMediaResponse', json, ($checkedConvert) {
  final val = TemporaryMediaResponse(
    id: $checkedConvert('id', (v) => v as String?),
    url: $checkedConvert('url', (v) => v as String?),
    altText: $checkedConvert('altText', (v) => v as String?),
    displayOrder: $checkedConvert('displayOrder', (v) => (v as num?)?.toInt()),
    fileSize: $checkedConvert('fileSize', (v) => (v as num?)?.toInt()),
    mimeType: $checkedConvert('mimeType', (v) => v as String?),
    expiresAt: $checkedConvert(
      'expiresAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$TemporaryMediaResponseToJson(
  TemporaryMediaResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'url': ?instance.url,
  'altText': ?instance.altText,
  'displayOrder': ?instance.displayOrder,
  'fileSize': ?instance.fileSize,
  'mimeType': ?instance.mimeType,
  'expiresAt': ?instance.expiresAt?.toIso8601String(),
  'createdAt': ?instance.createdAt?.toIso8601String(),
};
