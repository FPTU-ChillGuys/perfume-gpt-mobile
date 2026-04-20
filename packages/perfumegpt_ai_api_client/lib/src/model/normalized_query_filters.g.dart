// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'normalized_query_filters.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NormalizedQueryFiltersCWProxy {
  NormalizedQueryFilters price(PriceNormalizerOutput? price);

  NormalizedQueryFilters gender(GenderNormalizerOutput? gender);

  NormalizedQueryFilters year(YearNormalizerOutput? year);

  NormalizedQueryFilters origin(OriginNormalizerOutput? origin);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `NormalizedQueryFilters(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// NormalizedQueryFilters(...).copyWith(id: 12, name: "My name")
  /// ```
  NormalizedQueryFilters call({
    PriceNormalizerOutput? price,
    GenderNormalizerOutput? gender,
    YearNormalizerOutput? year,
    OriginNormalizerOutput? origin,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfNormalizedQueryFilters.copyWith(...)` or call `instanceOfNormalizedQueryFilters.copyWith.fieldName(value)` for a single field.
class _$NormalizedQueryFiltersCWProxyImpl
    implements _$NormalizedQueryFiltersCWProxy {
  const _$NormalizedQueryFiltersCWProxyImpl(this._value);

  final NormalizedQueryFilters _value;

  @override
  NormalizedQueryFilters price(PriceNormalizerOutput? price) =>
      call(price: price);

  @override
  NormalizedQueryFilters gender(GenderNormalizerOutput? gender) =>
      call(gender: gender);

  @override
  NormalizedQueryFilters year(YearNormalizerOutput? year) => call(year: year);

  @override
  NormalizedQueryFilters origin(OriginNormalizerOutput? origin) =>
      call(origin: origin);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `NormalizedQueryFilters(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// NormalizedQueryFilters(...).copyWith(id: 12, name: "My name")
  /// ```
  NormalizedQueryFilters call({
    Object? price = const $CopyWithPlaceholder(),
    Object? gender = const $CopyWithPlaceholder(),
    Object? year = const $CopyWithPlaceholder(),
    Object? origin = const $CopyWithPlaceholder(),
  }) {
    return NormalizedQueryFilters(
      price: price == const $CopyWithPlaceholder()
          ? _value.price
          // ignore: cast_nullable_to_non_nullable
          : price as PriceNormalizerOutput?,
      gender: gender == const $CopyWithPlaceholder()
          ? _value.gender
          // ignore: cast_nullable_to_non_nullable
          : gender as GenderNormalizerOutput?,
      year: year == const $CopyWithPlaceholder()
          ? _value.year
          // ignore: cast_nullable_to_non_nullable
          : year as YearNormalizerOutput?,
      origin: origin == const $CopyWithPlaceholder()
          ? _value.origin
          // ignore: cast_nullable_to_non_nullable
          : origin as OriginNormalizerOutput?,
    );
  }
}

extension $NormalizedQueryFiltersCopyWith on NormalizedQueryFilters {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfNormalizedQueryFilters.copyWith(...)` or `instanceOfNormalizedQueryFilters.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NormalizedQueryFiltersCWProxy get copyWith =>
      _$NormalizedQueryFiltersCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NormalizedQueryFilters _$NormalizedQueryFiltersFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('NormalizedQueryFilters', json, ($checkedConvert) {
  final val = NormalizedQueryFilters(
    price: $checkedConvert(
      'price',
      (v) => v == null
          ? null
          : PriceNormalizerOutput.fromJson(v as Map<String, dynamic>),
    ),
    gender: $checkedConvert(
      'gender',
      (v) => v == null
          ? null
          : GenderNormalizerOutput.fromJson(v as Map<String, dynamic>),
    ),
    year: $checkedConvert(
      'year',
      (v) => v == null
          ? null
          : YearNormalizerOutput.fromJson(v as Map<String, dynamic>),
    ),
    origin: $checkedConvert(
      'origin',
      (v) => v == null
          ? null
          : OriginNormalizerOutput.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$NormalizedQueryFiltersToJson(
  NormalizedQueryFilters instance,
) => <String, dynamic>{
  'price': ?instance.price?.toJson(),
  'gender': ?instance.gender?.toJson(),
  'year': ?instance.year?.toJson(),
  'origin': ?instance.origin?.toJson(),
};
