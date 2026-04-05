// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_info_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GetOrderInfoRequestCWProxy {
  GetOrderInfoRequest trackingNumbers(List<String> trackingNumbers);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GetOrderInfoRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GetOrderInfoRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  GetOrderInfoRequest call({List<String> trackingNumbers});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfGetOrderInfoRequest.copyWith(...)` or call `instanceOfGetOrderInfoRequest.copyWith.fieldName(value)` for a single field.
class _$GetOrderInfoRequestCWProxyImpl implements _$GetOrderInfoRequestCWProxy {
  const _$GetOrderInfoRequestCWProxyImpl(this._value);

  final GetOrderInfoRequest _value;

  @override
  GetOrderInfoRequest trackingNumbers(List<String> trackingNumbers) =>
      call(trackingNumbers: trackingNumbers);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GetOrderInfoRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GetOrderInfoRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  GetOrderInfoRequest call({
    Object? trackingNumbers = const $CopyWithPlaceholder(),
  }) {
    return GetOrderInfoRequest(
      trackingNumbers:
          trackingNumbers == const $CopyWithPlaceholder() ||
              trackingNumbers == null
          ? _value.trackingNumbers
          // ignore: cast_nullable_to_non_nullable
          : trackingNumbers as List<String>,
    );
  }
}

extension $GetOrderInfoRequestCopyWith on GetOrderInfoRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfGetOrderInfoRequest.copyWith(...)` or `instanceOfGetOrderInfoRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GetOrderInfoRequestCWProxy get copyWith =>
      _$GetOrderInfoRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrderInfoRequest _$GetOrderInfoRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('GetOrderInfoRequest', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['trackingNumbers']);
      final val = GetOrderInfoRequest(
        trackingNumbers: $checkedConvert(
          'trackingNumbers',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$GetOrderInfoRequestToJson(
  GetOrderInfoRequest instance,
) => <String, dynamic>{'trackingNumbers': instance.trackingNumbers};
