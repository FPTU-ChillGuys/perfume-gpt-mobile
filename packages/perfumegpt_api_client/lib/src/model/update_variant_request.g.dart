// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_variant_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateVariantRequestCWProxy {
  UpdateVariantRequest sku(String? sku);

  UpdateVariantRequest barcode(String? barcode);

  UpdateVariantRequest volumeMl(int? volumeMl);

  UpdateVariantRequest concentrationId(int? concentrationId);

  UpdateVariantRequest type(VariantType? type);

  UpdateVariantRequest basePrice(num? basePrice);

  UpdateVariantRequest status(VariantStatus? status);

  UpdateVariantRequest mediaIdsToDelete(List<String>? mediaIdsToDelete);

  UpdateVariantRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  );

  UpdateVariantRequest attributes(List<ProductAttributeDto>? attributes);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateVariantRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateVariantRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateVariantRequest call({
    String? sku,
    String? barcode,
    int? volumeMl,
    int? concentrationId,
    VariantType? type,
    num? basePrice,
    VariantStatus? status,
    List<String>? mediaIdsToDelete,
    List<String>? temporaryMediaIdsToAdd,
    List<ProductAttributeDto>? attributes,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateVariantRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateVariantRequest.copyWith.fieldName(...)`
class _$UpdateVariantRequestCWProxyImpl
    implements _$UpdateVariantRequestCWProxy {
  const _$UpdateVariantRequestCWProxyImpl(this._value);

  final UpdateVariantRequest _value;

  @override
  UpdateVariantRequest sku(String? sku) => this(sku: sku);

  @override
  UpdateVariantRequest barcode(String? barcode) => this(barcode: barcode);

  @override
  UpdateVariantRequest volumeMl(int? volumeMl) => this(volumeMl: volumeMl);

  @override
  UpdateVariantRequest concentrationId(int? concentrationId) =>
      this(concentrationId: concentrationId);

  @override
  UpdateVariantRequest type(VariantType? type) => this(type: type);

  @override
  UpdateVariantRequest basePrice(num? basePrice) => this(basePrice: basePrice);

  @override
  UpdateVariantRequest status(VariantStatus? status) => this(status: status);

  @override
  UpdateVariantRequest mediaIdsToDelete(List<String>? mediaIdsToDelete) =>
      this(mediaIdsToDelete: mediaIdsToDelete);

  @override
  UpdateVariantRequest temporaryMediaIdsToAdd(
    List<String>? temporaryMediaIdsToAdd,
  ) => this(temporaryMediaIdsToAdd: temporaryMediaIdsToAdd);

  @override
  UpdateVariantRequest attributes(List<ProductAttributeDto>? attributes) =>
      this(attributes: attributes);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateVariantRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateVariantRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateVariantRequest call({
    Object? sku = const $CopyWithPlaceholder(),
    Object? barcode = const $CopyWithPlaceholder(),
    Object? volumeMl = const $CopyWithPlaceholder(),
    Object? concentrationId = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? basePrice = const $CopyWithPlaceholder(),
    Object? status = const $CopyWithPlaceholder(),
    Object? mediaIdsToDelete = const $CopyWithPlaceholder(),
    Object? temporaryMediaIdsToAdd = const $CopyWithPlaceholder(),
    Object? attributes = const $CopyWithPlaceholder(),
  }) {
    return UpdateVariantRequest(
      sku: sku == const $CopyWithPlaceholder()
          ? _value.sku
          // ignore: cast_nullable_to_non_nullable
          : sku as String?,
      barcode: barcode == const $CopyWithPlaceholder()
          ? _value.barcode
          // ignore: cast_nullable_to_non_nullable
          : barcode as String?,
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
      status: status == const $CopyWithPlaceholder()
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as VariantStatus?,
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
  /// Returns a callable class that can be used as follows: `instanceOfUpdateVariantRequest.copyWith(...)` or like so:`instanceOfUpdateVariantRequest.copyWith.fieldName(...)`.
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
  final val = UpdateVariantRequest(
    sku: $checkedConvert('sku', (v) => v as String?),
    barcode: $checkedConvert('barcode', (v) => v as String?),
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
    status: $checkedConvert(
      'status',
      (v) => $enumDecodeNullable(_$VariantStatusEnumMap, v),
    ),
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
  'sku': ?instance.sku,
  'barcode': ?instance.barcode,
  'volumeMl': ?instance.volumeMl,
  'concentrationId': ?instance.concentrationId,
  'type': ?_$VariantTypeEnumMap[instance.type],
  'basePrice': ?instance.basePrice,
  'status': ?_$VariantStatusEnumMap[instance.status],
  'mediaIdsToDelete': ?instance.mediaIdsToDelete,
  'temporaryMediaIdsToAdd': ?instance.temporaryMediaIdsToAdd,
  'attributes': ?instance.attributes?.map((e) => e.toJson()).toList(),
};

const _$VariantTypeEnumMap = {
  VariantType.fullBox: 'FullBox',
  VariantType.tester: 'Tester',
  VariantType.mini: 'Mini',
};

const _$VariantStatusEnumMap = {
  VariantStatus.active: 'Active',
  VariantStatus.inactive: 'Inactive',
  VariantStatus.discontinued: 'Discontinued',
  VariantStatus.outOfStock: 'out_of_stock',
};
