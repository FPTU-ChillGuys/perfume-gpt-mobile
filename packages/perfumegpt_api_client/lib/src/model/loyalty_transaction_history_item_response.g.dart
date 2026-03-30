// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_transaction_history_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LoyaltyTransactionHistoryItemResponseCWProxy {
  LoyaltyTransactionHistoryItemResponse id(String? id);

  LoyaltyTransactionHistoryItemResponse userId(String? userId);

  LoyaltyTransactionHistoryItemResponse voucherId(String? voucherId);

  LoyaltyTransactionHistoryItemResponse orderId(String? orderId);

  LoyaltyTransactionHistoryItemResponse transactionType(
    LoyaltyTransactionType? transactionType,
  );

  LoyaltyTransactionHistoryItemResponse pointsChanged(int? pointsChanged);

  LoyaltyTransactionHistoryItemResponse absolutePoints(int? absolutePoints);

  LoyaltyTransactionHistoryItemResponse reason(String? reason);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoyaltyTransactionHistoryItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoyaltyTransactionHistoryItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  LoyaltyTransactionHistoryItemResponse call({
    String? id,
    String? userId,
    String? voucherId,
    String? orderId,
    LoyaltyTransactionType? transactionType,
    int? pointsChanged,
    int? absolutePoints,
    String? reason,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLoyaltyTransactionHistoryItemResponse.copyWith(...)` or call `instanceOfLoyaltyTransactionHistoryItemResponse.copyWith.fieldName(value)` for a single field.
class _$LoyaltyTransactionHistoryItemResponseCWProxyImpl
    implements _$LoyaltyTransactionHistoryItemResponseCWProxy {
  const _$LoyaltyTransactionHistoryItemResponseCWProxyImpl(this._value);

  final LoyaltyTransactionHistoryItemResponse _value;

  @override
  LoyaltyTransactionHistoryItemResponse id(String? id) => call(id: id);

  @override
  LoyaltyTransactionHistoryItemResponse userId(String? userId) =>
      call(userId: userId);

  @override
  LoyaltyTransactionHistoryItemResponse voucherId(String? voucherId) =>
      call(voucherId: voucherId);

  @override
  LoyaltyTransactionHistoryItemResponse orderId(String? orderId) =>
      call(orderId: orderId);

  @override
  LoyaltyTransactionHistoryItemResponse transactionType(
    LoyaltyTransactionType? transactionType,
  ) => call(transactionType: transactionType);

  @override
  LoyaltyTransactionHistoryItemResponse pointsChanged(int? pointsChanged) =>
      call(pointsChanged: pointsChanged);

  @override
  LoyaltyTransactionHistoryItemResponse absolutePoints(int? absolutePoints) =>
      call(absolutePoints: absolutePoints);

  @override
  LoyaltyTransactionHistoryItemResponse reason(String? reason) =>
      call(reason: reason);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoyaltyTransactionHistoryItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoyaltyTransactionHistoryItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  LoyaltyTransactionHistoryItemResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? userId = const $CopyWithPlaceholder(),
    Object? voucherId = const $CopyWithPlaceholder(),
    Object? orderId = const $CopyWithPlaceholder(),
    Object? transactionType = const $CopyWithPlaceholder(),
    Object? pointsChanged = const $CopyWithPlaceholder(),
    Object? absolutePoints = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
  }) {
    return LoyaltyTransactionHistoryItemResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      userId: userId == const $CopyWithPlaceholder()
          ? _value.userId
          // ignore: cast_nullable_to_non_nullable
          : userId as String?,
      voucherId: voucherId == const $CopyWithPlaceholder()
          ? _value.voucherId
          // ignore: cast_nullable_to_non_nullable
          : voucherId as String?,
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
      transactionType: transactionType == const $CopyWithPlaceholder()
          ? _value.transactionType
          // ignore: cast_nullable_to_non_nullable
          : transactionType as LoyaltyTransactionType?,
      pointsChanged: pointsChanged == const $CopyWithPlaceholder()
          ? _value.pointsChanged
          // ignore: cast_nullable_to_non_nullable
          : pointsChanged as int?,
      absolutePoints: absolutePoints == const $CopyWithPlaceholder()
          ? _value.absolutePoints
          // ignore: cast_nullable_to_non_nullable
          : absolutePoints as int?,
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as String?,
    );
  }
}

extension $LoyaltyTransactionHistoryItemResponseCopyWith
    on LoyaltyTransactionHistoryItemResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLoyaltyTransactionHistoryItemResponse.copyWith(...)` or `instanceOfLoyaltyTransactionHistoryItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LoyaltyTransactionHistoryItemResponseCWProxy get copyWith =>
      _$LoyaltyTransactionHistoryItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoyaltyTransactionHistoryItemResponse
_$LoyaltyTransactionHistoryItemResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LoyaltyTransactionHistoryItemResponse', json, (
      $checkedConvert,
    ) {
      final val = LoyaltyTransactionHistoryItemResponse(
        id: $checkedConvert('id', (v) => v as String?),
        userId: $checkedConvert('userId', (v) => v as String?),
        voucherId: $checkedConvert('voucherId', (v) => v as String?),
        orderId: $checkedConvert('orderId', (v) => v as String?),
        transactionType: $checkedConvert(
          'transactionType',
          (v) => $enumDecodeNullable(_$LoyaltyTransactionTypeEnumMap, v),
        ),
        pointsChanged: $checkedConvert(
          'pointsChanged',
          (v) => (v as num?)?.toInt(),
        ),
        absolutePoints: $checkedConvert(
          'absolutePoints',
          (v) => (v as num?)?.toInt(),
        ),
        reason: $checkedConvert('reason', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$LoyaltyTransactionHistoryItemResponseToJson(
  LoyaltyTransactionHistoryItemResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'userId': ?instance.userId,
  'voucherId': ?instance.voucherId,
  'orderId': ?instance.orderId,
  'transactionType': ?_$LoyaltyTransactionTypeEnumMap[instance.transactionType],
  'pointsChanged': ?instance.pointsChanged,
  'absolutePoints': ?instance.absolutePoints,
  'reason': ?instance.reason,
};

const _$LoyaltyTransactionTypeEnumMap = {
  LoyaltyTransactionType.spend: 'Spend',
  LoyaltyTransactionType.earn: 'Earn',
};
