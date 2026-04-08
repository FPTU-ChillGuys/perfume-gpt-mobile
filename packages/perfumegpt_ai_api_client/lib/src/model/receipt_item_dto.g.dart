// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_item_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReceiptItemDtoCWProxy {
  ReceiptItemDto productName(String productName);

  ReceiptItemDto variantInfo(String variantInfo);

  ReceiptItemDto quantity(int? quantity);

  ReceiptItemDto unitPrice(num? unitPrice);

  ReceiptItemDto subtotal(num? subtotal);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReceiptItemDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReceiptItemDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ReceiptItemDto call({
    String productName,
    String variantInfo,
    int? quantity,
    num? unitPrice,
    num? subtotal,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReceiptItemDto.copyWith(...)` or call `instanceOfReceiptItemDto.copyWith.fieldName(value)` for a single field.
class _$ReceiptItemDtoCWProxyImpl implements _$ReceiptItemDtoCWProxy {
  const _$ReceiptItemDtoCWProxyImpl(this._value);

  final ReceiptItemDto _value;

  @override
  ReceiptItemDto productName(String productName) =>
      call(productName: productName);

  @override
  ReceiptItemDto variantInfo(String variantInfo) =>
      call(variantInfo: variantInfo);

  @override
  ReceiptItemDto quantity(int? quantity) => call(quantity: quantity);

  @override
  ReceiptItemDto unitPrice(num? unitPrice) => call(unitPrice: unitPrice);

  @override
  ReceiptItemDto subtotal(num? subtotal) => call(subtotal: subtotal);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReceiptItemDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReceiptItemDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ReceiptItemDto call({
    Object? productName = const $CopyWithPlaceholder(),
    Object? variantInfo = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
    Object? subtotal = const $CopyWithPlaceholder(),
  }) {
    return ReceiptItemDto(
      productName:
          productName == const $CopyWithPlaceholder() || productName == null
          ? _value.productName
          // ignore: cast_nullable_to_non_nullable
          : productName as String,
      variantInfo:
          variantInfo == const $CopyWithPlaceholder() || variantInfo == null
          ? _value.variantInfo
          // ignore: cast_nullable_to_non_nullable
          : variantInfo as String,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
      unitPrice: unitPrice == const $CopyWithPlaceholder()
          ? _value.unitPrice
          // ignore: cast_nullable_to_non_nullable
          : unitPrice as num?,
      subtotal: subtotal == const $CopyWithPlaceholder()
          ? _value.subtotal
          // ignore: cast_nullable_to_non_nullable
          : subtotal as num?,
    );
  }
}

extension $ReceiptItemDtoCopyWith on ReceiptItemDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReceiptItemDto.copyWith(...)` or `instanceOfReceiptItemDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReceiptItemDtoCWProxy get copyWith => _$ReceiptItemDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReceiptItemDto _$ReceiptItemDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReceiptItemDto', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['productName', 'variantInfo']);
      final val = ReceiptItemDto(
        productName: $checkedConvert('productName', (v) => v as String),
        variantInfo: $checkedConvert('variantInfo', (v) => v as String),
        quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
        unitPrice: $checkedConvert('unitPrice', (v) => v as num?),
        subtotal: $checkedConvert('subtotal', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$ReceiptItemDtoToJson(ReceiptItemDto instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'variantInfo': instance.variantInfo,
      'quantity': ?instance.quantity,
      'unitPrice': ?instance.unitPrice,
      'subtotal': ?instance.subtotal,
    };
