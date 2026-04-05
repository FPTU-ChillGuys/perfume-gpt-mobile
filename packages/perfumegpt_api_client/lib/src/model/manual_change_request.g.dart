// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manual_change_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ManualChangeRequestCWProxy {
  ManualChangeRequest userId(String? userId);

  ManualChangeRequest transactionType(LoyaltyTransactionType? transactionType);

  ManualChangeRequest points(int? points);

  ManualChangeRequest reason(String reason);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ManualChangeRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ManualChangeRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ManualChangeRequest call({
    String? userId,
    LoyaltyTransactionType? transactionType,
    int? points,
    String reason,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfManualChangeRequest.copyWith(...)` or call `instanceOfManualChangeRequest.copyWith.fieldName(value)` for a single field.
class _$ManualChangeRequestCWProxyImpl implements _$ManualChangeRequestCWProxy {
  const _$ManualChangeRequestCWProxyImpl(this._value);

  final ManualChangeRequest _value;

  @override
  ManualChangeRequest userId(String? userId) => call(userId: userId);

  @override
  ManualChangeRequest transactionType(
    LoyaltyTransactionType? transactionType,
  ) => call(transactionType: transactionType);

  @override
  ManualChangeRequest points(int? points) => call(points: points);

  @override
  ManualChangeRequest reason(String reason) => call(reason: reason);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ManualChangeRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ManualChangeRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ManualChangeRequest call({
    Object? userId = const $CopyWithPlaceholder(),
    Object? transactionType = const $CopyWithPlaceholder(),
    Object? points = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
  }) {
    return ManualChangeRequest(
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      transactionType: transactionType == const $CopyWithPlaceholder()
          ? _value.transactionType
          // ignore: cast_nullable_to_non_nullable
          : transactionType as LoyaltyTransactionType?,
      points: points == const $CopyWithPlaceholder()
          ? _value.points
          // ignore: cast_nullable_to_non_nullable
          : points as int?,
      reason: reason == const $CopyWithPlaceholder() || reason == null
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as String,
    );
  }
}

extension $ManualChangeRequestCopyWith on ManualChangeRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfManualChangeRequest.copyWith(...)` or `instanceOfManualChangeRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ManualChangeRequestCWProxy get copyWith =>
      _$ManualChangeRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManualChangeRequest _$ManualChangeRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ManualChangeRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['reason']);
      final val = ManualChangeRequest(
        userId: $checkedConvert('userId', (v) => v as String?),
        transactionType: $checkedConvert(
          'transactionType',
          (v) => $enumDecodeNullable(_$LoyaltyTransactionTypeEnumMap, v),
        ),
        points: $checkedConvert('points', (v) => (v as num?)?.toInt()),
        reason: $checkedConvert('reason', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ManualChangeRequestToJson(
  ManualChangeRequest instance,
) => <String, dynamic>{
  'userId': ?instance.userId,
  'transactionType': ?_$LoyaltyTransactionTypeEnumMap[instance.transactionType],
  'points': ?instance.points,
  'reason': instance.reason,
};

const _$LoyaltyTransactionTypeEnumMap = {
  LoyaltyTransactionType.spend: 'Spend',
  LoyaltyTransactionType.earn: 'Earn',
};
