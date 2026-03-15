// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stock_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StockResponseCWProxy {
  StockResponse id(String? id);

  StockResponse variantId(String? variantId);

  StockResponse variantSku(String? variantSku);

  StockResponse productName(String? productName);

  StockResponse volumeMl(int? volumeMl);

  StockResponse concentrationName(String? concentrationName);

  StockResponse totalQuantity(int? totalQuantity);

  StockResponse availableQuantity(int? availableQuantity);

  StockResponse lowStockThreshold(int? lowStockThreshold);

  StockResponse isLowStock(bool? isLowStock);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StockResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StockResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  StockResponse call({
    String? id,
    String? variantId,
    String? variantSku,
    String? productName,
    int? volumeMl,
    String? concentrationName,
    int? totalQuantity,
    int? availableQuantity,
    int? lowStockThreshold,
    bool? isLowStock,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStockResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStockResponse.copyWith.fieldName(...)`
class _$StockResponseCWProxyImpl implements _$StockResponseCWProxy {
  const _$StockResponseCWProxyImpl(this._value);

  final StockResponse _value;

  @override
  StockResponse id(String? id) => this(id: id);

  @override
  StockResponse variantId(String? variantId) => this(variantId: variantId);

  @override
  StockResponse variantSku(String? variantSku) => this(variantSku: variantSku);

  @override
  StockResponse productName(String? productName) =>
      this(productName: productName);

  @override
  StockResponse volumeMl(int? volumeMl) => this(volumeMl: volumeMl);

  @override
  StockResponse concentrationName(String? concentrationName) =>
      this(concentrationName: concentrationName);

  @override
  StockResponse totalQuantity(int? totalQuantity) =>
      this(totalQuantity: totalQuantity);

  @override
  StockResponse availableQuantity(int? availableQuantity) =>
      this(availableQuantity: availableQuantity);

  @override
  StockResponse lowStockThreshold(int? lowStockThreshold) =>
      this(lowStockThreshold: lowStockThreshold);

  @override
  StockResponse isLowStock(bool? isLowStock) => this(isLowStock: isLowStock);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StockResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StockResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  StockResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantSku = const $CopyWithPlaceholder(),
    Object? productName = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? concentrationName = const $CopyWithPlaceholder(),
    Object? totalQuantity = const $CopyWithPlaceholder(),
    Object? availableQuantity = const $CopyWithPlaceholder(),
    Object? lowStockThreshold = const $CopyWithPlaceholder(),
    Object? isLowStock = const $CopyWithPlaceholder(),
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
      variantSku: variantSku == const $CopyWithPlaceholder()
          ? _value.variantSku
          // ignore: cast_nullable_to_non_nullable
          : variantSku as String?,
      productName: productName == const $CopyWithPlaceholder()
          ? _value.productName
          // ignore: cast_nullable_to_non_nullable
          : productName as String?,
      volumeMl: volumeMl == const $CopyWithPlaceholder()
          ? _value.volumeMl
          // ignore: cast_nullable_to_non_nullable
          : volumeMl as int?,
      concentrationName: concentrationName == const $CopyWithPlaceholder()
          ? _value.concentrationName
          // ignore: cast_nullable_to_non_nullable
          : concentrationName as String?,
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
      isLowStock: isLowStock == const $CopyWithPlaceholder()
          ? _value.isLowStock
          // ignore: cast_nullable_to_non_nullable
          : isLowStock as bool?,
    );
  }
}

extension $StockResponseCopyWith on StockResponse {
  /// Returns a callable class that can be used as follows: `instanceOfStockResponse.copyWith(...)` or like so:`instanceOfStockResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StockResponseCWProxy get copyWith => _$StockResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockResponse _$StockResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StockResponse', json, ($checkedConvert) {
      final val = StockResponse(
        id: $checkedConvert('id', (v) => v as String?),
        variantId: $checkedConvert('variantId', (v) => v as String?),
        variantSku: $checkedConvert('variantSku', (v) => v as String?),
        productName: $checkedConvert('productName', (v) => v as String?),
        volumeMl: $checkedConvert('volumeMl', (v) => (v as num?)?.toInt()),
        concentrationName: $checkedConvert(
          'concentrationName',
          (v) => v as String?,
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
        isLowStock: $checkedConvert('isLowStock', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$StockResponseToJson(StockResponse instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'variantId': ?instance.variantId,
      'variantSku': ?instance.variantSku,
      'productName': ?instance.productName,
      'volumeMl': ?instance.volumeMl,
      'concentrationName': ?instance.concentrationName,
      'totalQuantity': ?instance.totalQuantity,
      'availableQuantity': ?instance.availableQuantity,
      'lowStockThreshold': ?instance.lowStockThreshold,
      'isLowStock': ?instance.isLowStock,
    };
