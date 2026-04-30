// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deposit_policy_preview_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DepositPolicyPreviewResponseCWProxy {
  DepositPolicyPreviewResponse isDepositRequired(bool? isDepositRequired);

  DepositPolicyPreviewResponse depositRate(num? depositRate);

  DepositPolicyPreviewResponse depositAmount(num? depositAmount);

  DepositPolicyPreviewResponse remainingAmount(num? remainingAmount);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DepositPolicyPreviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DepositPolicyPreviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  DepositPolicyPreviewResponse call({
    bool? isDepositRequired,
    num? depositRate,
    num? depositAmount,
    num? remainingAmount,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfDepositPolicyPreviewResponse.copyWith(...)` or call `instanceOfDepositPolicyPreviewResponse.copyWith.fieldName(value)` for a single field.
class _$DepositPolicyPreviewResponseCWProxyImpl
    implements _$DepositPolicyPreviewResponseCWProxy {
  const _$DepositPolicyPreviewResponseCWProxyImpl(this._value);

  final DepositPolicyPreviewResponse _value;

  @override
  DepositPolicyPreviewResponse isDepositRequired(bool? isDepositRequired) =>
      call(isDepositRequired: isDepositRequired);

  @override
  DepositPolicyPreviewResponse depositRate(num? depositRate) =>
      call(depositRate: depositRate);

  @override
  DepositPolicyPreviewResponse depositAmount(num? depositAmount) =>
      call(depositAmount: depositAmount);

  @override
  DepositPolicyPreviewResponse remainingAmount(num? remainingAmount) =>
      call(remainingAmount: remainingAmount);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DepositPolicyPreviewResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DepositPolicyPreviewResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  DepositPolicyPreviewResponse call({
    Object? isDepositRequired = const $CopyWithPlaceholder(),
    Object? depositRate = const $CopyWithPlaceholder(),
    Object? depositAmount = const $CopyWithPlaceholder(),
    Object? remainingAmount = const $CopyWithPlaceholder(),
  }) {
    return DepositPolicyPreviewResponse(
      isDepositRequired: isDepositRequired == const $CopyWithPlaceholder()
          ? _value.isDepositRequired
          // ignore: cast_nullable_to_non_nullable
          : isDepositRequired as bool?,
      depositRate: depositRate == const $CopyWithPlaceholder()
          ? _value.depositRate
          // ignore: cast_nullable_to_non_nullable
          : depositRate as num?,
      depositAmount: depositAmount == const $CopyWithPlaceholder()
          ? _value.depositAmount
          // ignore: cast_nullable_to_non_nullable
          : depositAmount as num?,
      remainingAmount: remainingAmount == const $CopyWithPlaceholder()
          ? _value.remainingAmount
          // ignore: cast_nullable_to_non_nullable
          : remainingAmount as num?,
    );
  }
}

extension $DepositPolicyPreviewResponseCopyWith
    on DepositPolicyPreviewResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfDepositPolicyPreviewResponse.copyWith(...)` or `instanceOfDepositPolicyPreviewResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DepositPolicyPreviewResponseCWProxy get copyWith =>
      _$DepositPolicyPreviewResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DepositPolicyPreviewResponse _$DepositPolicyPreviewResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DepositPolicyPreviewResponse', json, ($checkedConvert) {
  final val = DepositPolicyPreviewResponse(
    isDepositRequired: $checkedConvert('isDepositRequired', (v) => v as bool?),
    depositRate: $checkedConvert('depositRate', (v) => v as num?),
    depositAmount: $checkedConvert('depositAmount', (v) => v as num?),
    remainingAmount: $checkedConvert('remainingAmount', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$DepositPolicyPreviewResponseToJson(
  DepositPolicyPreviewResponse instance,
) => <String, dynamic>{
  'isDepositRequired': ?instance.isDepositRequired,
  'depositRate': ?instance.depositRate,
  'depositAmount': ?instance.depositAmount,
  'remainingAmount': ?instance.remainingAmount,
};
