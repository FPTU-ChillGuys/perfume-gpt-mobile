// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_policy_update_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SystemPolicyUpdateRequestCWProxy {
  SystemPolicyUpdateRequest title(String title);

  SystemPolicyUpdateRequest htmlContent(String htmlContent);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SystemPolicyUpdateRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SystemPolicyUpdateRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  SystemPolicyUpdateRequest call({String title, String htmlContent});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSystemPolicyUpdateRequest.copyWith(...)` or call `instanceOfSystemPolicyUpdateRequest.copyWith.fieldName(value)` for a single field.
class _$SystemPolicyUpdateRequestCWProxyImpl
    implements _$SystemPolicyUpdateRequestCWProxy {
  const _$SystemPolicyUpdateRequestCWProxyImpl(this._value);

  final SystemPolicyUpdateRequest _value;

  @override
  SystemPolicyUpdateRequest title(String title) => call(title: title);

  @override
  SystemPolicyUpdateRequest htmlContent(String htmlContent) =>
      call(htmlContent: htmlContent);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SystemPolicyUpdateRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SystemPolicyUpdateRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  SystemPolicyUpdateRequest call({
    Object? title = const $CopyWithPlaceholder(),
    Object? htmlContent = const $CopyWithPlaceholder(),
  }) {
    return SystemPolicyUpdateRequest(
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      htmlContent:
          htmlContent == const $CopyWithPlaceholder() || htmlContent == null
          ? _value.htmlContent
          // ignore: cast_nullable_to_non_nullable
          : htmlContent as String,
    );
  }
}

extension $SystemPolicyUpdateRequestCopyWith on SystemPolicyUpdateRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSystemPolicyUpdateRequest.copyWith(...)` or `instanceOfSystemPolicyUpdateRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SystemPolicyUpdateRequestCWProxy get copyWith =>
      _$SystemPolicyUpdateRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemPolicyUpdateRequest _$SystemPolicyUpdateRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SystemPolicyUpdateRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['title', 'htmlContent']);
  final val = SystemPolicyUpdateRequest(
    title: $checkedConvert('title', (v) => v as String),
    htmlContent: $checkedConvert('htmlContent', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$SystemPolicyUpdateRequestToJson(
  SystemPolicyUpdateRequest instance,
) => <String, dynamic>{
  'title': instance.title,
  'htmlContent': instance.htmlContent,
};
