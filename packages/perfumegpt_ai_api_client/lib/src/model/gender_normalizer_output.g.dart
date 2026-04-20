// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender_normalizer_output.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GenderNormalizerOutputCWProxy {
  GenderNormalizerOutput value(GenderNormalizerOutputValueEnum? value);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GenderNormalizerOutput(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GenderNormalizerOutput(...).copyWith(id: 12, name: "My name")
  /// ```
  GenderNormalizerOutput call({GenderNormalizerOutputValueEnum? value});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfGenderNormalizerOutput.copyWith(...)` or call `instanceOfGenderNormalizerOutput.copyWith.fieldName(value)` for a single field.
class _$GenderNormalizerOutputCWProxyImpl
    implements _$GenderNormalizerOutputCWProxy {
  const _$GenderNormalizerOutputCWProxyImpl(this._value);

  final GenderNormalizerOutput _value;

  @override
  GenderNormalizerOutput value(GenderNormalizerOutputValueEnum? value) =>
      call(value: value);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GenderNormalizerOutput(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GenderNormalizerOutput(...).copyWith(id: 12, name: "My name")
  /// ```
  GenderNormalizerOutput call({Object? value = const $CopyWithPlaceholder()}) {
    return GenderNormalizerOutput(
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as GenderNormalizerOutputValueEnum?,
    );
  }
}

extension $GenderNormalizerOutputCopyWith on GenderNormalizerOutput {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfGenderNormalizerOutput.copyWith(...)` or `instanceOfGenderNormalizerOutput.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GenderNormalizerOutputCWProxy get copyWith =>
      _$GenderNormalizerOutputCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenderNormalizerOutput _$GenderNormalizerOutputFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GenderNormalizerOutput', json, ($checkedConvert) {
  final val = GenderNormalizerOutput(
    value: $checkedConvert(
      'value',
      (v) => $enumDecodeNullable(_$GenderNormalizerOutputValueEnumEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$GenderNormalizerOutputToJson(
  GenderNormalizerOutput instance,
) => <String, dynamic>{
  'value': ?_$GenderNormalizerOutputValueEnumEnumMap[instance.value],
};

const _$GenderNormalizerOutputValueEnumEnumMap = {
  GenderNormalizerOutputValueEnum.nam: 'Nam',
  GenderNormalizerOutputValueEnum.n: 'Nữ',
  GenderNormalizerOutputValueEnum.unisex: 'Unisex',
};
