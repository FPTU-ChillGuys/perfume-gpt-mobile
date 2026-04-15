// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_policy_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SystemPolicyResponseCWProxy {
  SystemPolicyResponse policyCode(String policyCode);

  SystemPolicyResponse title(String title);

  SystemPolicyResponse htmlContent(String htmlContent);

  SystemPolicyResponse lastUpdated(DateTime? lastUpdated);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SystemPolicyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SystemPolicyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SystemPolicyResponse call({
    String policyCode,
    String title,
    String htmlContent,
    DateTime? lastUpdated,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSystemPolicyResponse.copyWith(...)` or call `instanceOfSystemPolicyResponse.copyWith.fieldName(value)` for a single field.
class _$SystemPolicyResponseCWProxyImpl
    implements _$SystemPolicyResponseCWProxy {
  const _$SystemPolicyResponseCWProxyImpl(this._value);

  final SystemPolicyResponse _value;

  @override
  SystemPolicyResponse policyCode(String policyCode) =>
      call(policyCode: policyCode);

  @override
  SystemPolicyResponse title(String title) => call(title: title);

  @override
  SystemPolicyResponse htmlContent(String htmlContent) =>
      call(htmlContent: htmlContent);

  @override
  SystemPolicyResponse lastUpdated(DateTime? lastUpdated) =>
      call(lastUpdated: lastUpdated);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SystemPolicyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SystemPolicyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SystemPolicyResponse call({
    Object? policyCode = const $CopyWithPlaceholder(),
    Object? title = const $CopyWithPlaceholder(),
    Object? htmlContent = const $CopyWithPlaceholder(),
    Object? lastUpdated = const $CopyWithPlaceholder(),
  }) {
    return SystemPolicyResponse(
      policyCode:
          policyCode == const $CopyWithPlaceholder() || policyCode == null
          ? _value.policyCode
          // ignore: cast_nullable_to_non_nullable
          : policyCode as String,
      title: title == const $CopyWithPlaceholder() || title == null
          ? _value.title
          // ignore: cast_nullable_to_non_nullable
          : title as String,
      htmlContent:
          htmlContent == const $CopyWithPlaceholder() || htmlContent == null
          ? _value.htmlContent
          // ignore: cast_nullable_to_non_nullable
          : htmlContent as String,
      lastUpdated: lastUpdated == const $CopyWithPlaceholder()
          ? _value.lastUpdated
          // ignore: cast_nullable_to_non_nullable
          : lastUpdated as DateTime?,
    );
  }
}

extension $SystemPolicyResponseCopyWith on SystemPolicyResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSystemPolicyResponse.copyWith(...)` or `instanceOfSystemPolicyResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SystemPolicyResponseCWProxy get copyWith =>
      _$SystemPolicyResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemPolicyResponse _$SystemPolicyResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SystemPolicyResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['policyCode', 'title', 'htmlContent']);
  final val = SystemPolicyResponse(
    policyCode: $checkedConvert('policyCode', (v) => v as String),
    title: $checkedConvert('title', (v) => v as String),
    htmlContent: $checkedConvert('htmlContent', (v) => v as String),
    lastUpdated: $checkedConvert(
      'lastUpdated',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$SystemPolicyResponseToJson(
  SystemPolicyResponse instance,
) => <String, dynamic>{
  'policyCode': instance.policyCode,
  'title': instance.title,
  'htmlContent': instance.htmlContent,
  'lastUpdated': ?instance.lastUpdated?.toIso8601String(),
};
