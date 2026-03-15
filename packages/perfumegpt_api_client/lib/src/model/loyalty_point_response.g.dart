// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_point_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LoyaltyPointResponseCWProxy {
  LoyaltyPointResponse id(String? id);

  LoyaltyPointResponse points(int? points);

  LoyaltyPointResponse updatedAt(DateTime? updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoyaltyPointResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoyaltyPointResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  LoyaltyPointResponse call({String? id, int? points, DateTime? updatedAt});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfLoyaltyPointResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfLoyaltyPointResponse.copyWith.fieldName(...)`
class _$LoyaltyPointResponseCWProxyImpl
    implements _$LoyaltyPointResponseCWProxy {
  const _$LoyaltyPointResponseCWProxyImpl(this._value);

  final LoyaltyPointResponse _value;

  @override
  LoyaltyPointResponse id(String? id) => this(id: id);

  @override
  LoyaltyPointResponse points(int? points) => this(points: points);

  @override
  LoyaltyPointResponse updatedAt(DateTime? updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `LoyaltyPointResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// LoyaltyPointResponse(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfLoyaltyPointResponse.copyWith(...)` or like so:`instanceOfLoyaltyPointResponse.copyWith.fieldName(...)`.
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
