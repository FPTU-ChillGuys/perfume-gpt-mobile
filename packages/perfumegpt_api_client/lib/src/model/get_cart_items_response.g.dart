// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_items_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$GetCartItemsResponseCWProxy {
  GetCartItemsResponse items(List<GetCartItemResponse>? items);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GetCartItemsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GetCartItemsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  GetCartItemsResponse call({List<GetCartItemResponse>? items});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfGetCartItemsResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfGetCartItemsResponse.copyWith.fieldName(...)`
class _$GetCartItemsResponseCWProxyImpl
    implements _$GetCartItemsResponseCWProxy {
  const _$GetCartItemsResponseCWProxyImpl(this._value);

  final GetCartItemsResponse _value;

  @override
  GetCartItemsResponse items(List<GetCartItemResponse>? items) =>
      this(items: items);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `GetCartItemsResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// GetCartItemsResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  GetCartItemsResponse call({Object? items = const $CopyWithPlaceholder()}) {
    return GetCartItemsResponse(
      items: items == const $CopyWithPlaceholder()
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<GetCartItemResponse>?,
    );
  }
}

extension $GetCartItemsResponseCopyWith on GetCartItemsResponse {
  /// Returns a callable class that can be used as follows: `instanceOfGetCartItemsResponse.copyWith(...)` or like so:`instanceOfGetCartItemsResponse.copyWith.fieldName(...)`.
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
  final val = GetCartItemsResponse(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>?)
          ?.map((e) => GetCartItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$GetCartItemsResponseToJson(
  GetCartItemsResponse instance,
) => <String, dynamic>{
  'items': ?instance.items?.map((e) => e.toJson()).toList(),
};
