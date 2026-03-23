// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'points_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PointsRequestCWProxy {
  PointsRequest points(int? points);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PointsRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PointsRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  PointsRequest call({int? points});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPointsRequest.copyWith(...)` or call `instanceOfPointsRequest.copyWith.fieldName(value)` for a single field.
class _$PointsRequestCWProxyImpl implements _$PointsRequestCWProxy {
  const _$PointsRequestCWProxyImpl(this._value);

  final PointsRequest _value;

  @override
  PointsRequest points(int? points) => call(points: points);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PointsRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PointsRequest(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPointsRequest.copyWith(...)` or `instanceOfPointsRequest.copyWith.fieldName(...)`.
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
