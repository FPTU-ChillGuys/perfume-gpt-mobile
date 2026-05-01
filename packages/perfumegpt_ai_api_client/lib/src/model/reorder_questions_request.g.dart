// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reorder_questions_request.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReorderQuestionsRequestCWProxy {
  ReorderQuestionsRequest orders(List<ReorderQuestionItem> orders);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReorderQuestionsRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReorderQuestionsRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ReorderQuestionsRequest call({List<ReorderQuestionItem> orders});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReorderQuestionsRequest.copyWith(...)` or call `instanceOfReorderQuestionsRequest.copyWith.fieldName(value)` for a single field.
class _$ReorderQuestionsRequestCWProxyImpl
    implements _$ReorderQuestionsRequestCWProxy {
  const _$ReorderQuestionsRequestCWProxyImpl(this._value);

  final ReorderQuestionsRequest _value;

  @override
  ReorderQuestionsRequest orders(List<ReorderQuestionItem> orders) =>
      call(orders: orders);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReorderQuestionsRequest(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReorderQuestionsRequest(...).copyWith(id: 12, name: "My name")
  /// ```
  ReorderQuestionsRequest call({
    Object? orders = const $CopyWithPlaceholder(),
  }) {
    return ReorderQuestionsRequest(
      orders: orders == const $CopyWithPlaceholder() || orders == null
          ? _value.orders
          // ignore: cast_nullable_to_non_nullable
          : orders as List<ReorderQuestionItem>,
    );
  }
}

extension $ReorderQuestionsRequestCopyWith on ReorderQuestionsRequest {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReorderQuestionsRequest.copyWith(...)` or `instanceOfReorderQuestionsRequest.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReorderQuestionsRequestCWProxy get copyWith =>
      _$ReorderQuestionsRequestCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReorderQuestionsRequest _$ReorderQuestionsRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ReorderQuestionsRequest', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['orders']);
  final val = ReorderQuestionsRequest(
    orders: $checkedConvert(
      'orders',
      (v) => (v as List<dynamic>)
          .map((e) => ReorderQuestionItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$ReorderQuestionsRequestToJson(
  ReorderQuestionsRequest instance,
) => <String, dynamic>{
  'orders': instance.orders.map((e) => e.toJson()).toList(),
};
