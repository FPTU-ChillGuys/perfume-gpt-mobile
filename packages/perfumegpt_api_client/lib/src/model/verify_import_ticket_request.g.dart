// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_import_ticket_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VerifyImportTicketRequestCWProxy {
  VerifyImportTicketRequest importDetails(
    List<VerifyImportDetailRequest>? importDetails,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VerifyImportTicketRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VerifyImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  VerifyImportTicketRequest call({
    List<VerifyImportDetailRequest>? importDetails,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVerifyImportTicketRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVerifyImportTicketRequest.copyWith.fieldName(...)`
class _$VerifyImportTicketRequestCWProxyImpl
    implements _$VerifyImportTicketRequestCWProxy {
  const _$VerifyImportTicketRequestCWProxyImpl(this._value);

  final VerifyImportTicketRequest _value;

  @override
  VerifyImportTicketRequest importDetails(
    List<VerifyImportDetailRequest>? importDetails,
  ) => this(importDetails: importDetails);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VerifyImportTicketRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VerifyImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  VerifyImportTicketRequest call({
    Object? importDetails = const $CopyWithPlaceholder(),
  }) {
    return VerifyImportTicketRequest(
      importDetails: importDetails == const $CopyWithPlaceholder()
          ? _value.importDetails
          // ignore: cast_nullable_to_non_nullable
          : importDetails as List<VerifyImportDetailRequest>?,
    );
  }
}

extension $VerifyImportTicketRequestCopyWith on VerifyImportTicketRequest {
  /// Returns a callable class that can be used as follows: `instanceOfVerifyImportTicketRequest.copyWith(...)` or like so:`instanceOfVerifyImportTicketRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VerifyImportTicketRequestCWProxy get copyWith =>
      _$VerifyImportTicketRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyImportTicketRequest _$VerifyImportTicketRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('VerifyImportTicketRequest', json, ($checkedConvert) {
  final val = VerifyImportTicketRequest(
    importDetails: $checkedConvert(
      'importDetails',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) =>
                VerifyImportDetailRequest.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$VerifyImportTicketRequestToJson(
  VerifyImportTicketRequest instance,
) => <String, dynamic>{
  'importDetails': ?instance.importDetails?.map((e) => e.toJson()).toList(),
};
