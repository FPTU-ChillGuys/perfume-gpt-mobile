// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_fragment_budget.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueryFragmentBudgetCWProxy {
  QueryFragmentBudget type(QueryFragmentBudgetTypeEnum type);

  QueryFragmentBudget min(num? min);

  QueryFragmentBudget max(num? max);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `QueryFragmentBudget(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// QueryFragmentBudget(...).copyWith(id: 12, name: "My name")
  /// ```
  QueryFragmentBudget call({
    QueryFragmentBudgetTypeEnum type,
    num? min,
    num? max,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfQueryFragmentBudget.copyWith(...)` or call `instanceOfQueryFragmentBudget.copyWith.fieldName(value)` for a single field.
class _$QueryFragmentBudgetCWProxyImpl implements _$QueryFragmentBudgetCWProxy {
  const _$QueryFragmentBudgetCWProxyImpl(this._value);

  final QueryFragmentBudget _value;

  @override
  QueryFragmentBudget type(QueryFragmentBudgetTypeEnum type) =>
      call(type: type);

  @override
  QueryFragmentBudget min(num? min) => call(min: min);

  @override
  QueryFragmentBudget max(num? max) => call(max: max);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `QueryFragmentBudget(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// QueryFragmentBudget(...).copyWith(id: 12, name: "My name")
  /// ```
  QueryFragmentBudget call({
    Object? type = const $CopyWithPlaceholder(),
    Object? min = const $CopyWithPlaceholder(),
    Object? max = const $CopyWithPlaceholder(),
  }) {
    return QueryFragmentBudget(
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as QueryFragmentBudgetTypeEnum,
      min: min == const $CopyWithPlaceholder()
          ? _value.min
          // ignore: cast_nullable_to_non_nullable
          : min as num?,
      max: max == const $CopyWithPlaceholder()
          ? _value.max
          // ignore: cast_nullable_to_non_nullable
          : max as num?,
    );
  }
}

extension $QueryFragmentBudgetCopyWith on QueryFragmentBudget {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfQueryFragmentBudget.copyWith(...)` or `instanceOfQueryFragmentBudget.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueryFragmentBudgetCWProxy get copyWith =>
      _$QueryFragmentBudgetCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFragmentBudget _$QueryFragmentBudgetFromJson(Map<String, dynamic> json) =>
    $checkedCreate('QueryFragmentBudget', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['type']);
      final val = QueryFragmentBudget(
        type: $checkedConvert(
          'type',
          (v) => $enumDecode(_$QueryFragmentBudgetTypeEnumEnumMap, v),
        ),
        min: $checkedConvert('min', (v) => v as num?),
        max: $checkedConvert('max', (v) => v as num?),
      );
      return val;
    });

Map<String, dynamic> _$QueryFragmentBudgetToJson(
  QueryFragmentBudget instance,
) => <String, dynamic>{
  'type': _$QueryFragmentBudgetTypeEnumEnumMap[instance.type]!,
  'min': ?instance.min,
  'max': ?instance.max,
};

const _$QueryFragmentBudgetTypeEnumEnumMap = {
  QueryFragmentBudgetTypeEnum.budget: 'budget',
};
