// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_fragment_attribute.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$QueryFragmentAttributeCWProxy {
  QueryFragmentAttribute type(QueryFragmentAttributeTypeEnum type);

  QueryFragmentAttribute attributeName(String attributeName);

  QueryFragmentAttribute match(String match);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `QueryFragmentAttribute(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// QueryFragmentAttribute(...).copyWith(id: 12, name: "My name")
  /// ```
  QueryFragmentAttribute call({
    QueryFragmentAttributeTypeEnum type,
    String attributeName,
    String match,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfQueryFragmentAttribute.copyWith(...)` or call `instanceOfQueryFragmentAttribute.copyWith.fieldName(value)` for a single field.
class _$QueryFragmentAttributeCWProxyImpl
    implements _$QueryFragmentAttributeCWProxy {
  const _$QueryFragmentAttributeCWProxyImpl(this._value);

  final QueryFragmentAttribute _value;

  @override
  QueryFragmentAttribute type(QueryFragmentAttributeTypeEnum type) =>
      call(type: type);

  @override
  QueryFragmentAttribute attributeName(String attributeName) =>
      call(attributeName: attributeName);

  @override
  QueryFragmentAttribute match(String match) => call(match: match);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `QueryFragmentAttribute(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// QueryFragmentAttribute(...).copyWith(id: 12, name: "My name")
  /// ```
  QueryFragmentAttribute call({
    Object? type = const $CopyWithPlaceholder(),
    Object? attributeName = const $CopyWithPlaceholder(),
    Object? match = const $CopyWithPlaceholder(),
  }) {
    return QueryFragmentAttribute(
      type: type == const $CopyWithPlaceholder() || type == null
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as QueryFragmentAttributeTypeEnum,
      attributeName:
          attributeName == const $CopyWithPlaceholder() || attributeName == null
          ? _value.attributeName
          // ignore: cast_nullable_to_non_nullable
          : attributeName as String,
      match: match == const $CopyWithPlaceholder() || match == null
          ? _value.match
          // ignore: cast_nullable_to_non_nullable
          : match as String,
    );
  }
}

extension $QueryFragmentAttributeCopyWith on QueryFragmentAttribute {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfQueryFragmentAttribute.copyWith(...)` or `instanceOfQueryFragmentAttribute.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$QueryFragmentAttributeCWProxy get copyWith =>
      _$QueryFragmentAttributeCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QueryFragmentAttribute _$QueryFragmentAttributeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('QueryFragmentAttribute', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['type', 'attributeName', 'match']);
  final val = QueryFragmentAttribute(
    type: $checkedConvert(
      'type',
      (v) => $enumDecode(_$QueryFragmentAttributeTypeEnumEnumMap, v),
    ),
    attributeName: $checkedConvert('attributeName', (v) => v as String),
    match: $checkedConvert('match', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$QueryFragmentAttributeToJson(
  QueryFragmentAttribute instance,
) => <String, dynamic>{
  'type': _$QueryFragmentAttributeTypeEnumEnumMap[instance.type]!,
  'attributeName': instance.attributeName,
  'match': instance.match,
};

const _$QueryFragmentAttributeTypeEnumEnumMap = {
  QueryFragmentAttributeTypeEnum.attribute: 'attribute',
};
