// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_item_dto.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReturnItemDtoCWProxy {
  ReturnItemDto orderDetailId(String? orderDetailId);

  ReturnItemDto quantity(int? quantity);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReturnItemDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReturnItemDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ReturnItemDto call({String? orderDetailId, int? quantity});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReturnItemDto.copyWith(...)` or call `instanceOfReturnItemDto.copyWith.fieldName(value)` for a single field.
class _$ReturnItemDtoCWProxyImpl implements _$ReturnItemDtoCWProxy {
  const _$ReturnItemDtoCWProxyImpl(this._value);

  final ReturnItemDto _value;

  @override
  ReturnItemDto orderDetailId(String? orderDetailId) =>
      call(orderDetailId: orderDetailId);

  @override
  ReturnItemDto quantity(int? quantity) => call(quantity: quantity);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReturnItemDto(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReturnItemDto(...).copyWith(id: 12, name: "My name")
  /// ```
  ReturnItemDto call({
    Object? orderDetailId = const $CopyWithPlaceholder(),
    Object? quantity = const $CopyWithPlaceholder(),
  }) {
    return ReturnItemDto(
      orderDetailId: orderDetailId == const $CopyWithPlaceholder()
          ? _value.orderDetailId
          // ignore: cast_nullable_to_non_nullable
          : orderDetailId as String?,
      quantity: quantity == const $CopyWithPlaceholder()
          ? _value.quantity
          // ignore: cast_nullable_to_non_nullable
          : quantity as int?,
    );
  }
}

extension $ReturnItemDtoCopyWith on ReturnItemDto {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReturnItemDto.copyWith(...)` or `instanceOfReturnItemDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReturnItemDtoCWProxy get copyWith => _$ReturnItemDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnItemDto _$ReturnItemDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReturnItemDto', json, ($checkedConvert) {
      final val = ReturnItemDto(
        orderDetailId: $checkedConvert('orderDetailId', (v) => v as String?),
        quantity: $checkedConvert('quantity', (v) => (v as num?)?.toInt()),
      );
      return val;
    });

Map<String, dynamic> _$ReturnItemDtoToJson(ReturnItemDto instance) =>
    <String, dynamic>{
      'orderDetailId': ?instance.orderDetailId,
      'quantity': ?instance.quantity,
    };
