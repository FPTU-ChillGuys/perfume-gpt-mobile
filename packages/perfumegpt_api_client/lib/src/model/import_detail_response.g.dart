// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'import_detail_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ImportDetailResponseCWProxy {
  ImportDetailResponse id(String? id);

  ImportDetailResponse variantId(String? variantId);

  ImportDetailResponse variantName(String? variantName);

  ImportDetailResponse variantSku(String? variantSku);

  ImportDetailResponse expectedQuantity(int? expectedQuantity);

  ImportDetailResponse unitPrice(num? unitPrice);

  ImportDetailResponse totalPrice(num? totalPrice);

  ImportDetailResponse rejectedQuantity(int? rejectedQuantity);

  ImportDetailResponse note(String? note);

  ImportDetailResponse batches(List<BatchResponse>? batches);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ImportDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ImportDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ImportDetailResponse call({
    String? id,
    String? variantId,
    String? variantName,
    String? variantSku,
    int? expectedQuantity,
    num? unitPrice,
    num? totalPrice,
    int? rejectedQuantity,
    String? note,
    List<BatchResponse>? batches,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfImportDetailResponse.copyWith(...)` or call `instanceOfImportDetailResponse.copyWith.fieldName(value)` for a single field.
class _$ImportDetailResponseCWProxyImpl
    implements _$ImportDetailResponseCWProxy {
  const _$ImportDetailResponseCWProxyImpl(this._value);

  final ImportDetailResponse _value;

  @override
  ImportDetailResponse id(String? id) => call(id: id);

  @override
  ImportDetailResponse variantId(String? variantId) =>
      call(variantId: variantId);

  @override
  ImportDetailResponse variantName(String? variantName) =>
      call(variantName: variantName);

  @override
  ImportDetailResponse variantSku(String? variantSku) =>
      call(variantSku: variantSku);

  @override
  ImportDetailResponse expectedQuantity(int? expectedQuantity) =>
      call(expectedQuantity: expectedQuantity);

  @override
  ImportDetailResponse unitPrice(num? unitPrice) => call(unitPrice: unitPrice);

  @override
  ImportDetailResponse totalPrice(num? totalPrice) =>
      call(totalPrice: totalPrice);

  @override
  ImportDetailResponse rejectedQuantity(int? rejectedQuantity) =>
      call(rejectedQuantity: rejectedQuantity);

  @override
  ImportDetailResponse note(String? note) => call(note: note);

  @override
  ImportDetailResponse batches(List<BatchResponse>? batches) =>
      call(batches: batches);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ImportDetailResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ImportDetailResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  ImportDetailResponse call({
    Object? id = const $CopyWithPlaceholder(),
    Object? variantId = const $CopyWithPlaceholder(),
    Object? variantName = const $CopyWithPlaceholder(),
    Object? variantSku = const $CopyWithPlaceholder(),
    Object? expectedQuantity = const $CopyWithPlaceholder(),
    Object? unitPrice = const $CopyWithPlaceholder(),
    Object? totalPrice = const $CopyWithPlaceholder(),
    Object? rejectedQuantity = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? batches = const $CopyWithPlaceholder(),
  }) {
    return ImportDetailResponse(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String?,
      variantId: variantId == const $CopyWithPlaceholder()
          ? _value.variantId
          // ignore: cast_nullable_to_non_nullable
          : variantId as String?,
      variantName: variantName == const $CopyWithPlaceholder()
          ? _value.variantName
          // ignore: cast_nullable_to_non_nullable
          : variantName as String?,
      variantSku: variantSku == const $CopyWithPlaceholder()
          ? _value.variantSku
          // ignore: cast_nullable_to_non_nullable
          : variantSku as String?,
      expectedQuantity: expectedQuantity == const $CopyWithPlaceholder()
          ? _value.expectedQuantity
          // ignore: cast_nullable_to_non_nullable
          : expectedQuantity as int?,
      unitPrice: unitPrice == const $CopyWithPlaceholder()
          ? _value.unitPrice
          // ignore: cast_nullable_to_non_nullable
          : unitPrice as num?,
      totalPrice: totalPrice == const $CopyWithPlaceholder()
          ? _value.totalPrice
          // ignore: cast_nullable_to_non_nullable
          : totalPrice as num?,
      rejectedQuantity: rejectedQuantity == const $CopyWithPlaceholder()
          ? _value.rejectedQuantity
          // ignore: cast_nullable_to_non_nullable
          : rejectedQuantity as int?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
      batches: batches == const $CopyWithPlaceholder()
          ? _value.batches
          // ignore: cast_nullable_to_non_nullable
          : batches as List<BatchResponse>?,
    );
  }
}

extension $ImportDetailResponseCopyWith on ImportDetailResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfImportDetailResponse.copyWith(...)` or `instanceOfImportDetailResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ImportDetailResponseCWProxy get copyWith =>
      _$ImportDetailResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImportDetailResponse _$ImportDetailResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ImportDetailResponse', json, ($checkedConvert) {
  final val = ImportDetailResponse(
    id: $checkedConvert('id', (v) => v as String?),
    variantId: $checkedConvert('variantId', (v) => v as String?),
    variantName: $checkedConvert('variantName', (v) => v as String?),
    variantSku: $checkedConvert('variantSku', (v) => v as String?),
    expectedQuantity: $checkedConvert(
      'expectedQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    unitPrice: $checkedConvert('unitPrice', (v) => v as num?),
    totalPrice: $checkedConvert('totalPrice', (v) => v as num?),
    rejectedQuantity: $checkedConvert(
      'rejectedQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    note: $checkedConvert('note', (v) => v as String?),
    batches: $checkedConvert(
      'batches',
      (v) => (v as List<dynamic>?)
          ?.map((e) => BatchResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ImportDetailResponseToJson(
  ImportDetailResponse instance,
) => <String, dynamic>{
  'id': ?instance.id,
  'variantId': ?instance.variantId,
  'variantName': ?instance.variantName,
  'variantSku': ?instance.variantSku,
  'expectedQuantity': ?instance.expectedQuantity,
  'unitPrice': ?instance.unitPrice,
  'totalPrice': ?instance.totalPrice,
  'rejectedQuantity': ?instance.rejectedQuantity,
  'note': ?instance.note,
  'batches': ?instance.batches?.map((e) => e.toJson()).toList(),
};
