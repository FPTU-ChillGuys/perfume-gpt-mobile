// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'year_normalizer_output.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$YearNormalizerOutputCWProxy {
  YearNormalizerOutput year(num? year);

  YearNormalizerOutput operator_(YearNormalizerOutputOperator_Enum? operator_);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `YearNormalizerOutput(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// YearNormalizerOutput(...).copyWith(id: 12, name: "My name")
  /// ```
  YearNormalizerOutput call({
    num? year,
    YearNormalizerOutputOperator_Enum? operator_,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfYearNormalizerOutput.copyWith(...)` or call `instanceOfYearNormalizerOutput.copyWith.fieldName(value)` for a single field.
class _$YearNormalizerOutputCWProxyImpl
    implements _$YearNormalizerOutputCWProxy {
  const _$YearNormalizerOutputCWProxyImpl(this._value);

  final YearNormalizerOutput _value;

  @override
  YearNormalizerOutput year(num? year) => call(year: year);

  @override
  YearNormalizerOutput operator_(
    YearNormalizerOutputOperator_Enum? operator_,
  ) => call(operator_: operator_);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `YearNormalizerOutput(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// YearNormalizerOutput(...).copyWith(id: 12, name: "My name")
  /// ```
  YearNormalizerOutput call({
    Object? year = const $CopyWithPlaceholder(),
    Object? operator_ = const $CopyWithPlaceholder(),
  }) {
    return YearNormalizerOutput(
      year: year == const $CopyWithPlaceholder()
          ? _value.year
          // ignore: cast_nullable_to_non_nullable
          : year as num?,
      operator_: operator_ == const $CopyWithPlaceholder()
          ? _value.operator_
          // ignore: cast_nullable_to_non_nullable
          : operator_ as YearNormalizerOutputOperator_Enum?,
    );
  }
}

extension $YearNormalizerOutputCopyWith on YearNormalizerOutput {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfYearNormalizerOutput.copyWith(...)` or `instanceOfYearNormalizerOutput.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$YearNormalizerOutputCWProxy get copyWith =>
      _$YearNormalizerOutputCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YearNormalizerOutput _$YearNormalizerOutputFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('YearNormalizerOutput', json, ($checkedConvert) {
  final val = YearNormalizerOutput(
    year: $checkedConvert('year', (v) => v as num?),
    operator_: $checkedConvert(
      'operator',
      (v) => $enumDecodeNullable(_$YearNormalizerOutputOperator_EnumEnumMap, v),
    ),
  );
  return val;
}, fieldKeyMap: const {'operator_': 'operator'});

Map<String, dynamic> _$YearNormalizerOutputToJson(
  YearNormalizerOutput instance,
) => <String, dynamic>{
  'year': ?instance.year,
  'operator': ?_$YearNormalizerOutputOperator_EnumEnumMap[instance.operator_],
};

const _$YearNormalizerOutputOperator_EnumEnumMap = {
  YearNormalizerOutputOperator_Enum.eq: 'eq',
  YearNormalizerOutputOperator_Enum.gte: 'gte',
  YearNormalizerOutputOperator_Enum.lte: 'lte',
  YearNormalizerOutputOperator_Enum.newer: 'newer',
  YearNormalizerOutputOperator_Enum.older: 'older',
};
