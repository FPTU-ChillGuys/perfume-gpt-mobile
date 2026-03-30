// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_return_request_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateReturnRequestDtoCWProxy {
  CreateReturnRequestDto orderId(String orderId);

  CreateReturnRequestDto reason(String reason);

  CreateReturnRequestDto requestedRefundAmount(num? requestedRefundAmount);

  CreateReturnRequestDto customerNote(String? customerNote);

  CreateReturnRequestDto temporaryMediaIds(List<String>? temporaryMediaIds);

  CreateReturnRequestDto returnItems(
    List<CreateReturnRequestDetailDto> returnItems,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateReturnRequestDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateReturnRequestDto(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateReturnRequestDto call({
    String orderId,
    String reason,
    num? requestedRefundAmount,
    String? customerNote,
    List<String>? temporaryMediaIds,
    List<CreateReturnRequestDetailDto> returnItems,
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
  CreateReturnRequestDto reason(String reason) => call(reason: reason);

  @override
  CreateReturnRequestDto requestedRefundAmount(num? requestedRefundAmount) =>
      call(requestedRefundAmount: requestedRefundAmount);

  @override
  CreateReturnRequestDto customerNote(String? customerNote) =>
      call(customerNote: customerNote);

  @override
  CreateReturnRequestDto temporaryMediaIds(List<String>? temporaryMediaIds) =>
      call(temporaryMediaIds: temporaryMediaIds);

  @override
  CreateReturnRequestDto returnItems(
    List<CreateReturnRequestDetailDto> returnItems,
  ) => call(returnItems: returnItems);

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
    Object? requestedRefundAmount = const $CopyWithPlaceholder(),
    Object? customerNote = const $CopyWithPlaceholder(),
    Object? temporaryMediaIds = const $CopyWithPlaceholder(),
    Object? returnItems = const $CopyWithPlaceholder(),
  }) {
    return CreateReturnRequestDto(
      orderId: orderId == const $CopyWithPlaceholder() || orderId == null
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String,
      reason: reason == const $CopyWithPlaceholder() || reason == null
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as String,
      requestedRefundAmount:
          requestedRefundAmount == const $CopyWithPlaceholder()
          ? _value.requestedRefundAmount
          // ignore: cast_nullable_to_non_nullable
          : requestedRefundAmount as num?,
      customerNote: customerNote == const $CopyWithPlaceholder()
          ? _value.customerNote
          // ignore: cast_nullable_to_non_nullable
          : customerNote as String?,
      temporaryMediaIds: temporaryMediaIds == const $CopyWithPlaceholder()
          ? _value.temporaryMediaIds
          // ignore: cast_nullable_to_non_nullable
          : temporaryMediaIds as List<String>?,
      returnItems:
          returnItems == const $CopyWithPlaceholder() || returnItems == null
          ? _value.returnItems
          // ignore: cast_nullable_to_non_nullable
          : returnItems as List<CreateReturnRequestDetailDto>,
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
    reason: $checkedConvert('reason', (v) => v as String),
    requestedRefundAmount: $checkedConvert(
      'requestedRefundAmount',
      (v) => v as num?,
    ),
    customerNote: $checkedConvert('customerNote', (v) => v as String?),
    temporaryMediaIds: $checkedConvert(
      'temporaryMediaIds',
      (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
    ),
    returnItems: $checkedConvert(
      'returnItems',
      (v) => (v as List<dynamic>)
          .map(
            (e) => CreateReturnRequestDetailDto.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateReturnRequestDtoToJson(
  CreateReturnRequestDto instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'reason': instance.reason,
  'requestedRefundAmount': ?instance.requestedRefundAmount,
  'customerNote': ?instance.customerNote,
  'temporaryMediaIds': ?instance.temporaryMediaIds,
  'returnItems': instance.returnItems.map((e) => e.toJson()).toList(),
};
