// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_import_detail_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateImportDetailRequestCWProxy {
  CreateImportDetailRequest variantId(String? variantId);

  CreateImportDetailRequest quantity(int? quantity);

  CreateImportDetailRequest unitPrice(num? unitPrice);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateImportDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateImportDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateImportDetailRequest call({
    String? variantId,
    int? quantity,
    num? unitPrice,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateImportDetailRequest.copyWith(...)` or call `instanceOfCreateImportDetailRequest.copyWith.fieldName(value)` for a single field.
class _$CreateImportDetailRequestCWProxyImpl
    implements _$CreateImportDetailRequestCWProxy {
  const _$CreateImportDetailRequestCWProxyImpl(this._value);

  final CreateImportDetailRequest _value;

  @override
  CreateImportDetailRequest variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  CreateImportDetailRequest quantity(int? quantity) => call(quantity: quantity);

  @override
  CreateImportDetailRequest unitPrice(num? unitPrice) =>
      call(unitPrice: unitPrice);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateImportDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateImportDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateImportDetailRequest call({
    Object? variantId = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
  }) {
    return CreateImportDetailRequest(
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

extension $CreateImportDetailRequestCopyWith on CreateImportDetailRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateImportDetailRequest.copyWith(...)` or `instanceOfCreateImportDetailRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateImportDetailRequestCWProxy get copyWith =>
      _$CreateImportDetailRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateImportDetailRequest _$CreateImportDetailRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateImportDetailRequest', json, ($checkedConvert) {
  final val = CreateImportDetailRequest(
    variantId: $checkedConvert('variantId', (v) => v as String?),
    quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
    unitPrice: $checkedConvert('unitPrice', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$CreateImportDetailRequestToJson(
  CreateImportDetailRequest instance,
) => <String, dynamic>{
  'variantId': ?instance.variantId,
  'quantity': ?instance.quantity,
  'unitPrice': ?instance.unitPrice,
};
