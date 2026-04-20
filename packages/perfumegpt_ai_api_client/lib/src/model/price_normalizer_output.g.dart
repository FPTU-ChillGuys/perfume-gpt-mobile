// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_normalizer_output.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PriceNormalizerOutputCWProxy {
  PriceNormalizerOutput min(num? min);

  PriceNormalizerOutput max(num? max);

  PriceNormalizerOutput operator_(
    PriceNormalizerOutputOperator_Enum? operator_,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PriceNormalizerOutput(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PriceNormalizerOutput(...).copyWith(id: 12, name: "My name")
  /// ```
  PriceNormalizerOutput call({
    num? min,
    num? max,
    PriceNormalizerOutputOperator_Enum? operator_,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPriceNormalizerOutput.copyWith(...)` or call `instanceOfPriceNormalizerOutput.copyWith.fieldName(value)` for a single field.
class _$PriceNormalizerOutputCWProxyImpl
    implements _$PriceNormalizerOutputCWProxy {
  const _$PriceNormalizerOutputCWProxyImpl(this._value);

  final PriceNormalizerOutput _value;

  @override
  PriceNormalizerOutput min(num? min) => call(min: min);

  @override
  PriceNormalizerOutput max(num? max) => call(max: max);

  @override
  PriceNormalizerOutput operator_(
    PriceNormalizerOutputOperator_Enum? operator_,
  ) => call(operator_: operator_);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PriceNormalizerOutput(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PriceNormalizerOutput(...).copyWith(id: 12, name: "My name")
  /// ```
  PriceNormalizerOutput call({
    Object? min = const $CopyWithPlaceholder(),
    Object? max = const $CopyWithPlaceholder(),
    Object? operator_ = const $CopyWithPlaceholder(),
  }) {
    return PriceNormalizerOutput(
      min: min == const $CopyWithPlaceholder()
          ? _value.min
          // ignore: cast_nullable_to_non_nullable
          : min as num?,
      max: max == const $CopyWithPlaceholder()
          ? _value.max
          // ignore: cast_nullable_to_non_nullable
          : max as num?,
      operator_: operator_ == const $CopyWithPlaceholder()
          ? _value.operator_
          // ignore: cast_nullable_to_non_nullable
          : operator_ as PriceNormalizerOutputOperator_Enum?,
    );
  }
}

extension $PriceNormalizerOutputCopyWith on PriceNormalizerOutput {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPriceNormalizerOutput.copyWith(...)` or `instanceOfPriceNormalizerOutput.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PriceNormalizerOutputCWProxy get copyWith =>
      _$PriceNormalizerOutputCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceNormalizerOutput _$PriceNormalizerOutputFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PriceNormalizerOutput', json, ($checkedConvert) {
  final val = PriceNormalizerOutput(
    min: $checkedConvert('min', (v) => v as num?),
    max: $checkedConvert('max', (v) => v as num?),
    operator_: $checkedConvert(
      'operator',
      (v) =>
          $enumDecodeNullable(_$PriceNormalizerOutputOperator_EnumEnumMap, v),
    ),
  );
  return val;
}, fieldKeyMap: const {'operator_': 'operator'});

Map<String, dynamic> _$PriceNormalizerOutputToJson(
  PriceNormalizerOutput instance,
) => <String, dynamic>{
  'min': ?instance.min,
  'max': ?instance.max,
  'operator': ?_$PriceNormalizerOutputOperator_EnumEnumMap[instance.operator_],
};

const _$PriceNormalizerOutputOperator_EnumEnumMap = {
  PriceNormalizerOutputOperator_Enum.lt: 'lt',
  PriceNormalizerOutputOperator_Enum.lte: 'lte',
  PriceNormalizerOutputOperator_Enum.gt: 'gt',
  PriceNormalizerOutputOperator_Enum.gte: 'gte',
  PriceNormalizerOutputOperator_Enum.between: 'between',
};
