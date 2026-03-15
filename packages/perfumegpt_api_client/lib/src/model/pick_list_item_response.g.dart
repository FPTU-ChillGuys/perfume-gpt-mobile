// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_list_item_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PickListItemResponseCWProxy {
  PickListItemResponse orderDetailId(String? orderDetailId);

  PickListItemResponse variantId(String? variantId);

  PickListItemResponse variantName(String? variantName);

  PickListItemResponse quantity(int? quantity);

  PickListItemResponse batches(List<PickListBatchInfo>? batches);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PickListItemResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PickListItemResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PickListItemResponse call({
    String? orderDetailId,
    String? variantId,
    String? variantName,
    int? quantity,
    List<PickListBatchInfo>? batches,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfPickListItemResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfPickListItemResponse.copyWith.fieldName(...)`
class _$PickListItemResponseCWProxyImpl
    implements _$PickListItemResponseCWProxy {
  const _$PickListItemResponseCWProxyImpl(this._value);

  final PickListItemResponse _value;

  @override
  PickListItemResponse orderDetailId(String? orderDetailId) =>
      this(orderDetailId: orderDetailId);

  @override
  PickListItemResponse variantId(String? variantId) =>
      this(variantId: variantId);

  @override
  PickListItemResponse variantName(String? variantName) =>
      this(variantName: variantName);

  @override
  PickListItemResponse quantity(int? quantity) => this(quantity: quantity);

  @override
  PickListItemResponse batches(List<PickListBatchInfo>? batches) =>
      this(batches: batches);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `PickListItemResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// PickListItemResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  PickListItemResponse call({
    Object? orderDetailId = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantName = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? batches = const $CopyWithPlaceholder(),
  }) {
    return PickListItemResponse(
      orderDetailId: orderDetailId == const $CopyWithPlaceholder()
          ? _value.orderDetailId
          // ignore: cast_nullable_to_non_nullable
          : orderDetailId as String?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      variantName: variantName == const $CopyWithPlaceholder()
          ? _value.variantName
          // ignore: cast_nullable_to_non_nullable
          : variantName as String?,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
      batches: batches == const $CopyWithPlaceholder()
          ? _value.batches
          // ignore: cast_nullable_to_non_nullable
          : batches as List<PickListBatchInfo>?,
    );
  }
}

extension $PickListItemResponseCopyWith on PickListItemResponse {
  /// Returns a callable class that can be used as follows: `instanceOfPickListItemResponse.copyWith(...)` or like so:`instanceOfPickListItemResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PickListItemResponseCWProxy get copyWith =>
      _$PickListItemResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickListItemResponse _$PickListItemResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PickListItemResponse', json, ($checkedConvert) {
  final val = PickListItemResponse(
    orderDetailId: $checkedConvert('orderDetailId', (v) => v as String?),
    variantId: $checkedConvert('variantId', (v) => v as String?),
    variantName: $checkedConvert('variantName', (v) => v as String?),
    quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
    batches: $checkedConvert(
      'batches',
      (v) => (v as List<dynamic>?)
          ?.map((e) => PickListBatchInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$PickListItemResponseToJson(
  PickListItemResponse instance,
) => <String, dynamic>{
  'orderDetailId': ?instance.orderDetailId,
  'variantId': ?instance.variantId,
  'variantName': ?instance.variantName,
  'quantity': ?instance.quantity,
  'batches': ?instance.batches?.map((e) => e.toJson()).toList(),
};
