// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_list_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$PickListResponseCWProxy {
  PickListResponse orderId(String? orderId);

  PickListResponse code(String code);

  PickListResponse items(List<PickListItemResponse> items);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PickListResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PickListResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PickListResponse call({
    String? orderId,
    String code,
    List<PickListItemResponse> items,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfPickListResponse.copyWith(...)` or call `instanceOfPickListResponse.copyWith.fieldName(value)` for a single field.
class _$PickListResponseCWProxyImpl implements _$PickListResponseCWProxy {
  const _$PickListResponseCWProxyImpl(this._value);

  final PickListResponse _value;

  @override
  PickListResponse orderId(String? orderId) => call(orderId: orderId);

  @override
  PickListResponse code(String code) => call(code: code);

  @override
  PickListResponse items(List<PickListItemResponse> items) =>
      call(items: items);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `PickListResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// PickListResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  PickListResponse call({
    Object? orderId = const $CopyWithPlaceholder(),
    Object? code = const $CopyWithPlaceholder(),
    Object? items = const $CopyWithPlaceholder(),
  }) {
    return PickListResponse(
      orderId: orderId == const $CopyWithPlaceholder()
          ? _value.orderId
          // ignore: cast_nullable_to_non_nullable
          : orderId as String?,
      code: code == const $CopyWithPlaceholder() || code == null
          ? _value.code
          // ignore: cast_nullable_to_non_nullable
          : code as String,
      items: items == const $CopyWithPlaceholder() || items == null
          ? _value.items
          // ignore: cast_nullable_to_non_nullable
          : items as List<PickListItemResponse>,
    );
  }
}

extension $PickListResponseCopyWith on PickListResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfPickListResponse.copyWith(...)` or `instanceOfPickListResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$PickListResponseCWProxy get copyWith => _$PickListResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PickListResponse _$PickListResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PickListResponse', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['code', 'items']);
      final val = PickListResponse(
        orderId: $checkedConvert('orderId', (v) => v as String?),
        code: $checkedConvert('code', (v) => v as String),
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map(
                (e) => PickListItemResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$PickListResponseToJson(PickListResponse instance) =>
    <String, dynamic>{
      'orderId': ?instance.orderId,
      'code': instance.code,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
