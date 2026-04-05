// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_items_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GetCartItemsResponseCWProxy {
  GetCartItemsResponse items(List<GetCartItemResponse> items);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GetCartItemsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GetCartItemsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  GetCartItemsResponse call({List<GetCartItemResponse> items});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfGetCartItemsResponse.copyWith(...)` or call `instanceOfGetCartItemsResponse.copyWith.fieldName(value)` for a single field.
class _$GetCartItemsResponseCWProxyImpl
    implements _$GetCartItemsResponseCWProxy {
  const _$GetCartItemsResponseCWProxyImpl(this._value);

  final GetCartItemsResponse _value;

  @override
  GetCartItemsResponse items(List<GetCartItemResponse> items) =>
      call(items: items);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `GetCartItemsResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// GetCartItemsResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  GetCartItemsResponse call({Object? items = const $CopyWithPlaceholder()}) {
    return GetCartItemsResponse(
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<GetCartItemResponse>,
    );
  }
}

extension $GetCartItemsResponseCopyWith on GetCartItemsResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfGetCartItemsResponse.copyWith(...)` or `instanceOfGetCartItemsResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$GetCartItemsResponseCWProxy get copyWith =>
      _$GetCartItemsResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartItemsResponse _$GetCartItemsResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('GetCartItemsResponse', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['items']);
  final val = GetCartItemsResponse(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => GetCartItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$GetCartItemsResponseToJson(
  GetCartItemsResponse instance,
) => <String, dynamic>{'items': instance.items.map((e) => e.toJson()).toList()};
