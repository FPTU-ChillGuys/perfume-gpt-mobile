// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reorder_question_item.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$ReorderQuestionItemCWProxy {
  ReorderQuestionItem id(String id);

  ReorderQuestionItem order(num order);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReorderQuestionItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReorderQuestionItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ReorderQuestionItem call({String id, num order});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfReorderQuestionItem.copyWith(...)` or call `instanceOfReorderQuestionItem.copyWith.fieldName(value)` for a single field.
class _$ReorderQuestionItemCWProxyImpl implements _$ReorderQuestionItemCWProxy {
  const _$ReorderQuestionItemCWProxyImpl(this._value);

  final ReorderQuestionItem _value;

  @override
  ReorderQuestionItem id(String id) => call(id: id);

  @override
  ReorderQuestionItem order(num order) => call(order: order);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `ReorderQuestionItem(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// ReorderQuestionItem(...).copyWith(id: 12, name: "My name")
  /// ```
  ReorderQuestionItem call({
    Object? id = const $CopyWithPlaceholder(),
    Object? order = const $CopyWithPlaceholder(),
  }) {
    return ReorderQuestionItem(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      order: order == const $CopyWithPlaceholder() || order == null
          ? _value.order
          // ignore: cast_nullable_to_non_nullable
          : order as num,
    );
  }
}

extension $ReorderQuestionItemCopyWith on ReorderQuestionItem {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfReorderQuestionItem.copyWith(...)` or `instanceOfReorderQuestionItem.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$ReorderQuestionItemCWProxy get copyWith =>
      _$ReorderQuestionItemCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReorderQuestionItem _$ReorderQuestionItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ReorderQuestionItem', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['id', 'order']);
      final val = ReorderQuestionItem(
        id: $checkedConvert('id', (v) => v as String),
        order: $checkedConvert('order', (v) => v as num),
      );
      return val;
    });

Map<String, dynamic> _$ReorderQuestionItemToJson(
  ReorderQuestionItem instance,
) => <String, dynamic>{'id': instance.id, 'order': instance.order};
