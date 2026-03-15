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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VerifyImportDetailRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VerifyImportDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  VerifyImportDetailRequest call({
    String? importDetailId,
    int? rejectQuantity,
    String? note,
    List<CreateBatchRequest>? batches,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVerifyImportDetailRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVerifyImportDetailRequest.copyWith.fieldName(...)`
class _$VerifyImportDetailRequestCWProxyImpl
    implements _$VerifyImportDetailRequestCWProxy {
  const _$VerifyImportDetailRequestCWProxyImpl(this._value);

  final VerifyImportDetailRequest _value;

  @override
  VerifyImportDetailRequest importDetailId(String? importDetailId) =>
      this(importDetailId: importDetailId);

  @override
  VerifyImportDetailRequest rejectQuantity(int? rejectQuantity) =>
      this(rejectQuantity: rejectQuantity);

  @override
  VerifyImportDetailRequest note(String? note) => this(note: note);

  @override
  VerifyImportDetailRequest batches(List<CreateBatchRequest>? batches) =>
      this(batches: batches);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VerifyImportDetailRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VerifyImportDetailRequest(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfVerifyImportDetailRequest.copyWith(...)` or like so:`instanceOfVerifyImportDetailRequest.copyWith.fieldName(...)`.
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
