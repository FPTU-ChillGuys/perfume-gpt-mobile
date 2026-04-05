// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_return_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateReturnRequestDtoCWProxy {
  CreateReturnRequestDto orderId(String orderId);

  CreateReturnRequestDto reason(ReturnOrderReason reason);

  CreateReturnRequestDto returnItems(List<ReturnItemDto> returnItems);

  CreateReturnRequestDto customerNote(String? customerNote);

  CreateReturnRequestDto savedAddressId(String? savedAddressId);

  CreateReturnRequestDto recipient(ContactAddressInformation? recipient);

  CreateReturnRequestDto temporaryMediaIds(List<String>? temporaryMediaIds);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateReturnRequestDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateReturnRequestDto(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateReturnRequestDto call({
    String orderId,
    ReturnOrderReason reason,
    List<ReturnItemDto> returnItems,
    String? customerNote,
    String? savedAddressId,
    ContactAddressInformation? recipient,
    List<String>? temporaryMediaIds,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateReturnRequestDto.copyWith(...)` or call `instanceOfCreateReturnRequestDto.copyWith.fieldName(value)` for a single field.
class _$CreateReturnRequestDtoCWProxyImpl
    implements _$CreateReturnRequestDtoCWProxy {
  const _$CreateReturnRequestDtoCWProxyImpl(this._value);

  final CreateReturnRequestDto _value;

  @override
  CreateReturnRequestDto orderId(String orderId) => call(orderId: orderId);

  @override
  CreateReturnRequestDto reason(ReturnOrderReason reason) =>
      call(reason: reason);

  @override
  CreateReturnRequestDto returnItems(List<ReturnItemDto> returnItems) =>
      call(returnItems: returnItems);

  @override
  CreateReturnRequestDto customerNote(String? customerNote) =>
      call(customerNote: customerNote);

  @override
  CreateReturnRequestDto savedAddressId(String? savedAddressId) =>
      call(savedAddressId: savedAddressId);

  @override
  CreateReturnRequestDto recipient(ContactAddressInformation? recipient) =>
      call(recipient: recipient);

  @override
  CreateReturnRequestDto temporaryMediaIds(List<String>? temporaryMediaIds) =>
      call(temporaryMediaIds: temporaryMediaIds);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateReturnRequestDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateReturnRequestDto(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateReturnRequestDto call({
    Object? orderId = const $CopyWithPlaceholder(),
    Object? reason = const $CopyWithPlaceholder(),
    Object? returnItems = const $CopyWithPlaceholder(),
    Object? customerNote = const $CopyWithPlaceholder(),
    Object? savedAddressId = const $CopyWithPlaceholder(),
    Object? recipient = const $CopyWithPlaceholder(),
    Object? temporaryMediaIds = const $CopyWithPlaceholder(),
  }) {
    return CreateReturnRequestDto(
      orderId: orderId == const $CopyWithPlaceholder() || orderId == null
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String,
      reason: reason == const $CopyWithPlaceholder() || reason == null
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as ReturnOrderReason,
      returnItems:
          returnItems == const $CopyWithPlaceholder() || returnItems == null
          ? _value.returnItems
          // ignore: cast_nullable_to_non_nullable
          : returnItems as List<ReturnItemDto>,
      customerNote: customerNote == const $CopyWithPlaceholder()
          ? _value.customerNote
          // ignore: cast_nullable_to_non_nullable
          : customerNote as String?,
      savedAddressId: savedAddressId == const $CopyWithPlaceholder()
          ? _value.savedAddressId
          // ignore: cast_nullable_to_non_nullable
          : savedAddressId as String?,
      recipient: recipient == const $CopyWithPlaceholder()
          ? _value.recipient
          // ignore: cast_nullable_to_non_nullable
          : recipient as ContactAddressInformation?,
      temporaryMediaIds: temporaryMediaIds == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIds
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIds as List<String>?,
    );
  }
}

extension $CreateReturnRequestDtoCopyWith on CreateReturnRequestDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateReturnRequestDto.copyWith(...)` or `instanceOfCreateReturnRequestDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateReturnRequestDtoCWProxy get copyWith =>
      _$CreateReturnRequestDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateReturnRequestDto _$CreateReturnRequestDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateReturnRequestDto', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['orderId', 'reason', 'returnItems']);
  final val = CreateReturnRequestDto(
    orderId: $checkedConvert('orderId', (v) => v as String),
    reason: $checkedConvert(
      'reason',
      (v) => $enumDecode(_$ReturnOrderReasonEnumMap, v),
    ),
    returnItems: $checkedConvert(
      'returnItems',
      (v) => (v as List<dynamic>)
          .map((e) => ReturnItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    customerNote: $checkedConvert('customerNote', (v) => v as String?),
    savedAddressId: $checkedConvert('savedAddressId', (v) => v as String?),
    recipient: $checkedConvert(
      'recipient',
      (v) => v == null
          ? null
          : ContactAddressInformation.fromJson(v as Map<String, dynamic>),
    ),
    temporaryMediaIds: $checkedConvert(
      'temporaryMediaIds',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateReturnRequestDtoToJson(
  CreateReturnRequestDto instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'reason': _$ReturnOrderReasonEnumMap[instance.reason]!,
  'returnItems': instance.returnItems.map((e) => e.toJson()).toList(),
  'customerNote': ?instance.customerNote,
  'savedAddressId': ?instance.savedAddressId,
  'recipient': ?instance.recipient?.toJson(),
  'temporaryMediaIds': ?instance.temporaryMediaIds,
};

const _$ReturnOrderReasonEnumMap = {
  ReturnOrderReason.damagedProduct: 'DamagedProduct',
  ReturnOrderReason.wrongItemReceived: 'WrongItemReceived',
  ReturnOrderReason.itemNotAsDescribed: 'ItemNotAsDescribed',
  ReturnOrderReason.changedMind: 'ChangedMind',
  ReturnOrderReason.allergicReaction: 'AllergicReaction',
};
