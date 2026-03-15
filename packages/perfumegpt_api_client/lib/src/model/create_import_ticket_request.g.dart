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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateImportTicketRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  CreateImportTicketRequest call({
    int? supplierId,
    DateTime? expectedArrivalDate,
    List<CreateImportDetailRequest>? importDetails,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCreateImportTicketRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCreateImportTicketRequest.copyWith.fieldName(...)`
class _$CreateImportTicketRequestCWProxyImpl
    implements _$CreateImportTicketRequestCWProxy {
  const _$CreateImportTicketRequestCWProxyImpl(this._value);

  final CreateImportTicketRequest _value;

  @override
  CreateImportTicketRequest supplierId(int? supplierId) =>
      this(supplierId: supplierId);

  @override
  CreateImportTicketRequest expectedArrivalDate(
    DateTime? expectedArrivalDate,
  ) => this(expectedArrivalDate: expectedArrivalDate);

  @override
  CreateImportTicketRequest importDetails(
    List<CreateImportDetailRequest>? importDetails,
  ) => this(importDetails: importDetails);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CreateImportTicketRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CreateImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfCreateImportTicketRequest.copyWith(...)` or like so:`instanceOfCreateImportTicketRequest.copyWith.fieldName(...)`.
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
