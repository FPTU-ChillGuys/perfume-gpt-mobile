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

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PickListItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PickListItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PickListItemResponse call({
    String? orderDetailId,
    String? variantId,
    String? variantName,
    int? quantity,
    List<PickListBatchInfo>? batches,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPickListItemResponse.copyWith(...)` or call `instanceOfPickListItemResponse.copyWith.fieldName(value)` for a single field.
class _$PickListItemResponseCWProxyImpl
    implements _$PickListItemResponseCWProxy {
  const _$PickListItemResponseCWProxyImpl(this._value);

  final PickListItemResponse _value;

  @override
  PickListItemResponse orderDetailId(String? orderDetailId) =>
      call(orderDetailId: orderDetailId);

  @override
  PickListItemResponse variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  PickListItemResponse variantName(String? variantName) =>
      call(variantName: variantName);

  @override
  PickListItemResponse quantity(int? quantity) => call(quantity: quantity);

  @override
  PickListItemResponse batches(List<PickListBatchInfo>? batches) =>
      call(batches: batches);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PickListItemResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PickListItemResponse(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPickListItemResponse.copyWith(...)` or `instanceOfPickListItemResponse.copyWith.fieldName(...)`.
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
