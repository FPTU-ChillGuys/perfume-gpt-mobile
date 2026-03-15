// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_stock_adjustment_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VerifyStockAdjustmentRequestCWProxy {
  VerifyStockAdjustmentRequest adjustmentDetails(
    List<VerifyStockAdjustmentDetailRequest>? adjustmentDetails,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VerifyStockAdjustmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VerifyStockAdjustmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  VerifyStockAdjustmentRequest call({
    List<VerifyStockAdjustmentDetailRequest>? adjustmentDetails,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVerifyStockAdjustmentRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVerifyStockAdjustmentRequest.copyWith.fieldName(...)`
class _$VerifyStockAdjustmentRequestCWProxyImpl
    implements _$VerifyStockAdjustmentRequestCWProxy {
  const _$VerifyStockAdjustmentRequestCWProxyImpl(this._value);

  final VerifyStockAdjustmentRequest _value;

  @override
  VerifyStockAdjustmentRequest adjustmentDetails(
    List<VerifyStockAdjustmentDetailRequest>? adjustmentDetails,
  ) => this(adjustmentDetails: adjustmentDetails);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VerifyStockAdjustmentRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VerifyStockAdjustmentRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  VerifyStockAdjustmentRequest call({
    Object? adjustmentDetails = const $CopyWithPlaceholder(),
  }) {
    return VerifyStockAdjustmentRequest(
      adjustmentDetails: adjustmentDetails == const $CopyWithPlaceholder()
          ? _value.adjustmentDetails
          // ignore: cast_nullable_to_non_nullable
          : adjustmentDetails as List<VerifyStockAdjustmentDetailRequest>?,
    );
  }
}

extension $VerifyStockAdjustmentRequestCopyWith
    on VerifyStockAdjustmentRequest {
  /// Returns a callable class that can be used as follows: `instanceOfVerifyStockAdjustmentRequest.copyWith(...)` or like so:`instanceOfVerifyStockAdjustmentRequest.copyWith.fieldName(...)`.
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
  final val = VerifyStockAdjustmentRequest(
    adjustmentDetails: $checkedConvert(
      'adjustmentDetails',
      (v) => (v as List<dynamic>?)
          ?.map(
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
  'adjustmentDetails': ?instance.adjustmentDetails
      ?.map((e) => e.toJson())
      .toList(),
};
