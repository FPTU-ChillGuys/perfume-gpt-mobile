// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_import_ticket_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateImportTicketRequestCWProxy {
  CreateImportTicketRequest importDetails(
    List<CreateImportDetailRequest> importDetails,
  );

  CreateImportTicketRequest supplierId(int? supplierId);

  CreateImportTicketRequest expectedArrivalDate(DateTime expectedArrivalDate);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateImportTicketRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateImportTicketRequest call({
    List<CreateImportDetailRequest> importDetails,
    int? supplierId,
    DateTime expectedArrivalDate,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateImportTicketRequest.copyWith(...)` or call `instanceOfCreateImportTicketRequest.copyWith.fieldName(value)` for a single field.
class _$CreateImportTicketRequestCWProxyImpl
    implements _$CreateImportTicketRequestCWProxy {
  const _$CreateImportTicketRequestCWProxyImpl(this._value);

  final CreateImportTicketRequest _value;

  @override
  CreateImportTicketRequest importDetails(
    List<CreateImportDetailRequest> importDetails,
  ) => call(importDetails: importDetails);

  @override
  CreateImportTicketRequest supplierId(int? supplierId) =>
      call(supplierId: supplierId);

  @override
  CreateImportTicketRequest expectedArrivalDate(DateTime expectedArrivalDate) =>
      call(expectedArrivalDate: expectedArrivalDate);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateImportTicketRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateImportTicketRequest call({
    Object? importDetails = const $CopyWithPlaceholder(),
    Object? supplierId = const $CopyWithPlaceholder(),
    Object? expectedArrivalDate = const $CopyWithPlaceholder(),
  }) {
    return CreateImportTicketRequest(
      importDetails:
          importDetails == const $CopyWithPlaceholder() || importDetails == null
          ? _value.importDetails
          // ignore: cast_nullable_to_non_nullable
          : importDetails as List<CreateImportDetailRequest>,
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

extension $CreateImportTicketRequestCopyWith on CreateImportTicketRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateImportTicketRequest.copyWith(...)` or `instanceOfCreateImportTicketRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateImportTicketRequestCWProxy get copyWith =>
      _$CreateImportTicketRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateImportTicketRequest _$CreateImportTicketRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateImportTicketRequest', json, ($checkedConvert) {
  $checkKeys(
    json,
    requiredKeys: const ['importDetails', 'expectedArrivalDate'],
  );
  final val = CreateImportTicketRequest(
    importDetails: $checkedConvert(
      'importDetails',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                CreateImportDetailRequest.fromJson(e as Map<String, dynamic>),
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

Map<String, dynamic> _$CreateImportTicketRequestToJson(
  CreateImportTicketRequest instance,
) => <String, dynamic>{
  'importDetails': instance.importDetails.map((e) => e.toJson()).toList(),
  'supplierId': ?instance.supplierId,
  'expectedArrivalDate': instance.expectedArrivalDate.toIso8601String(),
};
