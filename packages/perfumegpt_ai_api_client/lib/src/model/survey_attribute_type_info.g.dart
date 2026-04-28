// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_attribute_type_info.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyAttributeTypeInfoCWProxy {
  SurveyAttributeTypeInfo type(SurveyAttributeTypeInfoTypeEnum type);

  SurveyAttributeTypeInfo label(String label);

  SurveyAttributeTypeInfo description(String description);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAttributeTypeInfo(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAttributeTypeInfo(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAttributeTypeInfo call({
    SurveyAttributeTypeInfoTypeEnum type,
    String label,
    String description,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyAttributeTypeInfo.copyWith(...)` or call `instanceOfSurveyAttributeTypeInfo.copyWith.fieldName(value)` for a single field.
class _$SurveyAttributeTypeInfoCWProxyImpl
    implements _$SurveyAttributeTypeInfoCWProxy {
  const _$SurveyAttributeTypeInfoCWProxyImpl(this._value);

  final SurveyAttributeTypeInfo _value;

  @override
  SurveyAttributeTypeInfo type(SurveyAttributeTypeInfoTypeEnum type) =>
      call(type: type);

  @override
  SurveyAttributeTypeInfo label(String label) => call(label: label);

  @override
  SurveyAttributeTypeInfo description(String description) =>
      call(description: description);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAttributeTypeInfo(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAttributeTypeInfo(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAttributeTypeInfo call({
    Object? type = const $CopyWithPlaceholder(),
    Object? label = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
  }) {
    return SurveyAttributeTypeInfo(
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as SurveyAttributeTypeInfoTypeEnum,
      label: label == const $CopyWithPlaceholder() || label == null
          ? _value.label
          // ignore: cast_nullable_to_non_nullable
          : label as String,
      description:
          description == const $CopyWithPlaceholder() || description == null
          ? _value.description
          // ignore: cast_nullable_to_non_nullable
          : description as String,
    );
  }
}

extension $SurveyAttributeTypeInfoCopyWith on SurveyAttributeTypeInfo {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyAttributeTypeInfo.copyWith(...)` or `instanceOfSurveyAttributeTypeInfo.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyAttributeTypeInfoCWProxy get copyWith =>
      _$SurveyAttributeTypeInfoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyAttributeTypeInfo _$SurveyAttributeTypeInfoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SurveyAttributeTypeInfo', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['type', 'label', 'description']);
  final val = SurveyAttributeTypeInfo(
    type: $checkedConvert(
      'type',
      (v) => $enumDecode(_$SurveyAttributeTypeInfoTypeEnumEnumMap, v),
    ),
    label: $checkedConvert('label', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$SurveyAttributeTypeInfoToJson(
  SurveyAttributeTypeInfo instance,
) => <String, dynamic>{
  'type': _$SurveyAttributeTypeInfoTypeEnumEnumMap[instance.type]!,
  'label': instance.label,
  'description': instance.description,
};

const _$SurveyAttributeTypeInfoTypeEnumEnumMap = {
  SurveyAttributeTypeInfoTypeEnum.gender: 'gender',
  SurveyAttributeTypeInfoTypeEnum.origin: 'origin',
  SurveyAttributeTypeInfoTypeEnum.brand: 'brand',
  SurveyAttributeTypeInfoTypeEnum.category: 'category',
  SurveyAttributeTypeInfoTypeEnum.concentration: 'concentration',
  SurveyAttributeTypeInfoTypeEnum.note: 'note',
  SurveyAttributeTypeInfoTypeEnum.family: 'family',
  SurveyAttributeTypeInfoTypeEnum.attribute: 'attribute',
  SurveyAttributeTypeInfoTypeEnum.budget: 'budget',
};
