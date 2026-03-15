// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_import_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateImportRequestCWProxy {
  UpdateImportRequest supplierId(int? supplierId);

  UpdateImportRequest expectedArrivalDate(DateTime? expectedArrivalDate);

  UpdateImportRequest importDetails(
    List<UpdateImportDetailRequest>? importDetails,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateImportRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateImportRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateImportRequest call({
    int? supplierId,
    DateTime? expectedArrivalDate,
    List<UpdateImportDetailRequest>? importDetails,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateImportRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateImportRequest.copyWith.fieldName(...)`
class _$UpdateImportRequestCWProxyImpl implements _$UpdateImportRequestCWProxy {
  const _$UpdateImportRequestCWProxyImpl(this._value);

  final UpdateImportRequest _value;

  @override
  UpdateImportRequest supplierId(int? supplierId) =>
      this(supplierId: supplierId);

  @override
  UpdateImportRequest expectedArrivalDate(DateTime? expectedArrivalDate) =>
      this(expectedArrivalDate: expectedArrivalDate);

  @override
  UpdateImportRequest importDetails(
    List<UpdateImportDetailRequest>? importDetails,
  ) => this(importDetails: importDetails);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateImportRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateImportRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateImportRequest call({
    Object? supplierId = const $CopyWithPlaceholder(),
    Object? expectedArrivalDate = const $CopyWithPlaceholder(),
    Object? importDetails = const $CopyWithPlaceholder(),
  }) {
    return UpdateImportRequest(
      supplierId: supplierId == const $CopyWithPlaceholder()
          ? _value.supplierId
          // ignore: cast_nullable_to_non_nullable
          : supplierId as int?,
      expectedArrivalDate: expectedArrivalDate == const $CopyWithPlaceholder()
          ? _value.expectedArrivalDate
          // ignore: cast_nullable_to_non_nullable
          : expectedArrivalDate as DateTime?,
      importDetails: importDetails == const $CopyWithPlaceholder()
          ? _value.importDetails
          // ignore: cast_nullable_to_non_nullable
          : importDetails as List<UpdateImportDetailRequest>?,
    );
  }
}

extension $UpdateImportRequestCopyWith on UpdateImportRequest {
  /// Returns a callable class that can be used as follows: `instanceOfUpdateImportRequest.copyWith(...)` or like so:`instanceOfUpdateImportRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateImportRequestCWProxy get copyWith =>
      _$UpdateImportRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateImportRequest _$UpdateImportRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateImportRequest', json, ($checkedConvert) {
      final val = UpdateImportRequest(
        supplierId: $checkedConvert('supplierId', (v) => (v as num?)?.toInt()),
        expectedArrivalDate: $checkedConvert(
          'expectedArrivalDate',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        importDetails: $checkedConvert(
          'importDetails',
          (v) => (v as List<dynamic>?)
              ?.map(
                (e) => UpdateImportDetailRequest.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UpdateImportRequestToJson(
  UpdateImportRequest instance,
) => <String, dynamic>{
  'supplierId': ?instance.supplierId,
  'expectedArrivalDate': ?instance.expectedArrivalDate?.toIso8601String(),
  'importDetails': ?instance.importDetails?.map((e) => e.toJson()).toList(),
};
