// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_list_items.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$OrderDetailListItemsCWProxy {
  OrderDetailListItems variantId(String? variantId);

  OrderDetailListItems variantName(String? variantName);

  OrderDetailListItems imageUrl(String? imageUrl);

  OrderDetailListItems quantity(int? quantity);

  OrderDetailListItems total(int? total);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderDetailListItems(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderDetailListItems(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderDetailListItems call({
    String? variantId,
    String? variantName,
    String? imageUrl,
    int? quantity,
    int? total,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfOrderDetailListItems.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfOrderDetailListItems.copyWith.fieldName(...)`
class _$OrderDetailListItemsCWProxyImpl
    implements _$OrderDetailListItemsCWProxy {
  const _$OrderDetailListItemsCWProxyImpl(this._value);

  final OrderDetailListItems _value;

  @override
  OrderDetailListItems variantId(String? variantId) =>
      this(variantId: variantId);

  @override
  OrderDetailListItems variantName(String? variantName) =>
      this(variantName: variantName);

  @override
  OrderDetailListItems imageUrl(String? imageUrl) => this(imageUrl: imageUrl);

  @override
  OrderDetailListItems quantity(int? quantity) => this(quantity: quantity);

  @override
  OrderDetailListItems total(int? total) => this(total: total);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `OrderDetailListItems(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// OrderDetailListItems(...).copyWith(id: 12, name: "My name")
  /// ````
  OrderDetailListItems call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantName = const $CopyWithPlaceholder(),
    Object? imageUrl = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? total = const $CopyWithPlaceholder(),
  }) {
    return OrderDetailListItems(
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      variantName: variantName == const $CopyWithPlaceholder()
          ? _value.variantName
          // ignore: cast_nullable_to_non_nullable
          : variantName as String?,
      imageUrl: imageUrl == const $CopyWithPlaceholder()
          ? _value.imageUrl
          // ignore: cast_nullable_to_non_nullable
          : imageUrl as String?,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
      total: total == const $CopyWithPlaceholder()
          ? _value.total
          // ignore: cast_nullable_to_non_nullable
          : total as int?,
    );
  }
}

extension $OrderDetailListItemsCopyWith on OrderDetailListItems {
  /// Returns a callable class that can be used as follows: `instanceOfOrderDetailListItems.copyWith(...)` or like so:`instanceOfOrderDetailListItems.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$OrderDetailListItemsCWProxy get copyWith =>
      _$OrderDetailListItemsCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderDetailListItems _$OrderDetailListItemsFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OrderDetailListItems', json, ($checkedConvert) {
  final val = OrderDetailListItems(
    variantId: $checkedConvert('variantId', (v) => v as String?),
    variantName: $checkedConvert('variantName', (v) => v as String?),
    imageUrl: $checkedConvert('imageUrl', (v) => v as String?),
    quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
    total: $checkedConvert('total', (v) => (v as num?)?.toInt()),
  );
  return val;
});

Map<String, dynamic> _$OrderDetailListItemsToJson(
  OrderDetailListItems instance,
) => <String, dynamic>{
  'variantId': ?instance.variantId,
  'variantName': ?instance.variantName,
  'imageUrl': ?instance.imageUrl,
  'quantity': ?instance.quantity,
  'total': ?instance.total,
};
