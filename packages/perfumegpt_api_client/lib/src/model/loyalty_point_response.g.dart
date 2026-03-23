// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_point_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LoyaltyPointResponseCWProxy {
  LoyaltyPointResponse id(String? id);

  LoyaltyPointResponse points(int? points);

  LoyaltyPointResponse updatedAt(DateTime? updatedAt);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoyaltyPointResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoyaltyPointResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  LoyaltyPointResponse call({String? id, int? points, DateTime? updatedAt});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLoyaltyPointResponse.copyWith(...)` or call `instanceOfLoyaltyPointResponse.copyWith.fieldName(value)` for a single field.
class _$LoyaltyPointResponseCWProxyImpl
    implements _$LoyaltyPointResponseCWProxy {
  const _$LoyaltyPointResponseCWProxyImpl(this._value);

  final LoyaltyPointResponse _value;

  @override
  LoyaltyPointResponse id(String? id) => call(id: id);

  @override
  LoyaltyPointResponse points(int? points) => call(points: points);

  @override
  LoyaltyPointResponse updatedAt(DateTime? updatedAt) =>
      call(updatedAt: updatedAt);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoyaltyPointResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoyaltyPointResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  LoyaltyPointResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? points = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return LoyaltyPointResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      points: points == const $CopyWithPlaceholder()
          ? _value.points
          // ignore: cast_nullable_to_non_nullable
          : points as int?,
      updatedAt: updatedAt == const $CopyWithPlaceholder()
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime?,
    );
  }
}

extension $LoyaltyPointResponseCopyWith on LoyaltyPointResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLoyaltyPointResponse.copyWith(...)` or `instanceOfLoyaltyPointResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LoyaltyPointResponseCWProxy get copyWith =>
      _$LoyaltyPointResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyPointResponse _$LoyaltyPointResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('LoyaltyPointResponse', json, ($checkedConvert) {
  final val = LoyaltyPointResponse(
    id: $checkedConvert('id', (v) => v as String?),
    points: $checkedConvert('points', (v) => (v as num?)?.toInt()),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
  );
  return val;
});

Map<String, dynamic> _$LoyaltyPointResponseToJson(
  LoyaltyPointResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'points': ?instance.points,
  'updatedAt': ?instance.updatedAt?.toIso8601String(),
};
