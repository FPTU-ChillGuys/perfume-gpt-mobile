// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_attribute_value_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyAttributeValueItemCWProxy {
  SurveyAttributeValueItem displayText(String displayText);

  SurveyAttributeValueItem queryFragment(
    SurveyAttributeValueItemQueryFragment queryFragment,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAttributeValueItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAttributeValueItem(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAttributeValueItem call({
    String displayText,
    SurveyAttributeValueItemQueryFragment queryFragment,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyAttributeValueItem.copyWith(...)` or call `instanceOfSurveyAttributeValueItem.copyWith.fieldName(value)` for a single field.
class _$SurveyAttributeValueItemCWProxyImpl
    implements _$SurveyAttributeValueItemCWProxy {
  const _$SurveyAttributeValueItemCWProxyImpl(this._value);

  final SurveyAttributeValueItem _value;

  @override
  SurveyAttributeValueItem displayText(String displayText) =>
      call(displayText: displayText);

  @override
  SurveyAttributeValueItem queryFragment(
    SurveyAttributeValueItemQueryFragment queryFragment,
  ) => call(queryFragment: queryFragment);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAttributeValueItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAttributeValueItem(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAttributeValueItem call({
    Object? displayText = const $CopyWithPlaceholder(),
    Object? queryFragment = const $CopyWithPlaceholder(),
  }) {
    return SurveyAttributeValueItem(
      displayText:
          displayText == const $CopyWithPlaceholder() || displayText == null
          ? _value.displayText
          // ignore: cast_nullable_to_non_nullable
          : displayText as String,
      queryFragment:
          queryFragment == const $CopyWithPlaceholder() || queryFragment == null
          ? _value.queryFragment
          // ignore: cast_nullable_to_non_nullable
          : queryFragment as SurveyAttributeValueItemQueryFragment,
    );
  }
}

extension $SurveyAttributeValueItemCopyWith on SurveyAttributeValueItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyAttributeValueItem.copyWith(...)` or `instanceOfSurveyAttributeValueItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyAttributeValueItemCWProxy get copyWith =>
      _$SurveyAttributeValueItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyAttributeValueItem _$SurveyAttributeValueItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyAttributeValueItem', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['displayText', 'queryFragment']);
  final val = SurveyAttributeValueItem(
    displayText: $checkedConvert('displayText', (v) => v as String),
    queryFragment: $checkedConvert(
      'queryFragment',
      (v) => SurveyAttributeValueItemQueryFragment.fromJson(
        v as Map<String, dynamic>,
      ),
    ),
  );
  return val;
});

Map<String, dynamic> _$SurveyAttributeValueItemToJson(
  SurveyAttributeValueItem instance,
) => <String, dynamic>{
  'displayText': instance.displayText,
  'queryFragment': instance.queryFragment.toJson(),
};
