// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_stock_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateStockRequestCWProxy {
  UpdateStockRequest lowStockThreshold(int? lowStockThreshold);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateStockRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateStockRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateStockRequest call({int? lowStockThreshold});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateStockRequest.copyWith(...)` or call `instanceOfUpdateStockRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateStockRequestCWProxyImpl implements _$UpdateStockRequestCWProxy {
  const _$UpdateStockRequestCWProxyImpl(this._value);

  final UpdateStockRequest _value;

  @override
  UpdateStockRequest lowStockThreshold(int? lowStockThreshold) =>
      call(lowStockThreshold: lowStockThreshold);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateStockRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateStockRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateStockRequest call({
    Object? lowStockThreshold = const $CopyWithPlaceholder(),
  }) {
    return UpdateStockRequest(
      lowStockThreshold: lowStockThreshold == const $CopyWithPlaceholder()
          ? _value.lowStockThreshold
          // ignore: cast_nullable_to_non_nullable
          : lowStockThreshold as int?,
    );
  }
}

extension $UpdateStockRequestCopyWith on UpdateStockRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateStockRequest.copyWith(...)` or `instanceOfUpdateStockRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateStockRequestCWProxy get copyWith =>
      _$UpdateStockRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateStockRequest _$UpdateStockRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateStockRequest', json, ($checkedConvert) {
      final val = UpdateStockRequest(
        lowStockThreshold: $checkedConvert(
          'lowStockThreshold',
          (v) => (v as num?)?.toInt(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UpdateStockRequestToJson(UpdateStockRequest instance) =>
    <String, dynamic>{'lowStockThreshold': ?instance.lowStockThreshold};
