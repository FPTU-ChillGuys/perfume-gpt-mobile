// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_daily_sale_figure.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantDailySaleFigureCWProxy {
  VariantDailySaleFigure variantId(String? variantId);

  VariantDailySaleFigure variantName(String? variantName);

  VariantDailySaleFigure date(DateTime? date);

  VariantDailySaleFigure quantitySold(int? quantitySold);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantDailySaleFigure(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantDailySaleFigure(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantDailySaleFigure call({
    String? variantId,
    String? variantName,
    DateTime? date,
    int? quantitySold,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVariantDailySaleFigure.copyWith(...)` or call `instanceOfVariantDailySaleFigure.copyWith.fieldName(value)` for a single field.
class _$VariantDailySaleFigureCWProxyImpl
    implements _$VariantDailySaleFigureCWProxy {
  const _$VariantDailySaleFigureCWProxyImpl(this._value);

  final VariantDailySaleFigure _value;

  @override
  VariantDailySaleFigure variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  VariantDailySaleFigure variantName(String? variantName) =>
      call(variantName: variantName);

  @override
  VariantDailySaleFigure date(DateTime? date) => call(date: date);

  @override
  VariantDailySaleFigure quantitySold(int? quantitySold) =>
      call(quantitySold: quantitySold);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantDailySaleFigure(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantDailySaleFigure(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantDailySaleFigure call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantName = const $CopyWithPlaceholder(),
    Object? date = const $CopyWithPlaceholder(),
    Object? quantitySold = const $CopyWithPlaceholder(),
  }) {
    return VariantDailySaleFigure(
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      variantName: variantName == const $CopyWithPlaceholder()
          ? _value.variantName
          // ignore: cast_nullable_to_non_nullable
          : variantName as String?,
      date: date == const $CopyWithPlaceholder()
          ? _value.date
          // ignore: cast_nullable_to_non_nullable
          : date as DateTime?,
      quantitySold: quantitySold == const $CopyWithPlaceholder()
          ? _value.quantitySold
          // ignore: cast_nullable_to_non_nullable
          : quantitySold as int?,
    );
  }
}

extension $VariantDailySaleFigureCopyWith on VariantDailySaleFigure {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVariantDailySaleFigure.copyWith(...)` or `instanceOfVariantDailySaleFigure.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VariantDailySaleFigureCWProxy get copyWith =>
      _$VariantDailySaleFigureCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantDailySaleFigure _$VariantDailySaleFigureFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VariantDailySaleFigure', json, ($checkedConvert) {
  final val = VariantDailySaleFigure(
    variantId: $checkedConvert('variantId', (v) => v as String?),
    variantName: $checkedConvert('variantName', (v) => v as String?),
    date: $checkedConvert(
      'date',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    quantitySold: $checkedConvert('quantitySold', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$VariantDailySaleFigureToJson(
  VariantDailySaleFigure instance,
) => <String, dynamic>{
  'variantId': ?instance.variantId,
  'variantName': ?instance.variantName,
  'date': ?instance.date?.toIso8601String(),
  'quantitySold': ?instance.quantitySold,
};
