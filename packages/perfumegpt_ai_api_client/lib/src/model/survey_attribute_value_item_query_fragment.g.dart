// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_attribute_value_item_query_fragment.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$SurveyAttributeValueItemQueryFragmentCWProxy {
  SurveyAttributeValueItemQueryFragment type(
    SurveyAttributeValueItemQueryFragmentTypeEnum type,
  );

  SurveyAttributeValueItemQueryFragment match(String match);

  SurveyAttributeValueItemQueryFragment attributeName(String attributeName);

  SurveyAttributeValueItemQueryFragment min(num? min);

  SurveyAttributeValueItemQueryFragment max(num? max);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAttributeValueItemQueryFragment(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAttributeValueItemQueryFragment(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAttributeValueItemQueryFragment call({
    SurveyAttributeValueItemQueryFragmentTypeEnum type,
    String match,
    String attributeName,
    num? min,
    num? max,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfSurveyAttributeValueItemQueryFragment.copyWith(...)` or call `instanceOfSurveyAttributeValueItemQueryFragment.copyWith.fieldName(value)` for a single field.
class _$SurveyAttributeValueItemQueryFragmentCWProxyImpl
    implements _$SurveyAttributeValueItemQueryFragmentCWProxy {
  const _$SurveyAttributeValueItemQueryFragmentCWProxyImpl(this._value);

  final SurveyAttributeValueItemQueryFragment _value;

  @override
  SurveyAttributeValueItemQueryFragment type(
    SurveyAttributeValueItemQueryFragmentTypeEnum type,
  ) => call(type: type);

  @override
  SurveyAttributeValueItemQueryFragment match(String match) =>
      call(match: match);

  @override
  SurveyAttributeValueItemQueryFragment attributeName(String attributeName) =>
      call(attributeName: attributeName);

  @override
  SurveyAttributeValueItemQueryFragment min(num? min) => call(min: min);

  @override
  SurveyAttributeValueItemQueryFragment max(num? max) => call(max: max);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `SurveyAttributeValueItemQueryFragment(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// SurveyAttributeValueItemQueryFragment(...).copyWith(id: 12, name: "My name")
  /// ```
  SurveyAttributeValueItemQueryFragment call({
    Object? type = const $CopyWithPlaceholder(),
    Object? match = const $CopyWithPlaceholder(),
    Object? attributeName = const $CopyWithPlaceholder(),
    Object? min = const $CopyWithPlaceholder(),
    Object? max = const $CopyWithPlaceholder(),
  }) {
    return SurveyAttributeValueItemQueryFragment(
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as SurveyAttributeValueItemQueryFragmentTypeEnum,
      match: match == const $CopyWithPlaceholder() || match == null
          ? _value.match
          // ignore: cast_nullable_to_non_nullable
          : match as String,
      attributeName:
          attributeName == const $CopyWithPlaceholder() || attributeName == null
          ? _value.attributeName
          // ignore: cast_nullable_to_non_nullable
          : attributeName as String,
      min: min == const $CopyWithPlaceholder()
          ? _value.min
          // ignore: cast_nullable_to_non_nullable
          : min as num?,
      max: max == const $CopyWithPlaceholder()
          ? _value.max
          // ignore: cast_nullable_to_non_nullable
          : max as num?,
    );
  }
}

extension $SurveyAttributeValueItemQueryFragmentCopyWith
    on SurveyAttributeValueItemQueryFragment {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfSurveyAttributeValueItemQueryFragment.copyWith(...)` or `instanceOfSurveyAttributeValueItemQueryFragment.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$SurveyAttributeValueItemQueryFragmentCWProxy get copyWith =>
      _$SurveyAttributeValueItemQueryFragmentCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SurveyAttributeValueItemQueryFragment
_$SurveyAttributeValueItemQueryFragmentFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SurveyAttributeValueItemQueryFragment', json, (
      $checkedConvert,
    ) {
      $checkKeys(json, requiredKeys: const ['type', 'match', 'attributeName']);
      final val = SurveyAttributeValueItemQueryFragment(
        type: $checkedConvert(
          'type',
          (v) => $enumDecode(
            _$SurveyAttributeValueItemQueryFragmentTypeEnumEnumMap,
            v,
          ),
        ),
        match: $checkedConvert('match', (v) => v as String),
        attributeName: $checkedConvert('attributeName', (v) => v as String),
        min: $checkedConvert('min', (v) => v as num?),
        max: $checkedConvert('max', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$SurveyAttributeValueItemQueryFragmentToJson(
  SurveyAttributeValueItemQueryFragment instance,
) => <String, dynamic>{
  'type':
      _$SurveyAttributeValueItemQueryFragmentTypeEnumEnumMap[instance.type]!,
  'match': instance.match,
  'attributeName': instance.attributeName,
  'min': ?instance.min,
  'max': ?instance.max,
};

const _$SurveyAttributeValueItemQueryFragmentTypeEnumEnumMap = {
  SurveyAttributeValueItemQueryFragmentTypeEnum.gender: 'gender',
  SurveyAttributeValueItemQueryFragmentTypeEnum.origin: 'origin',
  SurveyAttributeValueItemQueryFragmentTypeEnum.brand: 'brand',
  SurveyAttributeValueItemQueryFragmentTypeEnum.category: 'category',
  SurveyAttributeValueItemQueryFragmentTypeEnum.concentration: 'concentration',
  SurveyAttributeValueItemQueryFragmentTypeEnum.note: 'note',
  SurveyAttributeValueItemQueryFragmentTypeEnum.family: 'family',
  SurveyAttributeValueItemQueryFragmentTypeEnum.attribute: 'attribute',
  SurveyAttributeValueItemQueryFragmentTypeEnum.budget: 'budget',
};
