// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_supplier_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantSupplierResponseCWProxy {
  VariantSupplierResponse supplierId(int? supplierId);

  VariantSupplierResponse supplierName(String supplierName);

  VariantSupplierResponse negotiatedPrice(num? negotiatedPrice);

  VariantSupplierResponse estimatedLeadTimeDays(int? estimatedLeadTimeDays);

  VariantSupplierResponse isPrimary(bool? isPrimary);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantSupplierResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantSupplierResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantSupplierResponse call({
    int? supplierId,
    String supplierName,
    num? negotiatedPrice,
    int? estimatedLeadTimeDays,
    bool? isPrimary,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVariantSupplierResponse.copyWith(...)` or call `instanceOfVariantSupplierResponse.copyWith.fieldName(value)` for a single field.
class _$VariantSupplierResponseCWProxyImpl
    implements _$VariantSupplierResponseCWProxy {
  const _$VariantSupplierResponseCWProxyImpl(this._value);

  final VariantSupplierResponse _value;

  @override
  VariantSupplierResponse supplierId(int? supplierId) =>
      call(supplierId: supplierId);

  @override
  VariantSupplierResponse supplierName(String supplierName) =>
      call(supplierName: supplierName);

  @override
  VariantSupplierResponse negotiatedPrice(num? negotiatedPrice) =>
      call(negotiatedPrice: negotiatedPrice);

  @override
  VariantSupplierResponse estimatedLeadTimeDays(int? estimatedLeadTimeDays) =>
      call(estimatedLeadTimeDays: estimatedLeadTimeDays);

  @override
  VariantSupplierResponse isPrimary(bool? isPrimary) =>
      call(isPrimary: isPrimary);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantSupplierResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantSupplierResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantSupplierResponse call({
    Object? supplierId = const $CopyWithPlaceholder(),
    Object? supplierName = const $CopyWithPlaceholder(),
    Object? negotiatedPrice = const $CopyWithPlaceholder(),
    Object? estimatedLeadTimeDays = const $CopyWithPlaceholder(),
    Object? isPrimary = const $CopyWithPlaceholder(),
  }) {
    return VariantSupplierResponse(
      supplierId: supplierId == const $CopyWithPlaceholder()
          ? _value.supplierId
          // ignore: cast_nullable_to_non_nullable
          : supplierId as int?,
      supplierName:
          supplierName == const $CopyWithPlaceholder() || supplierName == null
          ? _value.supplierName
          // ignore: cast_nullable_to_non_nullable
          : supplierName as String,
      negotiatedPrice: negotiatedPrice == const $CopyWithPlaceholder()
          ? _value.negotiatedPrice
          // ignore: cast_nullable_to_non_nullable
          : negotiatedPrice as num?,
      estimatedLeadTimeDays:
          estimatedLeadTimeDays == const $CopyWithPlaceholder()
          ? _value.estimatedLeadTimeDays
          // ignore: cast_nullable_to_non_nullable
          : estimatedLeadTimeDays as int?,
      isPrimary: isPrimary == const $CopyWithPlaceholder()
          ? _value.isPrimary
          // ignore: cast_nullable_to_non_nullable
          : isPrimary as bool?,
    );
  }
}

extension $VariantSupplierResponseCopyWith on VariantSupplierResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVariantSupplierResponse.copyWith(...)` or `instanceOfVariantSupplierResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VariantSupplierResponseCWProxy get copyWith =>
      _$VariantSupplierResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantSupplierResponse _$VariantSupplierResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VariantSupplierResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['supplierName']);
  final val = VariantSupplierResponse(
    supplierId: $checkedConvert('supplierId', (v) => (v as num?)?.toInt()),
    supplierName: $checkedConvert('supplierName', (v) => v as String),
    negotiatedPrice: $checkedConvert('negotiatedPrice', (v) => v as num?),
    estimatedLeadTimeDays: $checkedConvert(
      'estimatedLeadTimeDays',
      (v) => (v as num?)?.toInt(),
    ),
    isPrimary: $checkedConvert('isPrimary', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$VariantSupplierResponseToJson(
  VariantSupplierResponse instance,
) => <String, dynamic>{
  'supplierId': ?instance.supplierId,
  'supplierName': instance.supplierName,
  'negotiatedPrice': ?instance.negotiatedPrice,
  'estimatedLeadTimeDays': ?instance.estimatedLeadTimeDays,
  'isPrimary': ?instance.isPrimary,
};
