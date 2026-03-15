// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_import_detail_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateImportDetailRequestCWProxy {
  UpdateImportDetailRequest id(String? id);

  UpdateImportDetailRequest variantId(String? variantId);

  UpdateImportDetailRequest quantity(int? quantity);

  UpdateImportDetailRequest unitPrice(num? unitPrice);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateImportDetailRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateImportDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateImportDetailRequest call({
    String? id,
    String? variantId,
    int? quantity,
    num? unitPrice,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateImportDetailRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateImportDetailRequest.copyWith.fieldName(...)`
class _$UpdateImportDetailRequestCWProxyImpl
    implements _$UpdateImportDetailRequestCWProxy {
  const _$UpdateImportDetailRequestCWProxyImpl(this._value);

  final UpdateImportDetailRequest _value;

  @override
  UpdateImportDetailRequest id(String? id) => this(id: id);

  @override
  UpdateImportDetailRequest variantId(String? variantId) =>
      this(variantId: variantId);

  @override
  UpdateImportDetailRequest quantity(int? quantity) => this(quantity: quantity);

  @override
  UpdateImportDetailRequest unitPrice(num? unitPrice) =>
      this(unitPrice: unitPrice);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateImportDetailRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateImportDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateImportDetailRequest call({
    Object? id = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
  }) {
    return UpdateImportDetailRequest(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
      unitPrice: unitPrice == const $CopyWithPlaceholder()
          ? _value.unitPrice
          // ignore: cast_nullable_to_non_nullable
          : unitPrice as num?,
    );
  }
}

extension $UpdateImportDetailRequestCopyWith on UpdateImportDetailRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateImportDetailRequest.copyWith(...)` or like so:`instanceOfUpdateImportDetailRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateImportDetailRequestCWProxy get copyWith =>
      _$UpdateImportDetailRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateImportDetailRequest _$UpdateImportDetailRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateImportDetailRequest', json, ($checkedConvert) {
  final val = UpdateImportDetailRequest(
    id: $checkedConvert('id', (v) => v as String?),
    variantId: $checkedConvert('variantId', (v) => v as String?),
    quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
    unitPrice: $checkedConvert('unitPrice', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$UpdateImportDetailRequestToJson(
  UpdateImportDetailRequest instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'variantId': ?instance.variantId,
  'quantity': ?instance.quantity,
  'unitPrice': ?instance.unitPrice,
};
