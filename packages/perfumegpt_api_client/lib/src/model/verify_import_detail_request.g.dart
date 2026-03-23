// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_import_detail_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VerifyImportDetailRequestCWProxy {
  VerifyImportDetailRequest importDetailId(String? importDetailId);

  VerifyImportDetailRequest rejectQuantity(int? rejectQuantity);

  VerifyImportDetailRequest note(String? note);

  VerifyImportDetailRequest batches(List<CreateBatchRequest>? batches);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VerifyImportDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VerifyImportDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  VerifyImportDetailRequest call({
    String? importDetailId,
    int? rejectQuantity,
    String? note,
    List<CreateBatchRequest>? batches,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVerifyImportDetailRequest.copyWith(...)` or call `instanceOfVerifyImportDetailRequest.copyWith.fieldName(value)` for a single field.
class _$VerifyImportDetailRequestCWProxyImpl
    implements _$VerifyImportDetailRequestCWProxy {
  const _$VerifyImportDetailRequestCWProxyImpl(this._value);

  final VerifyImportDetailRequest _value;

  @override
  VerifyImportDetailRequest importDetailId(String? importDetailId) =>
      call(importDetailId: importDetailId);

  @override
  VerifyImportDetailRequest rejectQuantity(int? rejectQuantity) =>
      call(rejectQuantity: rejectQuantity);

  @override
  VerifyImportDetailRequest note(String? note) => call(note: note);

  @override
  VerifyImportDetailRequest batches(List<CreateBatchRequest>? batches) =>
      call(batches: batches);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VerifyImportDetailRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VerifyImportDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  VerifyImportDetailRequest call({
    Object? importDetailId = const $CopyWithPlaceholder(),
    Object? rejectQuantity = const $CopyWithPlaceholder(),
    Object? note = const $CopyWithPlaceholder(),
    Object? batches = const $CopyWithPlaceholder(),
  }) {
    return VerifyImportDetailRequest(
      importDetailId: importDetailId == const $CopyWithPlaceholder()
          ? _value.importDetailId
          // ignore: cast_nullable_to_non_nullable
          : importDetailId as String?,
      rejectQuantity: rejectQuantity == const $CopyWithPlaceholder()
          ? _value.rejectQuantity
          // ignore: cast_nullable_to_non_nullable
          : rejectQuantity as int?,
      note: note == const $CopyWithPlaceholder()
          ? _value.note
          // ignore: cast_nullable_to_non_nullable
          : note as String?,
      batches: batches == const $CopyWithPlaceholder()
          ? _value.batches
          // ignore: cast_nullable_to_non_nullable
          : batches as List<CreateBatchRequest>?,
    );
  }
}

extension $VerifyImportDetailRequestCopyWith on VerifyImportDetailRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVerifyImportDetailRequest.copyWith(...)` or `instanceOfVerifyImportDetailRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VerifyImportDetailRequestCWProxy get copyWith =>
      _$VerifyImportDetailRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyImportDetailRequest _$VerifyImportDetailRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VerifyImportDetailRequest', json, ($checkedConvert) {
  final val = VerifyImportDetailRequest(
    importDetailId: $checkedConvert('importDetailId', (v) => v as String?),
    rejectQuantity: $checkedConvert(
      'rejectQuantity',
      (v) => (v as num?)?.toInt(),
    ),
    note: $checkedConvert('note', (v) => v as String?),
    batches: $checkedConvert(
      'batches',
      (v) => (v as List<dynamic>?)
          ?.map((e) => CreateBatchRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$VerifyImportDetailRequestToJson(
  VerifyImportDetailRequest instance,
) => <String, dynamic>{
  'importDetailId': ?instance.importDetailId,
  'rejectQuantity': ?instance.rejectQuantity,
  'note': ?instance.note,
  'batches': ?instance.batches?.map((e) => e.toJson()).toList(),
};
