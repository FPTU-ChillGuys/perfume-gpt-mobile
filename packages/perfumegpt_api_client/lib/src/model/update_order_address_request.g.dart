// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_address_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateOrderAddressRequestCWProxy {
  UpdateOrderAddressRequest savedAddressId(String? savedAddressId);

  UpdateOrderAddressRequest recipientInformation(
    RecipientInformation? recipientInformation,
  );

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateOrderAddressRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateOrderAddressRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateOrderAddressRequest call({
    String? savedAddressId,
    RecipientInformation? recipientInformation,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateOrderAddressRequest.copyWith(...)` or call `instanceOfUpdateOrderAddressRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateOrderAddressRequestCWProxyImpl
    implements _$UpdateOrderAddressRequestCWProxy {
  const _$UpdateOrderAddressRequestCWProxyImpl(this._value);

  final UpdateOrderAddressRequest _value;

  @override
  UpdateOrderAddressRequest savedAddressId(String? savedAddressId) =>
      call(savedAddressId: savedAddressId);

  @override
  UpdateOrderAddressRequest recipientInformation(
    RecipientInformation? recipientInformation,
  ) => call(recipientInformation: recipientInformation);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateOrderAddressRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateOrderAddressRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateOrderAddressRequest call({
    Object? savedAddressId = const $CopyWithPlaceholder(),
    Object? recipientInformation = const $CopyWithPlaceholder(),
  }) {
    return UpdateOrderAddressRequest(
      savedAddressId: savedAddressId == const $CopyWithPlaceholder()
          ? _value.savedAddressId
          // ignore: cast_nullable_to_non_nullable
          : savedAddressId as String?,
      recipientInformation: recipientInformation == const $CopyWithPlaceholder()
          ? _value.recipientInformation
          // ignore: cast_nullable_to_non_nullable
          : recipientInformation as RecipientInformation?,
    );
  }
}

extension $UpdateOrderAddressRequestCopyWith on UpdateOrderAddressRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateOrderAddressRequest.copyWith(...)` or `instanceOfUpdateOrderAddressRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateOrderAddressRequestCWProxy get copyWith =>
      _$UpdateOrderAddressRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateOrderAddressRequest _$UpdateOrderAddressRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateOrderAddressRequest', json, ($checkedConvert) {
  final val = UpdateOrderAddressRequest(
    savedAddressId: $checkedConvert('savedAddressId', (v) => v as String?),
    recipientInformation: $checkedConvert(
      'recipientInformation',
      (v) => v == null
          ? null
          : RecipientInformation.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateOrderAddressRequestToJson(
  UpdateOrderAddressRequest instance,
) => <String, dynamic>{
  'savedAddressId': ?instance.savedAddressId,
  'recipientInformation': ?instance.recipientInformation?.toJson(),
};
