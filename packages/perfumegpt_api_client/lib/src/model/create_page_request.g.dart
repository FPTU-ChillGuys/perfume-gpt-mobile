// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_page_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreatePageRequestCWProxy {
  CreatePageRequest title(String title);

  CreatePageRequest slug(String slug);

  CreatePageRequest htmlContent(String htmlContent);

  CreatePageRequest isPublished(bool? isPublished);

  CreatePageRequest metaDescription(String? metaDescription);

  CreatePageRequest temporaryMediaIds(List<String>? temporaryMediaIds);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreatePageRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreatePageRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreatePageRequest call({
    String title,
    String slug,
    String htmlContent,
    bool? isPublished,
    String? metaDescription,
    List<String>? temporaryMediaIds,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreatePageRequest.copyWith(...)` or call `instanceOfCreatePageRequest.copyWith.fieldName(value)` for a single field.
class _$CreatePageRequestCWProxyImpl implements _$CreatePageRequestCWProxy {
  const _$CreatePageRequestCWProxyImpl(this._value);

  final CreatePageRequest _value;

  @override
  CreatePageRequest title(String title) => call(title: title);

  @override
  CreatePageRequest slug(String slug) => call(slug: slug);

  @override
  CreatePageRequest htmlContent(String htmlContent) =>
      call(htmlContent: htmlContent);

  @override
  CreatePageRequest isPublished(bool? isPublished) =>
      call(isPublished: isPublished);

  @override
  CreatePageRequest metaDescription(String? metaDescription) =>
      call(metaDescription: metaDescription);

  @override
  CreatePageRequest temporaryMediaIds(List<String>? temporaryMediaIds) =>
      call(temporaryMediaIds: temporaryMediaIds);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreatePageRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreatePageRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreatePageRequest call({
    Object? title = const $CopyWithPlaceholder(),
    Object? slug = const $CopyWithPlaceholder(),
    Object? htmlContent = const $CopyWithPlaceholder(),
    Object? isPublished = const $CopyWithPlaceholder(),
    Object? metaDescription = const $CopyWithPlaceholder(),
    Object? temporaryMediaIds = const $CopyWithPlaceholder(),
  }) {
    return CreatePageRequest(
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      slug: slug == const $CopyWithPlaceholder() || slug == null
          ? _value.slug
          // ignore: cast_nullable_to_non_nullable
          : slug as String,
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
      temporaryMediaIds: temporaryMediaIds == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIds
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIds as List<String>?,
    );
  }
}

extension $CreatePageRequestCopyWith on CreatePageRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreatePageRequest.copyWith(...)` or `instanceOfCreatePageRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreatePageRequestCWProxy get copyWith =>
      _$CreatePageRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePageRequest _$CreatePageRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreatePageRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['title', 'slug', 'htmlContent']);
      final val = CreatePageRequest(
        title: $checkedConvert('title', (v) => v as String),
        slug: $checkedConvert('slug', (v) => v as String),
        htmlContent: $checkedConvert('htmlContent', (v) => v as String),
        isPublished: $checkedConvert('isPublished', (v) => v as bool?),
        metaDescription: $checkedConvert(
          'metaDescription',
          (v) => v as String?,
        ),
        temporaryMediaIds: $checkedConvert(
          'temporaryMediaIds',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CreatePageRequestToJson(CreatePageRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'htmlContent': instance.htmlContent,
      'isPublished': ?instance.isPublished,
      'metaDescription': ?instance.metaDescription,
      'temporaryMediaIds': ?instance.temporaryMediaIds,
    };
