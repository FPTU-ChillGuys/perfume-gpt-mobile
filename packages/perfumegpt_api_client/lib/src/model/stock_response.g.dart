// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StockResponseCWProxy {
  StockResponse id(String? id);

  StockResponse variantId(String? variantId);

  StockResponse variantSku(String variantSku);

  StockResponse productName(String productName);

  StockResponse variantImageUrl(String variantImageUrl);

  StockResponse replenishmentPolicy(ReplenishmentPolicy replenishmentPolicy);

  StockResponse variantStatus(VariantStatus variantStatus);

  StockResponse volumeMl(int? volumeMl);

  StockResponse concentrationName(String concentrationName);

  StockResponse totalQuantity(int? totalQuantity);

  StockResponse availableQuantity(int? availableQuantity);

  StockResponse lowStockThreshold(int? lowStockThreshold);

  StockResponse status(StockStatus? status);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  StockResponse call({
    String? id,
    String? variantId,
    String variantSku,
    String productName,
    String variantImageUrl,
    ReplenishmentPolicy replenishmentPolicy,
    VariantStatus variantStatus,
    int? volumeMl,
    String concentrationName,
    int? totalQuantity,
    int? availableQuantity,
    int? lowStockThreshold,
    StockStatus? status,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfStockResponse.copyWith(...)` or call `instanceOfStockResponse.copyWith.fieldName(value)` for a single field.
class _$StockResponseCWProxyImpl implements _$StockResponseCWProxy {
  const _$StockResponseCWProxyImpl(this._value);

  final StockResponse _value;

  @override
  StockResponse id(String? id) => call(id: id);

  @override
  StockResponse variantId(String? variantId) => call(variantId: variantId);

  @override
  StockResponse variantSku(String variantSku) => call(variantSku: variantSku);

  @override
  StockResponse productName(String productName) =>
      call(productName: productName);

  @override
  StockResponse variantImageUrl(String variantImageUrl) =>
      call(variantImageUrl: variantImageUrl);

  @override
  StockResponse replenishmentPolicy(ReplenishmentPolicy replenishmentPolicy) =>
      call(replenishmentPolicy: replenishmentPolicy);

  @override
  StockResponse variantStatus(VariantStatus variantStatus) =>
      call(variantStatus: variantStatus);

  @override
  StockResponse volumeMl(int? volumeMl) => call(volumeMl: volumeMl);

  @override
  StockResponse concentrationName(String concentrationName) =>
      call(concentrationName: concentrationName);

  @override
  StockResponse totalQuantity(int? totalQuantity) =>
      call(totalQuantity: totalQuantity);

  @override
  StockResponse availableQuantity(int? availableQuantity) =>
      call(availableQuantity: availableQuantity);

  @override
  StockResponse lowStockThreshold(int? lowStockThreshold) =>
      call(lowStockThreshold: lowStockThreshold);

  @override
  StockResponse status(StockStatus? status) => call(status: status);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `StockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// StockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  StockResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantSku = const $CopyWithPlaceholder(),
    Object? productName = const $CopyWithPlaceholder(),
    Object? variantImageUrl = const $CopyWithPlaceholder(),
    Object? replenishmentPolicy = const $CopyWithPlaceholder(),
    Object? variantStatus = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? concentrationName = const $CopyWithPlaceholder(),
    Object? totalQuantity = const $CopyWithPlaceholder(),
    Object? availableQuantity = const $CopyWithPlaceholder(),
    Object? lowStockThreshold = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
  }) {
    return StockResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      variantSku:
          variantSku == const $CopyWithPlaceholder() || variantSku == null
          ? _value.variantSku
          // ignore: cast_nullable_to_non_nullable
          : variantSku as String,
      productName:
          productName == const $CopyWithPlaceholder() || productName == null
          ? _value.productName
          // ignore: cast_nullable_to_non_nullable
          : productName as String,
      variantImageUrl:
          variantImageUrl == const $CopyWithPlaceholder() ||
              variantImageUrl == null
          ? _value.variantImageUrl
          // ignore: cast_nullable_to_non_nullable
          : variantImageUrl as String,
      replenishmentPolicy:
          replenishmentPolicy == const $CopyWithPlaceholder() ||
              replenishmentPolicy == null
          ? _value.replenishmentPolicy
          // ignore: cast_nullable_to_non_nullable
          : replenishmentPolicy as ReplenishmentPolicy,
      variantStatus:
          variantStatus == const $CopyWithPlaceholder() || variantStatus == null
          ? _value.variantStatus
          // ignore: cast_nullable_to_non_nullable
          : variantStatus as VariantStatus,
      volumeMl: volumeMl == const $CopyWithPlaceholder()
          ? _value.volumeMl
          // ignore: cast_nullable_to_non_nullable
          : volumeMl as int?,
      concentrationName:
          concentrationName == const $CopyWithPlaceholder() ||
              concentrationName == null
          ? _value.concentrationName
          // ignore: cast_nullable_to_non_nullable
          : concentrationName as String,
      totalQuantity: totalQuantity == const $CopyWithPlaceholder()
          ? _value.totalQuantity
          // ignore: cast_nullable_to_non_nullable
          : totalQuantity as int?,
      availableQuantity: availableQuantity == const $CopyWithPlaceholder()
          ? _value.availableQuantity
          // ignore: cast_nullable_to_non_nullable
          : availableQuantity as int?,
      lowStockThreshold: lowStockThreshold == const $CopyWithPlaceholder()
          ? _value.lowStockThreshold
          // ignore: cast_nullable_to_non_nullable
          : lowStockThreshold as int?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as StockStatus?,
    );
  }
}

