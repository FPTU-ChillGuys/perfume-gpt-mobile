// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_return_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateReturnRequestDtoCWProxy {
  UpdateReturnRequestDto customerNote(String? customerNote);

  UpdateReturnRequestDto refundBankName(String? refundBankName);

  UpdateReturnRequestDto refundAccountNumber(String? refundAccountNumber);

  UpdateReturnRequestDto refundAccountName(String? refundAccountName);

  UpdateReturnRequestDto temporaryMediaIds(List<String>? temporaryMediaIds);

  UpdateReturnRequestDto removeMediaIds(List<String>? removeMediaIds);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateReturnRequestDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateReturnRequestDto(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateReturnRequestDto call({
    String? customerNote,
    String? refundBankName,
    String? refundAccountNumber,
    String? refundAccountName,
    List<String>? temporaryMediaIds,
    List<String>? removeMediaIds,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateReturnRequestDto.copyWith(...)` or call `instanceOfUpdateReturnRequestDto.copyWith.fieldName(value)` for a single field.
class _$UpdateReturnRequestDtoCWProxyImpl
    implements _$UpdateReturnRequestDtoCWProxy {
  const _$UpdateReturnRequestDtoCWProxyImpl(this._value);

  final UpdateReturnRequestDto _value;

  @override
  UpdateReturnRequestDto customerNote(String? customerNote) =>
      call(customerNote: customerNote);

  @override
  UpdateReturnRequestDto refundBankName(String? refundBankName) =>
      call(refundBankName: refundBankName);

  @override
  UpdateReturnRequestDto refundAccountNumber(String? refundAccountNumber) =>
      call(refundAccountNumber: refundAccountNumber);

  @override
  UpdateReturnRequestDto refundAccountName(String? refundAccountName) =>
      call(refundAccountName: refundAccountName);

  @override
  UpdateReturnRequestDto temporaryMediaIds(List<String>? temporaryMediaIds) =>
      call(temporaryMediaIds: temporaryMediaIds);

  @override
  UpdateReturnRequestDto removeMediaIds(List<String>? removeMediaIds) =>
      call(removeMediaIds: removeMediaIds);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateReturnRequestDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateReturnRequestDto(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateReturnRequestDto call({
    Object? customerNote = const $CopyWithPlaceholder(),
    Object? refundBankName = const $CopyWithPlaceholder(),
    Object? refundAccountNumber = const $CopyWithPlaceholder(),
    Object? refundAccountName = const $CopyWithPlaceholder(),
    Object? temporaryMediaIds = const $CopyWithPlaceholder(),
    Object? removeMediaIds = const $CopyWithPlaceholder(),
  }) {
    return UpdateReturnRequestDto(
      customerNote: customerNote == const $CopyWithPlaceholder()
          ? _value.customerNote
          // ignore: cast_nullable_to_non_nullable
          : customerNote as String?,
      refundBankName: refundBankName == const $CopyWithPlaceholder()
          ? _value.refundBankName
          // ignore: cast_nullable_to_non_nullable
          : refundBankName as String?,
      refundAccountNumber: refundAccountNumber == const $CopyWithPlaceholder()
          ? _value.refundAccountNumber
          // ignore: cast_nullable_to_non_nullable
          : refundAccountNumber as String?,
      refundAccountName: refundAccountName == const $CopyWithPlaceholder()
          ? _value.refundAccountName
          // ignore: cast_nullable_to_non_nullable
          : refundAccountName as String?,
      temporaryMediaIds: temporaryMediaIds == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIds
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIds as List<String>?,
      removeMediaIds: removeMediaIds == const $CopyWithPlaceholder()
          ? _value.removeMediaIds
          // ignore: cast_nullable_to_non_nullable
          : removeMediaIds as List<String>?,
    );
  }
}

extension $UpdateReturnRequestDtoCopyWith on UpdateReturnRequestDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateReturnRequestDto.copyWith(...)` or `instanceOfUpdateReturnRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateReturnRequestDtoCWProxy get copyWith =>
      _$UpdateReturnRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateReturnRequestDto _$UpdateReturnRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateReturnRequestDto', json, ($checkedConvert) {
  final val = UpdateReturnRequestDto(
    customerNote: $checkedConvert('customerNote', (v) => v as String?),
    refundBankName: $checkedConvert('refundBankName', (v) => v as String?),
    refundAccountNumber: $checkedConvert(
      'refundAccountNumber',
      (v) => v as String?,
    ),
    refundAccountName: $checkedConvert(
      'refundAccountName',
      (v) => v as String?,
    ),
    temporaryMediaIds: $checkedConvert(
      'temporaryMediaIds',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    removeMediaIds: $checkedConvert(
      'removeMediaIds',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateReturnRequestDtoToJson(
  UpdateReturnRequestDto instance,
) => <String, dynamic>{
  'customerNote': ?instance.customerNote,
  'refundBankName': ?instance.refundBankName,
  'refundAccountNumber': ?instance.refundAccountNumber,
  'refundAccountName': ?instance.refundAccountName,
  'temporaryMediaIds': ?instance.temporaryMediaIds,
  'removeMediaIds': ?instance.removeMediaIds,
};
