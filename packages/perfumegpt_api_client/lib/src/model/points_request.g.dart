// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PointsRequestCWProxy {
  PointsRequest points(int? points);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PointsRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PointsRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PointsRequest call({int? points});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPointsRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPointsRequest.copyWith.fieldName(...)`
class _$PointsRequestCWProxyImpl implements _$PointsRequestCWProxy {
  const _$PointsRequestCWProxyImpl(this._value);

  final PointsRequest _value;

  @override
  PointsRequest points(int? points) => this(points: points);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PointsRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PointsRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  PointsRequest call({Object? points = const $CopyWithPlaceholder()}) {
    return PointsRequest(
      points: points == const $CopyWithPlaceholder()
          ? _value.points
          // ignore: cast_nullable_to_non_nullable
          : points as int?,
    );
  }
}

extension $PointsRequestCopyWith on PointsRequest {
  /// Returns a callable class that can be used as follows: `instanceOfPointsRequest.copyWith(...)` or like so:`instanceOfPointsRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PointsRequestCWProxy get copyWith => _$PointsRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PointsRequest _$PointsRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PointsRequest', json, ($checkedConvert) {
      final val = PointsRequest(
        points: $checkedConvert('points', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$PointsRequestToJson(PointsRequest instance) =>
    <String, dynamic>{'points': ?instance.points};
