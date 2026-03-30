// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_return_request_detail_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CreateReturnRequestDetailDtoCWProxy {
  CreateReturnRequestDetailDto orderDetailId(String orderDetailId);

  CreateReturnRequestDetailDto returnedQuantity(int? returnedQuantity);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateReturnRequestDetailDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateReturnRequestDetailDto(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateReturnRequestDetailDto call({
    String orderDetailId,
    int? returnedQuantity,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfCreateReturnRequestDetailDto.copyWith(...)` or call `instanceOfCreateReturnRequestDetailDto.copyWith.fieldName(value)` for a single field.
class _$CreateReturnRequestDetailDtoCWProxyImpl
    implements _$CreateReturnRequestDetailDtoCWProxy {
  const _$CreateReturnRequestDetailDtoCWProxyImpl(this._value);

  final CreateReturnRequestDetailDto _value;

  @override
  CreateReturnRequestDetailDto orderDetailId(String orderDetailId) =>
      call(orderDetailId: orderDetailId);

  @override
  CreateReturnRequestDetailDto returnedQuantity(int? returnedQuantity) =>
      call(returnedQuantity: returnedQuantity);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `CreateReturnRequestDetailDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// CreateReturnRequestDetailDto(...).copyWith(id: 12, name: "My name")
  /// ```
  CreateReturnRequestDetailDto call({
    Object? orderDetailId = const $CopyWithPlaceholder(),
    Object? returnedQuantity = const $CopyWithPlaceholder(),
  }) {
    return CreateReturnRequestDetailDto(
      orderDetailId:
          orderDetailId == const $CopyWithPlaceholder() || orderDetailId == null
          ? _value.orderDetailId
          // ignore: cast_nullable_to_non_nullable
          : orderDetailId as String,
      returnedQuantity: returnedQuantity == const $CopyWithPlaceholder()
          ? _value.returnedQuantity
          // ignore: cast_nullable_to_non_nullable
          : returnedQuantity as int?,
    );
  }
}

extension $CreateReturnRequestDetailDtoCopyWith
    on CreateReturnRequestDetailDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfCreateReturnRequestDetailDto.copyWith(...)` or `instanceOfCreateReturnRequestDetailDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CreateReturnRequestDetailDtoCWProxy get copyWith =>
      _$CreateReturnRequestDetailDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateReturnRequestDetailDto _$CreateReturnRequestDetailDtoFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateReturnRequestDetailDto', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['orderDetailId']);
  final val = CreateReturnRequestDetailDto(
    orderDetailId: $checkedConvert('orderDetailId', (v) => v as String),
    returnedQuantity: $checkedConvert(
      'returnedQuantity',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CreateReturnRequestDetailDtoToJson(
  CreateReturnRequestDetailDto instance,
) => <String, dynamic>{
  'orderDetailId': instance.orderDetailId,
  'returnedQuantity': ?instance.returnedQuantity,
};
