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

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateOrderAddressRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateOrderAddressRequest(...).copyWith(id: 12, name: "My name")
  /// ````
  UpdateOrderAddressRequest call({
    String? savedAddressId,
    RecipientInformation? recipientInformation,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfUpdateOrderAddressRequest.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfUpdateOrderAddressRequest.copyWith.fieldName(...)`
class _$UpdateOrderAddressRequestCWProxyImpl
    implements _$UpdateOrderAddressRequestCWProxy {
  const _$UpdateOrderAddressRequestCWProxyImpl(this._value);

  final UpdateOrderAddressRequest _value;

  @override
  UpdateOrderAddressRequest savedAddressId(String? savedAddressId) =>
      this(savedAddressId: savedAddressId);

  @override
  UpdateOrderAddressRequest recipientInformation(
    RecipientInformation? recipientInformation,
  ) => this(recipientInformation: recipientInformation);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `UpdateOrderAddressRequest(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// UpdateOrderAddressRequest(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfUpdateOrderAddressRequest.copyWith(...)` or like so:`instanceOfUpdateOrderAddressRequest.copyWith.fieldName(...)`.
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
