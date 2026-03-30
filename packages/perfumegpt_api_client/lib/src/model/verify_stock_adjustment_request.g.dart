// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_stock_adjustment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VerifyStockAdjustmentRequestCWProxy {
  VerifyStockAdjustmentRequest adjustmentDetails(
    List<VerifyStockAdjustmentDetailRequest> adjustmentDetails,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VerifyStockAdjustmentRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VerifyStockAdjustmentRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  VerifyStockAdjustmentRequest call({
    List<VerifyStockAdjustmentDetailRequest> adjustmentDetails,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVerifyStockAdjustmentRequest.copyWith(...)` or call `instanceOfVerifyStockAdjustmentRequest.copyWith.fieldName(value)` for a single field.
class _$VerifyStockAdjustmentRequestCWProxyImpl
    implements _$VerifyStockAdjustmentRequestCWProxy {
  const _$VerifyStockAdjustmentRequestCWProxyImpl(this._value);

  final VerifyStockAdjustmentRequest _value;

  @override
  VerifyStockAdjustmentRequest adjustmentDetails(
    List<VerifyStockAdjustmentDetailRequest> adjustmentDetails,
  ) => call(adjustmentDetails: adjustmentDetails);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VerifyStockAdjustmentRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VerifyStockAdjustmentRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  VerifyStockAdjustmentRequest call({
    Object? adjustmentDetails = const $CopyWithPlaceholder(),
  }) {
    return VerifyStockAdjustmentRequest(
      adjustmentDetails:
          adjustmentDetails == const $CopyWithPlaceholder() ||
              adjustmentDetails == null
          ? _value.adjustmentDetails
          // ignore: cast_nullable_to_non_nullable
          : adjustmentDetails as List<VerifyStockAdjustmentDetailRequest>,
    );
  }
}

extension $VerifyStockAdjustmentRequestCopyWith
    on VerifyStockAdjustmentRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVerifyStockAdjustmentRequest.copyWith(...)` or `instanceOfVerifyStockAdjustmentRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VerifyStockAdjustmentRequestCWProxy get copyWith =>
      _$VerifyStockAdjustmentRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyStockAdjustmentRequest _$VerifyStockAdjustmentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VerifyStockAdjustmentRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['adjustmentDetails']);
  final val = VerifyStockAdjustmentRequest(
    adjustmentDetails: $checkedConvert(
      'adjustmentDetails',
      (v) => (v as List<dynamic>)
          .map(
            (e) => VerifyStockAdjustmentDetailRequest.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$VerifyStockAdjustmentRequestToJson(
  VerifyStockAdjustmentRequest instance,
) => <String, dynamic>{
  'adjustmentDetails': instance.adjustmentDetails
      .map((e) => e.toJson())
      .toList(),
};
