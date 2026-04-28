// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_fragment_match.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueryFragmentMatchCWProxy {
  QueryFragmentMatch type(QueryFragmentMatchTypeEnum type);

  QueryFragmentMatch match(String match);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `QueryFragmentMatch(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// QueryFragmentMatch(...).copyWith(id: 12, name: "My name")
  /// ```
  QueryFragmentMatch call({QueryFragmentMatchTypeEnum type, String match});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfQueryFragmentMatch.copyWith(...)` or call `instanceOfQueryFragmentMatch.copyWith.fieldName(value)` for a single field.
class _$QueryFragmentMatchCWProxyImpl implements _$QueryFragmentMatchCWProxy {
  const _$QueryFragmentMatchCWProxyImpl(this._value);

  final QueryFragmentMatch _value;

  @override
  QueryFragmentMatch type(QueryFragmentMatchTypeEnum type) => call(type: type);

  @override
  QueryFragmentMatch match(String match) => call(match: match);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `QueryFragmentMatch(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// QueryFragmentMatch(...).copyWith(id: 12, name: "My name")
  /// ```
  QueryFragmentMatch call({
    Object? type = const $CopyWithPlaceholder(),
    Object? match = const $CopyWithPlaceholder(),
  }) {
    return QueryFragmentMatch(
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as QueryFragmentMatchTypeEnum,
      match: match == const $CopyWithPlaceholder() || match == null
          ? _value.match
          // ignore: cast_nullable_to_non_nullable
          : match as String,
    );
  }
}

extension $QueryFragmentMatchCopyWith on QueryFragmentMatch {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfQueryFragmentMatch.copyWith(...)` or `instanceOfQueryFragmentMatch.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueryFragmentMatchCWProxy get copyWith =>
      _$QueryFragmentMatchCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFragmentMatch _$QueryFragmentMatchFromJson(Map<String, dynamic> json) =>
    $checkedCreate('QueryFragmentMatch', json, ($checkedConvert) {
      $checkKeys(json, requiredKeys: const ['type', 'match']);
      final val = QueryFragmentMatch(
        type: $checkedConvert(
          'type',
          (v) => $enumDecode(_$QueryFragmentMatchTypeEnumEnumMap, v),
        ),
        match: $checkedConvert('match', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$QueryFragmentMatchToJson(QueryFragmentMatch instance) =>
    <String, dynamic>{
      'type': _$QueryFragmentMatchTypeEnumEnumMap[instance.type]!,
      'match': instance.match,
    };

const _$QueryFragmentMatchTypeEnumEnumMap = {
  QueryFragmentMatchTypeEnum.gender: 'gender',
  QueryFragmentMatchTypeEnum.origin: 'origin',
  QueryFragmentMatchTypeEnum.brand: 'brand',
  QueryFragmentMatchTypeEnum.category: 'category',
  QueryFragmentMatchTypeEnum.concentration: 'concentration',
  QueryFragmentMatchTypeEnum.note: 'note',
  QueryFragmentMatchTypeEnum.family: 'family',
  QueryFragmentMatchTypeEnum.attribute: 'attribute',
  QueryFragmentMatchTypeEnum.budget: 'budget',
};
