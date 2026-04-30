// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PageResponseCWProxy {
  PageResponse slug(String slug);

  PageResponse title(String title);

  PageResponse htmlContent(String htmlContent);

  PageResponse isPublished(bool? isPublished);

  PageResponse metaDescription(String? metaDescription);

  PageResponse images(List<MediaResponse> images);

  PageResponse updatedAt(DateTime? updatedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PageResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PageResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PageResponse call({
    String slug,
    String title,
    String htmlContent,
    bool? isPublished,
    String? metaDescription,
    List<MediaResponse> images,
    DateTime? updatedAt,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPageResponse.copyWith(...)` or call `instanceOfPageResponse.copyWith.fieldName(value)` for a single field.
class _$PageResponseCWProxyImpl implements _$PageResponseCWProxy {
  const _$PageResponseCWProxyImpl(this._value);

  final PageResponse _value;

  @override
  PageResponse slug(String slug) => call(slug: slug);

  @override
  PageResponse title(String title) => call(title: title);

  @override
  PageResponse htmlContent(String htmlContent) =>
      call(htmlContent: htmlContent);

  @override
  PageResponse isPublished(bool? isPublished) => call(isPublished: isPublished);

  @override
  PageResponse metaDescription(String? metaDescription) =>
      call(metaDescription: metaDescription);

  @override
  PageResponse images(List<MediaResponse> images) => call(images: images);

  @override
  PageResponse updatedAt(DateTime? updatedAt) => call(updatedAt: updatedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PageResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PageResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PageResponse call({
    Object? slug = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? htmlContent = const $CopyWithPlaceholder(),
    Object? isPublished = const $CopyWithPlaceholder(),
    Object? metaDescription = const $CopyWithPlaceholder(),
    Object? images = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return PageResponse(
      slug: slug == const $CopyWithPlaceholder() || slug == null
          ? _value.slug
          // ignore: cast_nullable_to_non_nullable
          : slug as String,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      htmlContent:
          htmlContent == const $CopyWithPlaceholder() || htmlContent == null
          ? _value.htmlContent
          // ignore: cast_nullable_to_non_nullable
          : htmlContent as String,
      isPublished: isPublished == const $CopyWithPlaceholder()
          ? _value.isPublished
          // ignore: cast_nullable_to_non_nullable
          : isPublished as bool?,
      metaDescription: metaDescription == const $CopyWithPlaceholder()
          ? _value.metaDescription
          // ignore: cast_nullable_to_non_nullable
          : metaDescription as String?,
      images: images == const $CopyWithPlaceholder() || images == null
          ? _value.images
          // ignore: cast_nullable_to_non_nullable
          : images as List<MediaResponse>,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
    );
  }
}

extension $PageResponseCopyWith on PageResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPageResponse.copyWith(...)` or `instanceOfPageResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PageResponseCWProxy get copyWith => _$PageResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageResponse _$PageResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PageResponse', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['slug', 'title', 'htmlContent', 'images'],
      );
      final val = PageResponse(
        slug: $checkedConvert('slug', (v) => v as String),
        title: $checkedConvert('title', (v) => v as String),
        htmlContent: $checkedConvert('htmlContent', (v) => v as String),
        isPublished: $checkedConvert('isPublished', (v) => v as bool?),
        metaDescription: $checkedConvert(
          'metaDescription',
          (v) => v as String?,
        ),
        images: $checkedConvert(
          'images',
          (v) => (v as List<dynamic>)
              .map((e) => MediaResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PageResponseToJson(PageResponse instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'title': instance.title,
      'htmlContent': instance.htmlContent,
      'isPublished': ?instance.isPublished,
      'metaDescription': ?instance.metaDescription,
      'images': instance.images.map((e) => e.toJson()).toList(),
      'updatedAt': ?instance.updatedAt?.toIso8601String(),
    };
