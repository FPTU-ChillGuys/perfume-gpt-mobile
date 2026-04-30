// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_page_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdatePageRequestCWProxy {
  UpdatePageRequest title(String title);

  UpdatePageRequest slug(String slug);

  UpdatePageRequest htmlContent(String htmlContent);

  UpdatePageRequest metaDescription(String? metaDescription);

  UpdatePageRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  );

  UpdatePageRequest mediaIdsToDelete(List<String>? mediaIdsToDelete);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdatePageRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdatePageRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdatePageRequest call({
    String title,
    String slug,
    String htmlContent,
    String? metaDescription,
    List<String>? temporaryMediaIdsToAdd,
    List<String>? mediaIdsToDelete,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdatePageRequest.copyWith(...)` or call `instanceOfUpdatePageRequest.copyWith.fieldName(value)` for a single field.
class _$UpdatePageRequestCWProxyImpl implements _$UpdatePageRequestCWProxy {
  const _$UpdatePageRequestCWProxyImpl(this._value);

  final UpdatePageRequest _value;

  @override
  UpdatePageRequest title(String title) => call(title: title);

  @override
  UpdatePageRequest slug(String slug) => call(slug: slug);

  @override
  UpdatePageRequest htmlContent(String htmlContent) =>
      call(htmlContent: htmlContent);

  @override
  UpdatePageRequest metaDescription(String? metaDescription) =>
      call(metaDescription: metaDescription);

  @override
  UpdatePageRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  ) => call(temporaryMediaIdsToAdd: temporaryMediaIdsToAdd);

  @override
  UpdatePageRequest mediaIdsToDelete(List<String>? mediaIdsToDelete) =>
      call(mediaIdsToDelete: mediaIdsToDelete);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdatePageRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdatePageRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdatePageRequest call({
    Object? title = const $CopyWithPlaceholder(),
    Object? slug = const $CopyWithPlaceholder(),
    Object? htmlContent = const $CopyWithPlaceholder(),
    Object? metaDescription = const $CopyWithPlaceholder(),
    Object? temporaryMediaIdsToAdd = const $CopyWithPlaceholder(),
    Object? mediaIdsToDelete = const $CopyWithPlaceholder(),
  }) {
    return UpdatePageRequest(
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
      metaDescription: metaDescription == const $CopyWithPlaceholder()
          ? _value.metaDescription
          // ignore: cast_nullable_to_non_nullable
          : metaDescription as String?,
      temporaryMediaIdsToAdd:
          temporaryMediaIdsToAdd == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIdsToAdd
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIdsToAdd as List<String>?,
      mediaIdsToDelete: mediaIdsToDelete == const $CopyWithPlaceholder()
          ? _value.mediaIdsToDelete
          // ignore: cast_nullable_to_non_nullable
          : mediaIdsToDelete as List<String>?,
    );
  }
}

extension $UpdatePageRequestCopyWith on UpdatePageRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdatePageRequest.copyWith(...)` or `instanceOfUpdatePageRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdatePageRequestCWProxy get copyWith =>
      _$UpdatePageRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePageRequest _$UpdatePageRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdatePageRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['title', 'slug', 'htmlContent']);
      final val = UpdatePageRequest(
        title: $checkedConvert('title', (v) => v as String),
        slug: $checkedConvert('slug', (v) => v as String),
        htmlContent: $checkedConvert('htmlContent', (v) => v as String),
        metaDescription: $checkedConvert(
          'metaDescription',
          (v) => v as String?,
        ),
        temporaryMediaIdsToAdd: $checkedConvert(
          'temporaryMediaIdsToAdd',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
        mediaIdsToDelete: $checkedConvert(
          'mediaIdsToDelete',
          (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UpdatePageRequestToJson(UpdatePageRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'htmlContent': instance.htmlContent,
      'metaDescription': ?instance.metaDescription,
      'temporaryMediaIdsToAdd': ?instance.temporaryMediaIdsToAdd,
      'mediaIdsToDelete': ?instance.mediaIdsToDelete,
    };
