// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_stock_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$InventoryStockResponseCWProxy {
  InventoryStockResponse concentrationName(String concentrationName);

  InventoryStockResponse id(String id);

  InventoryStockResponse isLowStock(bool isLowStock);

  InventoryStockResponse lowStockThreshold(num lowStockThreshold);

  InventoryStockResponse productName(String productName);

  InventoryStockResponse totalQuantity(num totalQuantity);

  InventoryStockResponse variantId(String variantId);

  InventoryStockResponse variantSku(String variantSku);

  InventoryStockResponse volumeMl(num volumeMl);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryStockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryStockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryStockResponse call({
    String concentrationName,
    String id,
    bool isLowStock,
    num lowStockThreshold,
    String productName,
    num totalQuantity,
    String variantId,
    String variantSku,
    num volumeMl,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfInventoryStockResponse.copyWith(...)` or call `instanceOfInventoryStockResponse.copyWith.fieldName(value)` for a single field.
class _$InventoryStockResponseCWProxyImpl
    implements _$InventoryStockResponseCWProxy {
  const _$InventoryStockResponseCWProxyImpl(this._value);

  final InventoryStockResponse _value;

  @override
  InventoryStockResponse concentrationName(String concentrationName) =>
      call(concentrationName: concentrationName);

  @override
  InventoryStockResponse id(String id) => call(id: id);

  @override
  InventoryStockResponse isLowStock(bool isLowStock) =>
      call(isLowStock: isLowStock);

  @override
  InventoryStockResponse lowStockThreshold(num lowStockThreshold) =>
      call(lowStockThreshold: lowStockThreshold);

  @override
  InventoryStockResponse productName(String productName) =>
      call(productName: productName);

  @override
  InventoryStockResponse totalQuantity(num totalQuantity) =>
      call(totalQuantity: totalQuantity);

  @override
  InventoryStockResponse variantId(String variantId) =>
      call(variantId: variantId);

  @override
  InventoryStockResponse variantSku(String variantSku) =>
      call(variantSku: variantSku);

  @override
  InventoryStockResponse volumeMl(num volumeMl) => call(volumeMl: volumeMl);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `InventoryStockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// InventoryStockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  InventoryStockResponse call({
    Object? concentrationName = const $CopyWithPlaceholder(),
    Object? id = const $CopyWithPlaceholder(),
    Object? isLowStock = const $CopyWithPlaceholder(),
    Object? lowStockThreshold = const $CopyWithPlaceholder(),
    Object? productName = const $CopyWithPlaceholder(),
    Object? totalQuantity = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantSku = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
  }) {
    return InventoryStockResponse(
      concentrationName:
          concentrationName == const $CopyWithPlaceholder() ||
              concentrationName == null
          ? _value.concentrationName
          // ignore: cast_nullable_to_non_nullable
          : concentrationName as String,
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      isLowStock:
          isLowStock == const $CopyWithPlaceholder() || isLowStock == null
          ? _value.isLowStock
          // ignore: cast_nullable_to_non_nullable
          : isLowStock as bool,
      lowStockThreshold:
          lowStockThreshold == const $CopyWithPlaceholder() ||
              lowStockThreshold == null
          ? _value.lowStockThreshold
          // ignore: cast_nullable_to_non_nullable
          : lowStockThreshold as num,
      productName:
          productName == const $CopyWithPlaceholder() || productName == null
          ? _value.productName
          // ignore: cast_nullable_to_non_nullable
          : productName as String,
      totalQuantity:
          totalQuantity == const $CopyWithPlaceholder() || totalQuantity == null
          ? _value.totalQuantity
          // ignore: cast_nullable_to_non_nullable
          : totalQuantity as num,
      variantId: variantId == const $CopyWithPlaceholder() || variantId == null
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String,
      variantSku:
          variantSku == const $CopyWithPlaceholder() || variantSku == null
          ? _value.variantSku
          // ignore: cast_nullable_to_non_nullable
          : variantSku as String,
      volumeMl: volumeMl == const $CopyWithPlaceholder() || volumeMl == null
          ? _value.volumeMl
          // ignore: cast_nullable_to_non_nullable
          : volumeMl as num,
    );
  }
}

extension $InventoryStockResponseCopyWith on InventoryStockResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfInventoryStockResponse.copyWith(...)` or `instanceOfInventoryStockResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$InventoryStockResponseCWProxy get copyWith =>
      _$InventoryStockResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryStockResponse _$InventoryStockResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InventoryStockResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'concentrationName',
      'id',
      'isLowStock',
      'lowStockThreshold',
      'productName',
      'totalQuantity',
      'variantId',
      'variantSku',
      'volumeMl',
    ],
  );
  final val = InventoryStockResponse(
    concentrationName: $checkedConvert('concentrationName', (v) => v as String),
    id: $checkedConvert('id', (v) => v as String),
    isLowStock: $checkedConvert('isLowStock', (v) => v as bool),
    lowStockThreshold: $checkedConvert('lowStockThreshold', (v) => v as num),
    productName: $checkedConvert('productName', (v) => v as String),
    totalQuantity: $checkedConvert('totalQuantity', (v) => v as num),
    variantId: $checkedConvert('variantId', (v) => v as String),
    variantSku: $checkedConvert('variantSku', (v) => v as String),
    volumeMl: $checkedConvert('volumeMl', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$InventoryStockResponseToJson(
  InventoryStockResponse instance,
) => <String, dynamic>{
  'concentrationName': instance.concentrationName,
  'id': instance.id,
  'isLowStock': instance.isLowStock,
  'lowStockThreshold': instance.lowStockThreshold,
  'productName': instance.productName,
  'totalQuantity': instance.totalQuantity,
  'variantId': instance.variantId,
  'variantSku': instance.variantSku,
  'volumeMl': instance.volumeMl,
};
