// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_import_ticket_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VerifyImportTicketRequestCWProxy {
  VerifyImportTicketRequest importDetails(
    List<VerifyImportDetailRequest>? importDetails,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VerifyImportTicketRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VerifyImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  VerifyImportTicketRequest call({
    List<VerifyImportDetailRequest>? importDetails,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfVerifyImportTicketRequest.copyWith(...)` or call `instanceOfVerifyImportTicketRequest.copyWith.fieldName(value)` for a single field.
class _$VerifyImportTicketRequestCWProxyImpl
    implements _$VerifyImportTicketRequestCWProxy {
  const _$VerifyImportTicketRequestCWProxyImpl(this._value);

  final VerifyImportTicketRequest _value;

  @override
  VerifyImportTicketRequest importDetails(
    List<VerifyImportDetailRequest>? importDetails,
  ) => call(importDetails: importDetails);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `VerifyImportTicketRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// VerifyImportTicketRequest(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfVerifyImportTicketRequest.copyWith(...)` or `instanceOfVerifyImportTicketRequest.copyWith.fieldName(...)`.
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
