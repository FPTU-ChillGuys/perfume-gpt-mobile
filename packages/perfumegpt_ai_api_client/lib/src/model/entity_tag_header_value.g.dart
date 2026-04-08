// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_tag_header_value.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EntityTagHeaderValueCWProxy {
  EntityTagHeaderValue tag(StringSegment? tag);

  EntityTagHeaderValue isWeak(bool? isWeak);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EntityTagHeaderValue(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EntityTagHeaderValue(...).copyWith(id: 12, name: "My name")
  /// ```
  EntityTagHeaderValue call({StringSegment? tag, bool? isWeak});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfEntityTagHeaderValue.copyWith(...)` or call `instanceOfEntityTagHeaderValue.copyWith.fieldName(value)` for a single field.
class _$EntityTagHeaderValueCWProxyImpl
    implements _$EntityTagHeaderValueCWProxy {
  const _$EntityTagHeaderValueCWProxyImpl(this._value);

  final EntityTagHeaderValue _value;

  @override
  EntityTagHeaderValue tag(StringSegment? tag) => call(tag: tag);

  @override
  EntityTagHeaderValue isWeak(bool? isWeak) => call(isWeak: isWeak);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `EntityTagHeaderValue(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// EntityTagHeaderValue(...).copyWith(id: 12, name: "My name")
  /// ```
  EntityTagHeaderValue call({
    Object? tag = const $CopyWithPlaceholder(),
    Object? isWeak = const $CopyWithPlaceholder(),
  }) {
    return EntityTagHeaderValue(
      tag: tag == const $CopyWithPlaceholder()
          ? _value.tag
          // ignore: cast_nullable_to_non_nullable
          : tag as StringSegment?,
      isWeak: isWeak == const $CopyWithPlaceholder()
          ? _value.isWeak
          // ignore: cast_nullable_to_non_nullable
          : isWeak as bool?,
    );
  }
}

extension $EntityTagHeaderValueCopyWith on EntityTagHeaderValue {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfEntityTagHeaderValue.copyWith(...)` or `instanceOfEntityTagHeaderValue.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$EntityTagHeaderValueCWProxy get copyWith =>
      _$EntityTagHeaderValueCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EntityTagHeaderValue _$EntityTagHeaderValueFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('EntityTagHeaderValue', json, ($checkedConvert) {
  final val = EntityTagHeaderValue(
    tag: $checkedConvert(
      'tag',
      (v) =>
          v == null ? null : StringSegment.fromJson(v as Map<String, dynamic>),
    ),
    isWeak: $checkedConvert('isWeak', (v) => v as bool?),
  );
  return val;
});

Map<String, dynamic> _$EntityTagHeaderValueToJson(
  EntityTagHeaderValue instance,
) => <String, dynamic>{
  'tag': ?instance.tag?.toJson(),
  'isWeak': ?instance.isWeak,
};
