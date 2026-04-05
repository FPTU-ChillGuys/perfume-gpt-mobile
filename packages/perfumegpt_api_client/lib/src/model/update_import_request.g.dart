// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_import_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateImportRequestCWProxy {
  UpdateImportRequest importDetails(
    List<UpdateImportDetailRequest> importDetails,
  );

  UpdateImportRequest supplierId(int? supplierId);

  UpdateImportRequest expectedArrivalDate(DateTime expectedArrivalDate);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateImportRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateImportRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateImportRequest call({
    List<UpdateImportDetailRequest> importDetails,
    int? supplierId,
    DateTime expectedArrivalDate,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateImportRequest.copyWith(...)` or call `instanceOfUpdateImportRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateImportRequestCWProxyImpl implements _$UpdateImportRequestCWProxy {
  const _$UpdateImportRequestCWProxyImpl(this._value);

  final UpdateImportRequest _value;

  @override
  UpdateImportRequest importDetails(
    List<UpdateImportDetailRequest> importDetails,
  ) => call(importDetails: importDetails);

  @override
  UpdateImportRequest supplierId(int? supplierId) =>
      call(supplierId: supplierId);

  @override
  UpdateImportRequest expectedArrivalDate(DateTime expectedArrivalDate) =>
      call(expectedArrivalDate: expectedArrivalDate);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateImportRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateImportRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateImportRequest call({
    Object? importDetails = const $CopyWithPlaceholder(),
    Object? supplierId = const $CopyWithPlaceholder(),
    Object? expectedArrivalDate = const $CopyWithPlaceholder(),
  }) {
    return UpdateImportRequest(
      importDetails:
          importDetails == const $CopyWithPlaceholder() || importDetails == null
          ? _value.importDetails
          // ignore: cast_nullable_to_non_nullable
          : importDetails as List<UpdateImportDetailRequest>,
      supplierId: supplierId == const $CopyWithPlaceholder()
          ? _value.supplierId
          // ignore: cast_nullable_to_non_nullable
          : supplierId as int?,
      expectedArrivalDate:
          expectedArrivalDate == const $CopyWithPlaceholder() ||
              expectedArrivalDate == null
          ? _value.expectedArrivalDate
          // ignore: cast_nullable_to_non_nullable
          : expectedArrivalDate as DateTime,
    );
  }
}

extension $UpdateImportRequestCopyWith on UpdateImportRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateImportRequest.copyWith(...)` or `instanceOfUpdateImportRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateImportRequestCWProxy get copyWith =>
      _$UpdateImportRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateImportRequest _$UpdateImportRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UpdateImportRequest', json, ($checkedConvert) {
      $checkKeys(
        json,
        requiredKeys: const ['importDetails', 'expectedArrivalDate'],
      );
      final val = UpdateImportRequest(
        importDetails: $checkedConvert(
          'importDetails',
          (v) => (v as List<dynamic>)
              .map(
                (e) => UpdateImportDetailRequest.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList(),
        ),
        supplierId: $checkedConvert('supplierId', (v) => (v as num?)?.toInt()),
        expectedArrivalDate: $checkedConvert(
          'expectedArrivalDate',
          (v) => DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UpdateImportRequestToJson(
  UpdateImportRequest instance,
) => <String, dynamic>{
  'importDetails': instance.importDetails.map((e) => e.toJson()).toList(),
  'supplierId': ?instance.supplierId,
  'expectedArrivalDate': instance.expectedArrivalDate.toIso8601String(),
};
