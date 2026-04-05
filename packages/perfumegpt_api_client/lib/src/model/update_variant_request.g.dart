// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_variant_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateVariantRequestCWProxy {
  UpdateVariantRequest sku(String sku);

  UpdateVariantRequest barcode(String barcode);

  UpdateVariantRequest volumeMl(int? volumeMl);

  UpdateVariantRequest concentrationId(int? concentrationId);

  UpdateVariantRequest type(VariantType? type);

  UpdateVariantRequest basePrice(num? basePrice);

  UpdateVariantRequest retailPrice(num? retailPrice);

  UpdateVariantRequest status(VariantStatus? status);

  UpdateVariantRequest sillage(int? sillage);

  UpdateVariantRequest longevity(int? longevity);

  UpdateVariantRequest mediaIdsToDelete(List<String>? mediaIdsToDelete);

  UpdateVariantRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  );

  UpdateVariantRequest attributes(List<ProductAttributeDto>? attributes);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateVariantRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateVariantRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateVariantRequest call({
    String sku,
    String barcode,
    int? volumeMl,
    int? concentrationId,
    VariantType? type,
    num? basePrice,
    num? retailPrice,
    VariantStatus? status,
    int? sillage,
    int? longevity,
    List<String>? mediaIdsToDelete,
    List<String>? temporaryMediaIdsToAdd,
    List<ProductAttributeDto>? attributes,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateVariantRequest.copyWith(...)` or call `instanceOfUpdateVariantRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateVariantRequestCWProxyImpl
    implements _$UpdateVariantRequestCWProxy {
  const _$UpdateVariantRequestCWProxyImpl(this._value);

  final UpdateVariantRequest _value;

  @override
  UpdateVariantRequest sku(String sku) => call(sku: sku);

  @override
  UpdateVariantRequest barcode(String barcode) => call(barcode: barcode);

  @override
  UpdateVariantRequest volumeMl(int? volumeMl) => call(volumeMl: volumeMl);

  @override
  UpdateVariantRequest concentrationId(int? concentrationId) =>
      call(concentrationId: concentrationId);

  @override
  UpdateVariantRequest type(VariantType? type) => call(type: type);

  @override
  UpdateVariantRequest basePrice(num? basePrice) => call(basePrice: basePrice);

  @override
  UpdateVariantRequest retailPrice(num? retailPrice) =>
      call(retailPrice: retailPrice);

  @override
  UpdateVariantRequest status(VariantStatus? status) => call(status: status);

  @override
  UpdateVariantRequest sillage(int? sillage) => call(sillage: sillage);

  @override
  UpdateVariantRequest longevity(int? longevity) => call(longevity: longevity);

  @override
  UpdateVariantRequest mediaIdsToDelete(List<String>? mediaIdsToDelete) =>
      call(mediaIdsToDelete: mediaIdsToDelete);

  @override
  UpdateVariantRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  ) => call(temporaryMediaIdsToAdd: temporaryMediaIdsToAdd);

  @override
  UpdateVariantRequest attributes(List<ProductAttributeDto>? attributes) =>
      call(attributes: attributes);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateVariantRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateVariantRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateVariantRequest call({
    Object? sku = const $CopyWithPlaceholder(),
    Object? barcode = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? concentrationId = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? basePrice = const $CopyWithPlaceholder(),
    Object? retailPrice = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? sillage = const $CopyWithPlaceholder(),
    Object? longevity = const $CopyWithPlaceholder(),
    Object? mediaIdsToDelete = const $CopyWithPlaceholder(),
    Object? temporaryMediaIdsToAdd = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
  }) {
    return UpdateVariantRequest(
      sku: sku == const $CopyWithPlaceholder() || sku == null
          ? _value.sku
          // ignore: cast_nullable_to_non_nullable
          : sku as String,
      barcode: barcode == const $CopyWithPlaceholder() || barcode == null
          ? _value.barcode
          // ignore: cast_nullable_to_non_nullable
          : barcode as String,
      volumeMl: volumeMl == const $CopyWithPlaceholder()
          ? _value.volumeMl
          // ignore: cast_nullable_to_non_nullable
          : volumeMl as int?,
      concentrationId: concentrationId == const $CopyWithPlaceholder()
          ? _value.concentrationId
          // ignore: cast_nullable_to_non_nullable
          : concentrationId as int?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as VariantType?,
      basePrice: basePrice == const $CopyWithPlaceholder()
          ? _value.basePrice
          // ignore: cast_nullable_to_non_nullable
          : basePrice as num?,
      retailPrice: retailPrice == const $CopyWithPlaceholder()
          ? _value.retailPrice
          // ignore: cast_nullable_to_non_nullable
          : retailPrice as num?,
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as VariantStatus?,
      sillage: sillage == const $CopyWithPlaceholder()
          ? _value.sillage
          // ignore: cast_nullable_to_non_nullable
          : sillage as int?,
      longevity: longevity == const $CopyWithPlaceholder()
          ? _value.longevity
          // ignore: cast_nullable_to_non_nullable
          : longevity as int?,
      mediaIdsToDelete: mediaIdsToDelete == const $CopyWithPlaceholder()
          ? _value.mediaIdsToDelete
          // ignore: cast_nullable_to_non_nullable
          : mediaIdsToDelete as List<String>?,
      temporaryMediaIdsToAdd:
          temporaryMediaIdsToAdd == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIdsToAdd
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIdsToAdd as List<String>?,
      attributes: attributes == const $CopyWithPlaceholder()
          ? _value.attributes
          // ignore: cast_nullable_to_non_nullable
          : attributes as List<ProductAttributeDto>?,
    );
  }
}

extension $UpdateVariantRequestCopyWith on UpdateVariantRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateVariantRequest.copyWith(...)` or `instanceOfUpdateVariantRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateVariantRequestCWProxy get copyWith =>
      _$UpdateVariantRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateVariantRequest _$UpdateVariantRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateVariantRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['sku', 'barcode']);
  final val = UpdateVariantRequest(
    sku: $checkedConvert('sku', (v) => v as String),
    barcode: $checkedConvert('barcode', (v) => v as String),
    volumeMl: $checkedConvert('volumeMl', (v) => (v as num?)?.toInt()),
    concentrationId: $checkedConvert(
      'concentrationId',
      (v) => (v as num?)?.toInt(),
    ),
    type: $checkedConvert(
      'type',
      (v) => $enumDecodeNullable(_$VariantTypeEnumMap, v),
    ),
    basePrice: $checkedConvert('basePrice', (v) => v as num?),
    retailPrice: $checkedConvert('retailPrice', (v) => v as num?),
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$VariantStatusEnumMap, v),
    ),
    sillage: $checkedConvert('sillage', (v) => (v as num?)?.toInt()),
    longevity: $checkedConvert('longevity', (v) => (v as num?)?.toInt()),
    mediaIdsToDelete: $checkedConvert(
      'mediaIdsToDelete',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    temporaryMediaIdsToAdd: $checkedConvert(
      'temporaryMediaIdsToAdd',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    attributes: $checkedConvert(
      'attributes',
      (v) => (v as List<dynamic>?)
          ?.map((e) => ProductAttributeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateVariantRequestToJson(
  UpdateVariantRequest instance,
) => <String, dynamic>{
  'sku': instance.sku,
  'barcode': instance.barcode,
  'volumeMl': ?instance.volumeMl,
  'concentrationId': ?instance.concentrationId,
  'type': ?_$VariantTypeEnumMap[instance.type],
  'basePrice': ?instance.basePrice,
  'retailPrice': ?instance.retailPrice,
  'status': ?_$VariantStatusEnumMap[instance.status],
  'sillage': ?instance.sillage,
  'longevity': ?instance.longevity,
  'mediaIdsToDelete': ?instance.mediaIdsToDelete,
  'temporaryMediaIdsToAdd': ?instance.temporaryMediaIdsToAdd,
  'attributes': ?instance.attributes?.map((e) => e.toJson()).toList(),
};

const _$VariantTypeEnumMap = {
  VariantType.standard: 'Standard',
  VariantType.fullBox: 'FullBox',
  VariantType.tester: 'Tester',
  VariantType.mini: 'Mini',
};

const _$VariantStatusEnumMap = {
  VariantStatus.active: 'Active',
  VariantStatus.inactive: 'Inactive',
  VariantStatus.discontinued: 'Discontinued',
};
