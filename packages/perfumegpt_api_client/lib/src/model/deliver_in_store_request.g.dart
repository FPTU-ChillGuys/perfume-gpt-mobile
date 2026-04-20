// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deliver_in_store_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$DeliverInStoreRequestCWProxy {
  DeliverInStoreRequest posSessionId(String? posSessionId);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DeliverInStoreRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DeliverInStoreRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  DeliverInStoreRequest call({String? posSessionId});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfDeliverInStoreRequest.copyWith(...)` or call `instanceOfDeliverInStoreRequest.copyWith.fieldName(value)` for a single field.
class _$DeliverInStoreRequestCWProxyImpl
    implements _$DeliverInStoreRequestCWProxy {
  const _$DeliverInStoreRequestCWProxyImpl(this._value);

  final DeliverInStoreRequest _value;

  @override
  DeliverInStoreRequest posSessionId(String? posSessionId) =>
      call(posSessionId: posSessionId);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `DeliverInStoreRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// DeliverInStoreRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  DeliverInStoreRequest call({
    Object? posSessionId = const $CopyWithPlaceholder(),
  }) {
    return DeliverInStoreRequest(
      posSessionId: posSessionId == const $CopyWithPlaceholder()
          ? _value.posSessionId
          // ignore: cast_nullable_to_non_nullable
          : posSessionId as String?,
    );
  }
}

extension $DeliverInStoreRequestCopyWith on DeliverInStoreRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfDeliverInStoreRequest.copyWith(...)` or `instanceOfDeliverInStoreRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$DeliverInStoreRequestCWProxy get copyWith =>
      _$DeliverInStoreRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliverInStoreRequest _$DeliverInStoreRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DeliverInStoreRequest', json, ($checkedConvert) {
  final val = DeliverInStoreRequest(
    posSessionId: $checkedConvert('posSessionId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$DeliverInStoreRequestToJson(
  DeliverInStoreRequest instance,
) => <String, dynamic>{'posSessionId': ?instance.posSessionId};