extension $StockResponseCopyWith on StockResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfStockResponse.copyWith(...)` or `instanceOfStockResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StockResponseCWProxy get copyWith => _$StockResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockResponse _$StockResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StockResponse', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const [
          'variantSku',
          'productName',
          'variantImageUrl',
          'replenishmentPolicy',
          'variantStatus',
          'concentrationName',
        ],
      );
      final val = StockResponse(
        id: $checkedConvert('id', (v) => v as String?),
        variantId: $checkedConvert('variantId', (v) => v as String?),
        variantSku: $checkedConvert('variantSku', (v) => v as String),
        productName: $checkedConvert('productName', (v) => v as String),
        variantImageUrl: $checkedConvert('variantImageUrl', (v) => v as String),
        replenishmentPolicy: $checkedConvert(
          'replenishmentPolicy',
          (v) => $enumDecode(_$ReplenishmentPolicyEnumMap, v),
        ),
        variantStatus: $checkedConvert(
          'variantStatus',
          (v) => $enumDecode(_$VariantStatusEnumMap, v),
        ),
        volumeMl: $checkedConvert('volumeMl', (v) => (v as num?)?.toInt()),
        concentrationName: $checkedConvert(
          'concentrationName',
          (v) => v as String,
        ),
        totalQuantity: $checkedConvert(
          'totalQuantity',
          (v) => (v as num?)?.toInt(),
        ),
        availableQuantity: $checkedConvert(
          'availableQuantity',
          (v) => (v as num?)?.toInt(),
        ),
        lowStockThreshold: $checkedConvert(
          'lowStockThreshold',
          (v) => (v as num?)?.toInt(),
        ),
        status: $checkedConvert(
          'status',
          (v) => $enumDecodeNullable(_$StockStatusEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$StockResponseToJson(StockResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'variantId': ?instance.variantId,
      'variantSku': instance.variantSku,
      'productName': instance.productName,
      'variantImageUrl': instance.variantImageUrl,
      'replenishmentPolicy':
          _$ReplenishmentPolicyEnumMap[instance.replenishmentPolicy]!,
      'variantStatus': _$VariantStatusEnumMap[instance.variantStatus]!,
      'volumeMl': ?instance.volumeMl,
      'concentrationName': instance.concentrationName,
      'totalQuantity': ?instance.totalQuantity,
      'availableQuantity': ?instance.availableQuantity,
      'lowStockThreshold': ?instance.lowStockThreshold,
      'status': ?_$StockStatusEnumMap[instance.status],
    };

const _$ReplenishmentPolicyEnumMap = {
  ReplenishmentPolicy.autoRestock: 'AutoRestock',
  ReplenishmentPolicy.manualOnly: 'ManualOnly',
  ReplenishmentPolicy.doNotRestock: 'DoNotRestock',
};

const _$VariantStatusEnumMap = {
  VariantStatus.active: 'Active',
  VariantStatus.inactive: 'Inactive',
  VariantStatus.discontinued: 'Discontinued',
};

const _$StockStatusEnumMap = {
  StockStatus.outOfStock: 'OutOfStock',
  StockStatus.lowStock: 'LowStock',
  StockStatus.normal: 'Normal',
};
