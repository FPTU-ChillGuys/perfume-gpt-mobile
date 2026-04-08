// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'batch_lookup_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BatchLookupResponseCWProxy {
  BatchLookupResponse id(String? id);

  BatchLookupResponse batchCode(String batchCode);

  BatchLookupResponse variantId(String? variantId);

  BatchLookupResponse sku(String sku);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BatchLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BatchLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BatchLookupResponse call({
    String? id,
    String batchCode,
    String? variantId,
    String sku,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBatchLookupResponse.copyWith(...)` or call `instanceOfBatchLookupResponse.copyWith.fieldName(value)` for a single field.
class _$BatchLookupResponseCWProxyImpl implements _$BatchLookupResponseCWProxy {
  const _$BatchLookupResponseCWProxyImpl(this._value);

  final BatchLookupResponse _value;

  @override
  BatchLookupResponse id(String? id) => call(id: id);

  @override
  BatchLookupResponse batchCode(String batchCode) => call(batchCode: batchCode);

  @override
  BatchLookupResponse variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  BatchLookupResponse sku(String sku) => call(sku: sku);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BatchLookupResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BatchLookupResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BatchLookupResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? batchCode = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? sku = const $CopyWithPlaceholder(),
  }) {
    return BatchLookupResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      batchCode: batchCode == const $CopyWithPlaceholder() || batchCode == null
          ? _value.batchCode
          // ignore: cast_nullable_to_non_nullable
          : batchCode as String,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      sku: sku == const $CopyWithPlaceholder() || sku == null
          ? _value.sku
          // ignore: cast_nullable_to_non_nullable
          : sku as String,
    );
  }
}

extension $BatchLookupResponseCopyWith on BatchLookupResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBatchLookupResponse.copyWith(...)` or `instanceOfBatchLookupResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BatchLookupResponseCWProxy get copyWith =>
      _$BatchLookupResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BatchLookupResponse _$BatchLookupResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('BatchLookupResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['batchCode', 'sku']);
      final val = BatchLookupResponse(
        id: $checkedConvert('id', (v) => v as String?),
        batchCode: $checkedConvert('batchCode', (v) => v as String),
        variantId: $checkedConvert('variantId', (v) => v as String?),
        sku: $checkedConvert('sku', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$BatchLookupResponseToJson(
  BatchLookupResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'batchCode': instance.batchCode,
  'variantId': ?instance.variantId,
  'sku': instance.sku,
};
