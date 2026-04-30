// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_store_policy_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateStorePolicyRequestCWProxy {
  UpdateStorePolicyRequest requiredDepositPercentage(
    num? requiredDepositPercentage,
  );

  UpdateStorePolicyRequest depositTimeoutMinutes(int? depositTimeoutMinutes);

  UpdateStorePolicyRequest isDepositRequiredForCOD(
    bool? isDepositRequiredForCOD,
  );

  UpdateStorePolicyRequest reviewRewardPoints(int? reviewRewardPoints);

  UpdateStorePolicyRequest stockAdjustmentAutoApprovalThreshold(
    int? stockAdjustmentAutoApprovalThreshold,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateStorePolicyRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateStorePolicyRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateStorePolicyRequest call({
    num? requiredDepositPercentage,
    int? depositTimeoutMinutes,
    bool? isDepositRequiredForCOD,
    int? reviewRewardPoints,
    int? stockAdjustmentAutoApprovalThreshold,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateStorePolicyRequest.copyWith(...)` or call `instanceOfUpdateStorePolicyRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateStorePolicyRequestCWProxyImpl
    implements _$UpdateStorePolicyRequestCWProxy {
  const _$UpdateStorePolicyRequestCWProxyImpl(this._value);

  final UpdateStorePolicyRequest _value;

  @override
  UpdateStorePolicyRequest requiredDepositPercentage(
    num? requiredDepositPercentage,
  ) => call(requiredDepositPercentage: requiredDepositPercentage);

  @override
  UpdateStorePolicyRequest depositTimeoutMinutes(int? depositTimeoutMinutes) =>
      call(depositTimeoutMinutes: depositTimeoutMinutes);

  @override
  UpdateStorePolicyRequest isDepositRequiredForCOD(
    bool? isDepositRequiredForCOD,
  ) => call(isDepositRequiredForCOD: isDepositRequiredForCOD);

  @override
  UpdateStorePolicyRequest reviewRewardPoints(int? reviewRewardPoints) =>
      call(reviewRewardPoints: reviewRewardPoints);

  @override
  UpdateStorePolicyRequest stockAdjustmentAutoApprovalThreshold(
    int? stockAdjustmentAutoApprovalThreshold,
  ) => call(
    stockAdjustmentAutoApprovalThreshold: stockAdjustmentAutoApprovalThreshold,
  );

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateStorePolicyRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateStorePolicyRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateStorePolicyRequest call({
    Object? requiredDepositPercentage = const $CopyWithPlaceholder(),
    Object? depositTimeoutMinutes = const $CopyWithPlaceholder(),
    Object? isDepositRequiredForCOD = const $CopyWithPlaceholder(),
    Object? reviewRewardPoints = const $CopyWithPlaceholder(),
    Object? stockAdjustmentAutoApprovalThreshold = const $CopyWithPlaceholder(),
  }) {
    return UpdateStorePolicyRequest(
      requiredDepositPercentage:
          requiredDepositPercentage == const $CopyWithPlaceholder()
          ? _value.requiredDepositPercentage
          // ignore: cast_nullable_to_non_nullable
          : requiredDepositPercentage as num?,
      depositTimeoutMinutes:
          depositTimeoutMinutes == const $CopyWithPlaceholder()
          ? _value.depositTimeoutMinutes
          // ignore: cast_nullable_to_non_nullable
          : depositTimeoutMinutes as int?,
      isDepositRequiredForCOD:
          isDepositRequiredForCOD == const $CopyWithPlaceholder()
          ? _value.isDepositRequiredForCOD
          // ignore: cast_nullable_to_non_nullable
          : isDepositRequiredForCOD as bool?,
      reviewRewardPoints: reviewRewardPoints == const $CopyWithPlaceholder()
          ? _value.reviewRewardPoints
          // ignore: cast_nullable_to_non_nullable
          : reviewRewardPoints as int?,
      stockAdjustmentAutoApprovalThreshold:
          stockAdjustmentAutoApprovalThreshold == const $CopyWithPlaceholder()
          ? _value.stockAdjustmentAutoApprovalThreshold
          // ignore: cast_nullable_to_non_nullable
          : stockAdjustmentAutoApprovalThreshold as int?,
    );
  }
}

extension $UpdateStorePolicyRequestCopyWith on UpdateStorePolicyRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateStorePolicyRequest.copyWith(...)` or `instanceOfUpdateStorePolicyRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateStorePolicyRequestCWProxy get copyWith =>
      _$UpdateStorePolicyRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateStorePolicyRequest _$UpdateStorePolicyRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateStorePolicyRequest', json, ($checkedConvert) {
  final val = UpdateStorePolicyRequest(
    requiredDepositPercentage: $checkedConvert(
      'requiredDepositPercentage',
      (v) => v as num?,
    ),
    depositTimeoutMinutes: $checkedConvert(
      'depositTimeoutMinutes',
      (v) => (v as num?)?.toInt(),
    ),
    isDepositRequiredForCOD: $checkedConvert(
      'isDepositRequiredForCOD',
      (v) => v as bool?,
    ),
    reviewRewardPoints: $checkedConvert(
      'reviewRewardPoints',
      (v) => (v as num?)?.toInt(),
    ),
    stockAdjustmentAutoApprovalThreshold: $checkedConvert(
      'stockAdjustmentAutoApprovalThreshold',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateStorePolicyRequestToJson(
  UpdateStorePolicyRequest instance,
) => <String, dynamic>{
  'requiredDepositPercentage': ?instance.requiredDepositPercentage,
  'depositTimeoutMinutes': ?instance.depositTimeoutMinutes,
  'isDepositRequiredForCOD': ?instance.isDepositRequiredForCOD,
  'reviewRewardPoints': ?instance.reviewRewardPoints,
  'stockAdjustmentAutoApprovalThreshold':
      ?instance.stockAdjustmentAutoApprovalThreshold,
};
