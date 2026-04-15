// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_catalog_item_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$UpdateCatalogItemRequestCWProxy {
  UpdateCatalogItemRequest negotiatedPrice(num? negotiatedPrice);

  UpdateCatalogItemRequest estimatedLeadTimeDays(int? estimatedLeadTimeDays);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCatalogItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCatalogItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCatalogItemRequest call({
    num? negotiatedPrice,
    int? estimatedLeadTimeDays,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfUpdateCatalogItemRequest.copyWith(...)` or call `instanceOfUpdateCatalogItemRequest.copyWith.fieldName(value)` for a single field.
class _$UpdateCatalogItemRequestCWProxyImpl
    implements _$UpdateCatalogItemRequestCWProxy {
  const _$UpdateCatalogItemRequestCWProxyImpl(this._value);

  final UpdateCatalogItemRequest _value;

  @override
  UpdateCatalogItemRequest negotiatedPrice(num? negotiatedPrice) =>
      call(negotiatedPrice: negotiatedPrice);

  @override
  UpdateCatalogItemRequest estimatedLeadTimeDays(int? estimatedLeadTimeDays) =>
      call(estimatedLeadTimeDays: estimatedLeadTimeDays);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `UpdateCatalogItemRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// UpdateCatalogItemRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  UpdateCatalogItemRequest call({
    Object? negotiatedPrice = const $CopyWithPlaceholder(),
    Object? estimatedLeadTimeDays = const $CopyWithPlaceholder(),
  }) {
    return UpdateCatalogItemRequest(
      negotiatedPrice: negotiatedPrice == const $CopyWithPlaceholder()
          ? _value.negotiatedPrice
          // ignore: cast_nullable_to_non_nullable
          : negotiatedPrice as num?,
      estimatedLeadTimeDays:
          estimatedLeadTimeDays == const $CopyWithPlaceholder()
          ? _value.estimatedLeadTimeDays
          // ignore: cast_nullable_to_non_nullable
          : estimatedLeadTimeDays as int?,
    );
  }
}

extension $UpdateCatalogItemRequestCopyWith on UpdateCatalogItemRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfUpdateCatalogItemRequest.copyWith(...)` or `instanceOfUpdateCatalogItemRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$UpdateCatalogItemRequestCWProxy get copyWith =>
      _$UpdateCatalogItemRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCatalogItemRequest _$UpdateCatalogItemRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('UpdateCatalogItemRequest', json, ($checkedConvert) {
  final val = UpdateCatalogItemRequest(
    negotiatedPrice: $checkedConvert('negotiatedPrice', (v) => v as num?),
    estimatedLeadTimeDays: $checkedConvert(
      'estimatedLeadTimeDays',
      (v) => (v as num?)?.toInt(),
    ),
  );
  return val;
});

Map<String, dynamic> _$UpdateCatalogItemRequestToJson(
  UpdateCatalogItemRequest instance,
) => <String, dynamic>{
  'negotiatedPrice': ?instance.negotiatedPrice,
  'estimatedLeadTimeDays': ?instance.estimatedLeadTimeDays,
};
