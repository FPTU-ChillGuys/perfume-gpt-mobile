// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pos_scan_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PosScanItemRequestCWProxy {
  PosScanItemRequest barcode(String barcode);

  PosScanItemRequest batchCode(String batchCode);

  PosScanItemRequest quantity(int? quantity);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PosScanItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PosScanItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  PosScanItemRequest call({String barcode, String batchCode, int? quantity});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPosScanItemRequest.copyWith(...)` or call `instanceOfPosScanItemRequest.copyWith.fieldName(value)` for a single field.
class _$PosScanItemRequestCWProxyImpl implements _$PosScanItemRequestCWProxy {
  const _$PosScanItemRequestCWProxyImpl(this._value);

  final PosScanItemRequest _value;

  @override
  PosScanItemRequest barcode(String barcode) => call(barcode: barcode);

  @override
  PosScanItemRequest batchCode(String batchCode) => call(batchCode: batchCode);

  @override
  PosScanItemRequest quantity(int? quantity) => call(quantity: quantity);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PosScanItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PosScanItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  PosScanItemRequest call({
    Object? barcode = const $CopyWithPlaceholder(),
    Object? batchCode = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return PosScanItemRequest(
      barcode: barcode == const $CopyWithPlaceholder() || barcode == null
          ? _value.barcode
          // ignore: cast_nullable_to_non_nullable
          : barcode as String,
      batchCode: batchCode == const $CopyWithPlaceholder() || batchCode == null
          ? _value.batchCode
          // ignore: cast_nullable_to_non_nullable
          : batchCode as String,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
    );
  }
}

extension $PosScanItemRequestCopyWith on PosScanItemRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPosScanItemRequest.copyWith(...)` or `instanceOfPosScanItemRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PosScanItemRequestCWProxy get copyWith =>
      _$PosScanItemRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PosScanItemRequest _$PosScanItemRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PosScanItemRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['barcode', 'batchCode']);
      final val = PosScanItemRequest(
        barcode: $checkedConvert('barcode', (v) => v as String),
        batchCode: $checkedConvert('batchCode', (v) => v as String),
        quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$PosScanItemRequestToJson(PosScanItemRequest instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'batchCode': instance.batchCode,
      'quantity': ?instance.quantity,
    };
