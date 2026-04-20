// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variant_stock_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VariantStockResponseCWProxy {
  VariantStockResponse id(String id);

  VariantStockResponse totalQuantity(num totalQuantity);

  VariantStockResponse reservedQuantity(num reservedQuantity);

  VariantStockResponse lowStockThreshold(num lowStockThreshold);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantStockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantStockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantStockResponse call({
    String id,
    num totalQuantity,
    num reservedQuantity,
    num lowStockThreshold,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVariantStockResponse.copyWith(...)` or call `instanceOfVariantStockResponse.copyWith.fieldName(value)` for a single field.
class _$VariantStockResponseCWProxyImpl
    implements _$VariantStockResponseCWProxy {
  const _$VariantStockResponseCWProxyImpl(this._value);

  final VariantStockResponse _value;

  @override
  VariantStockResponse id(String id) => call(id: id);

  @override
  VariantStockResponse totalQuantity(num totalQuantity) =>
      call(totalQuantity: totalQuantity);

  @override
  VariantStockResponse reservedQuantity(num reservedQuantity) =>
      call(reservedQuantity: reservedQuantity);

  @override
  VariantStockResponse lowStockThreshold(num lowStockThreshold) =>
      call(lowStockThreshold: lowStockThreshold);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VariantStockResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VariantStockResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  VariantStockResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? totalQuantity = const $CopyWithPlaceholder(),
    Object? reservedQuantity = const $CopyWithPlaceholder(),
    Object? lowStockThreshold = const $CopyWithPlaceholder(),
  }) {
    return VariantStockResponse(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      totalQuantity:
          totalQuantity == const $CopyWithPlaceholder() || totalQuantity == null
          ? _value.totalQuantity
          // ignore: cast_nullable_to_non_nullable
          : totalQuantity as num,
      reservedQuantity:
          reservedQuantity == const $CopyWithPlaceholder() ||
              reservedQuantity == null
          ? _value.reservedQuantity
          // ignore: cast_nullable_to_non_nullable
          : reservedQuantity as num,
      lowStockThreshold:
          lowStockThreshold == const $CopyWithPlaceholder() ||
              lowStockThreshold == null
          ? _value.lowStockThreshold
          // ignore: cast_nullable_to_non_nullable
          : lowStockThreshold as num,
    );
  }
}

extension $VariantStockResponseCopyWith on VariantStockResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVariantStockResponse.copyWith(...)` or `instanceOfVariantStockResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VariantStockResponseCWProxy get copyWith =>
      _$VariantStockResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VariantStockResponse _$VariantStockResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VariantStockResponse', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const [
      'id',
      'totalQuantity',
      'reservedQuantity',
      'lowStockThreshold',
    ],
  );
  final val = VariantStockResponse(
    id: $checkedConvert('id', (v) => v as String),
    totalQuantity: $checkedConvert('totalQuantity', (v) => v as num),
    reservedQuantity: $checkedConvert('reservedQuantity', (v) => v as num),
    lowStockThreshold: $checkedConvert('lowStockThreshold', (v) => v as num),
  );
  return val;
});

Map<String, dynamic> _$VariantStockResponseToJson(
  VariantStockResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'totalQuantity': instance.totalQuantity,
  'reservedQuantity': instance.reservedQuantity,
  'lowStockThreshold': instance.lowStockThreshold,
};
