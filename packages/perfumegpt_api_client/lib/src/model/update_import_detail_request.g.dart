// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_import_detail_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateImportDetailRequestCWProxy {
  UpdateImportDetailRequest id(String? id);

  UpdateImportDetailRequest variantId(String variantId);

  UpdateImportDetailRequest expectedQuantity(int? expectedQuantity);

  UpdateImportDetailRequest unitPrice(num? unitPrice);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateImportDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateImportDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateImportDetailRequest call({
    String? id,
    String variantId,
    int? expectedQuantity,
    num? unitPrice,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateImportDetailRequest.copyWith(...)` or call `instanceOfUpdateImportDetailRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateImportDetailRequestCWProxyImpl
    implements _$UpdateImportDetailRequestCWProxy {
  const _$UpdateImportDetailRequestCWProxyImpl(this._value);

  final UpdateImportDetailRequest _value;

  @override
  UpdateImportDetailRequest id(String? id) => call(id: id);

  @override
  UpdateImportDetailRequest variantId(String variantId) =>
      call(variantId: variantId);

  @override
  UpdateImportDetailRequest expectedQuantity(int? expectedQuantity) =>
      call(expectedQuantity: expectedQuantity);

  @override
  UpdateImportDetailRequest unitPrice(num? unitPrice) =>
      call(unitPrice: unitPrice);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateImportDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateImportDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateImportDetailRequest call({
    Object? id = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? expectedQuantity = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
  }) {
    return UpdateImportDetailRequest(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      variantId: variantId == const $CopyWithPlaceholder() || variantId == null
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String,
      expectedQuantity: expectedQuantity == const $CopyWithPlaceholder()
          ? _value.expectedQuantity
          // ignore: cast_nullable_to_non_nullable
          : expectedQuantity as int?,
      unitPrice: unitPrice == const $CopyWithPlaceholder()
          ? _value.unitPrice
          // ignore: cast_nullable_to_non_nullable
          : unitPrice as num?,
    );
  }
}

extension $UpdateImportDetailRequestCopyWith on UpdateImportDetailRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateImportDetailRequest.copyWith(...)` or `instanceOfUpdateImportDetailRequest.copyWith.fieldName(...)`.
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
  $checkKeys(json, requiredKeys: const ['variantId']);
  final val = UpdateImportDetailRequest(
    id: $checkedConvert('id', (v) => v as String?),
    variantId: $checkedConvert('variantId', (v) => v as String),
    expectedQuantity: $checkedConvert(
      'expectedQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    unitPrice: $checkedConvert('unitPrice', (v) => v as num?),
  );
  return val;
});

Map<String, dynamic> _$UpdateImportDetailRequestToJson(
  UpdateImportDetailRequest instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'variantId': instance.variantId,
  'expectedQuantity': ?instance.expectedQuantity,
  'unitPrice': ?instance.unitPrice,
};
