// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_cancel_order_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UserCancelOrderRequestCWProxy {
  UserCancelOrderRequest reason(String? reason);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserCancelOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserCancelOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UserCancelOrderRequest call({String? reason});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUserCancelOrderRequest.copyWith(...)` or call `instanceOfUserCancelOrderRequest.copyWith.fieldName(value)` for a single field.
class _$UserCancelOrderRequestCWProxyImpl
    implements _$UserCancelOrderRequestCWProxy {
  const _$UserCancelOrderRequestCWProxyImpl(this._value);

  final UserCancelOrderRequest _value;

  @override
  UserCancelOrderRequest reason(String? reason) => call(reason: reason);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UserCancelOrderRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UserCancelOrderRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UserCancelOrderRequest call({Object? reason = const $CopyWithPlaceholder()}) {
    return UserCancelOrderRequest(
      reason: reason == const $CopyWithPlaceholder()
          ? _value.reason
          // ignore: cast_nullable_to_non_nullable
          : reason as String?,
    );
  }
}

extension $UserCancelOrderRequestCopyWith on UserCancelOrderRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUserCancelOrderRequest.copyWith(...)` or `instanceOfUserCancelOrderRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UserCancelOrderRequestCWProxy get copyWith =>
      _$UserCancelOrderRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserCancelOrderRequest _$UserCancelOrderRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UserCancelOrderRequest', json, ($checkedConvert) {
  final val = UserCancelOrderRequest(
    reason: $checkedConvert('reason', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$UserCancelOrderRequestToJson(
  UserCancelOrderRequest instance,
) => <String, dynamic>{'reason': ?instance.reason};
