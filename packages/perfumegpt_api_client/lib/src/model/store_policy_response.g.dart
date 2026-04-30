// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_policy_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StorePolicyResponseCWProxy {
  StorePolicyResponse id(String? id);

  StorePolicyResponse requiredDepositPercentage(num? requiredDepositPercentage);

  StorePolicyResponse depositTimeoutMinutes(int? depositTimeoutMinutes);

  StorePolicyResponse isDepositRequiredForCOD(bool? isDepositRequiredForCOD);

  StorePolicyResponse reviewRewardPoints(int? reviewRewardPoints);

  StorePolicyResponse stockAdjustmentAutoApprovalThreshold(
    int? stockAdjustmentAutoApprovalThreshold,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StorePolicyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StorePolicyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  StorePolicyResponse call({
    String? id,
    num? requiredDepositPercentage,
    int? depositTimeoutMinutes,
    bool? isDepositRequiredForCOD,
    int? reviewRewardPoints,
    int? stockAdjustmentAutoApprovalThreshold,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfStorePolicyResponse.copyWith(...)` or call `instanceOfStorePolicyResponse.copyWith.fieldName(value)` for a single field.
class _$StorePolicyResponseCWProxyImpl implements _$StorePolicyResponseCWProxy {
  const _$StorePolicyResponseCWProxyImpl(this._value);

  final StorePolicyResponse _value;

  @override
  StorePolicyResponse id(String? id) => call(id: id);

  @override
  StorePolicyResponse requiredDepositPercentage(
    num? requiredDepositPercentage,
  ) => call(requiredDepositPercentage: requiredDepositPercentage);

  @override
  StorePolicyResponse depositTimeoutMinutes(int? depositTimeoutMinutes) =>
      call(depositTimeoutMinutes: depositTimeoutMinutes);

  @override
  StorePolicyResponse isDepositRequiredForCOD(bool? isDepositRequiredForCOD) =>
      call(isDepositRequiredForCOD: isDepositRequiredForCOD);

  @override
  StorePolicyResponse reviewRewardPoints(int? reviewRewardPoints) =>
      call(reviewRewardPoints: reviewRewardPoints);

  @override
  StorePolicyResponse stockAdjustmentAutoApprovalThreshold(
    int? stockAdjustmentAutoApprovalThreshold,
  ) => call(
    stockAdjustmentAutoApprovalThreshold: stockAdjustmentAutoApprovalThreshold,
  );

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StorePolicyResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StorePolicyResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  StorePolicyResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? requiredDepositPercentage = const $CopyWithPlaceholder(),
    Object? depositTimeoutMinutes = const $CopyWithPlaceholder(),
    Object? isDepositRequiredForCOD = const $CopyWithPlaceholder(),
    Object? reviewRewardPoints = const $CopyWithPlaceholder(),
    Object? stockAdjustmentAutoApprovalThreshold = const $CopyWithPlaceholder(),
  }) {
    return StorePolicyResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
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

extension $StorePolicyResponseCopyWith on StorePolicyResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfStorePolicyResponse.copyWith(...)` or `instanceOfStorePolicyResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StorePolicyResponseCWProxy get copyWith =>
      _$StorePolicyResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StorePolicyResponse _$StorePolicyResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StorePolicyResponse', json, ($checkedConvert) {
      final val = StorePolicyResponse(
        id: $checkedConvert('id', (v) => v as String?),
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

Map<String, dynamic> _$StorePolicyResponseToJson(
  StorePolicyResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'requiredDepositPercentage': ?instance.requiredDepositPercentage,
  'depositTimeoutMinutes': ?instance.depositTimeoutMinutes,
  'isDepositRequiredForCOD': ?instance.isDepositRequiredForCOD,
  'reviewRewardPoints': ?instance.reviewRewardPoints,
  'stockAdjustmentAutoApprovalThreshold':
      ?instance.stockAdjustmentAutoApprovalThreshold,
};
