// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_import_ticket_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateImportTicketRequestCWProxy {
  CreateImportTicketRequest supplierId(int? supplierId);

  CreateImportTicketRequest expectedArrivalDate(DateTime? expectedArrivalDate);

  CreateImportTicketRequest importDetails(
    List<CreateImportDetailRequest>? importDetails,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateImportTicketRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateImportTicketRequest call({
    int? supplierId,
    DateTime? expectedArrivalDate,
    List<CreateImportDetailRequest>? importDetails,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateImportTicketRequest.copyWith(...)` or call `instanceOfCreateImportTicketRequest.copyWith.fieldName(value)` for a single field.
class _$CreateImportTicketRequestCWProxyImpl
    implements _$CreateImportTicketRequestCWProxy {
  const _$CreateImportTicketRequestCWProxyImpl(this._value);

  final CreateImportTicketRequest _value;

  @override
  CreateImportTicketRequest supplierId(int? supplierId) =>
      call(supplierId: supplierId);

  @override
  CreateImportTicketRequest expectedArrivalDate(
    DateTime? expectedArrivalDate,
  ) => call(expectedArrivalDate: expectedArrivalDate);

  @override
  CreateImportTicketRequest importDetails(
    List<CreateImportDetailRequest>? importDetails,
  ) => call(importDetails: importDetails);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateImportTicketRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateImportTicketRequest call({
    Object? supplierId = const $CopyWithPlaceholder(),
    Object? expectedArrivalDate = const $CopyWithPlaceholder(),
    Object? importDetails = const $CopyWithPlaceholder(),
  }) {
    return CreateImportTicketRequest(
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
          : importDetails as List<CreateImportDetailRequest>?,
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
  final val = CreateImportTicketRequest(
    supplierId: $checkedConvert('supplierId', (v) => (v as num?)?.toInt()),
    expectedArrivalDate: $checkedConvert(
      'expectedArrivalDate',
      (v) => v == null ? null : DateTime.parse(v as String),
    ),
    importDetails: $checkedConvert(
      'importDetails',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                CreateImportDetailRequest.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateImportTicketRequestToJson(
  CreateImportTicketRequest instance,
) => <String, dynamic>{
  'supplierId': ?instance.supplierId,
  'expectedArrivalDate': ?instance.expectedArrivalDate?.toIso8601String(),
  'importDetails': ?instance.importDetails?.map((e) => e.toJson()).toList(),
};
