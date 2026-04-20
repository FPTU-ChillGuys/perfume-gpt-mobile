// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'origin_normalizer_output.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OriginNormalizerOutputCWProxy {
  OriginNormalizerOutput origins(List<String>? origins);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OriginNormalizerOutput(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OriginNormalizerOutput(...).copyWith(id: 12, name: "My name")
  /// ```
  OriginNormalizerOutput call({List<String>? origins});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfOriginNormalizerOutput.copyWith(...)` or call `instanceOfOriginNormalizerOutput.copyWith.fieldName(value)` for a single field.
class _$OriginNormalizerOutputCWProxyImpl
    implements _$OriginNormalizerOutputCWProxy {
  const _$OriginNormalizerOutputCWProxyImpl(this._value);

  final OriginNormalizerOutput _value;

  @override
  OriginNormalizerOutput origins(List<String>? origins) =>
      call(origins: origins);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `OriginNormalizerOutput(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// OriginNormalizerOutput(...).copyWith(id: 12, name: "My name")
  /// ```
  OriginNormalizerOutput call({
    Object? origins = const $CopyWithPlaceholder(),
  }) {
    return OriginNormalizerOutput(
      origins: origins == const $CopyWithPlaceholder()
          ? _value.origins
          // ignore: cast_nullable_to_non_nullable
          : origins as List<String>?,
    );
  }
}

extension $OriginNormalizerOutputCopyWith on OriginNormalizerOutput {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfOriginNormalizerOutput.copyWith(...)` or `instanceOfOriginNormalizerOutput.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OriginNormalizerOutputCWProxy get copyWith =>
      _$OriginNormalizerOutputCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OriginNormalizerOutput _$OriginNormalizerOutputFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OriginNormalizerOutput', json, ($checkedConvert) {
  final val = OriginNormalizerOutput(
    origins: $checkedConvert(
      'origins',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$OriginNormalizerOutputToJson(
  OriginNormalizerOutput instance,
) => <String, dynamic>{'origins': ?instance.origins};
