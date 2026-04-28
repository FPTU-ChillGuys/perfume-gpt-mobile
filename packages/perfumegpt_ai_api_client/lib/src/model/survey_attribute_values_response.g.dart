// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_attribute_values_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyAttributeValuesResponseCWProxy {
  SurveyAttributeValuesResponse type(
    SurveyAttributeValuesResponseTypeEnum type,
  );

  SurveyAttributeValuesResponse label(String label);

  SurveyAttributeValuesResponse values(List<SurveyAttributeValueItem>? values);

  SurveyAttributeValuesResponse subGroups(List<String>? subGroups);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAttributeValuesResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAttributeValuesResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAttributeValuesResponse call({
    SurveyAttributeValuesResponseTypeEnum type,
    String label,
    List<SurveyAttributeValueItem>? values,
    List<String>? subGroups,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyAttributeValuesResponse.copyWith(...)` or call `instanceOfSurveyAttributeValuesResponse.copyWith.fieldName(value)` for a single field.
class _$SurveyAttributeValuesResponseCWProxyImpl
    implements _$SurveyAttributeValuesResponseCWProxy {
  const _$SurveyAttributeValuesResponseCWProxyImpl(this._value);

  final SurveyAttributeValuesResponse _value;

  @override
  SurveyAttributeValuesResponse type(
    SurveyAttributeValuesResponseTypeEnum type,
  ) => call(type: type);

  @override
  SurveyAttributeValuesResponse label(String label) => call(label: label);

  @override
  SurveyAttributeValuesResponse values(
    List<SurveyAttributeValueItem>? values,
  ) => call(values: values);

  @override
  SurveyAttributeValuesResponse subGroups(List<String>? subGroups) =>
      call(subGroups: subGroups);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAttributeValuesResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAttributeValuesResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAttributeValuesResponse call({
    Object? type = const $CopyWithPlaceholder(),
    Object? label = const $CopyWithPlaceholder(),
    Object? values = const $CopyWithPlaceholder(),
    Object? subGroups = const $CopyWithPlaceholder(),
  }) {
    return SurveyAttributeValuesResponse(
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as SurveyAttributeValuesResponseTypeEnum,
      label: label == const $CopyWithPlaceholder() || label == null
          ? _value.label
          // ignore: cast_nullable_to_non_nullable
          : label as String,
      values: values == const $CopyWithPlaceholder()
          ? _value.values
          // ignore: cast_nullable_to_non_nullable
          : values as List<SurveyAttributeValueItem>?,
      subGroups: subGroups == const $CopyWithPlaceholder()
          ? _value.subGroups
          // ignore: cast_nullable_to_non_nullable
          : subGroups as List<String>?,
    );
  }
}

extension $SurveyAttributeValuesResponseCopyWith
    on SurveyAttributeValuesResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyAttributeValuesResponse.copyWith(...)` or `instanceOfSurveyAttributeValuesResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyAttributeValuesResponseCWProxy get copyWith =>
      _$SurveyAttributeValuesResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyAttributeValuesResponse _$SurveyAttributeValuesResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyAttributeValuesResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['type', 'label']);
  final val = SurveyAttributeValuesResponse(
    type: $checkedConvert(
      'type',
      (v) => $enumDecode(_$SurveyAttributeValuesResponseTypeEnumEnumMap, v),
    ),
    label: $checkedConvert('label', (v) => v as String),
    values: $checkedConvert(
      'values',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => SurveyAttributeValueItem.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    subGroups: $checkedConvert(
      'subGroups',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$SurveyAttributeValuesResponseToJson(
  SurveyAttributeValuesResponse instance,
) => <String, dynamic>{
  'type': _$SurveyAttributeValuesResponseTypeEnumEnumMap[instance.type]!,
  'label': instance.label,
  'values': ?instance.values?.map((e) => e.toJson()).toList(),
  'subGroups': ?instance.subGroups,
};

const _$SurveyAttributeValuesResponseTypeEnumEnumMap = {
  SurveyAttributeValuesResponseTypeEnum.gender: 'gender',
  SurveyAttributeValuesResponseTypeEnum.origin: 'origin',
  SurveyAttributeValuesResponseTypeEnum.brand: 'brand',
  SurveyAttributeValuesResponseTypeEnum.category: 'category',
  SurveyAttributeValuesResponseTypeEnum.concentration: 'concentration',
  SurveyAttributeValuesResponseTypeEnum.note: 'note',
  SurveyAttributeValuesResponseTypeEnum.family: 'family',
  SurveyAttributeValuesResponseTypeEnum.attribute: 'attribute',
  SurveyAttributeValuesResponseTypeEnum.budget: 'budget',
};
