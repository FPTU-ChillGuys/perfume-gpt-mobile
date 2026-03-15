// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_tag_header_value.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$EntityTagHeaderValueCWProxy {
  EntityTagHeaderValue tag(StringSegment? tag);

  EntityTagHeaderValue isWeak(bool? isWeak);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EntityTagHeaderValue(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EntityTagHeaderValue(...).copyWith(id: 12, name: "My name")
  /// ````
  EntityTagHeaderValue call({StringSegment? tag, bool? isWeak});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfEntityTagHeaderValue.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfEntityTagHeaderValue.copyWith.fieldName(...)`
class _$EntityTagHeaderValueCWProxyImpl
    implements _$EntityTagHeaderValueCWProxy {
  const _$EntityTagHeaderValueCWProxyImpl(this._value);

  final EntityTagHeaderValue _value;

  @override
  EntityTagHeaderValue tag(StringSegment? tag) => this(tag: tag);

  @override
  EntityTagHeaderValue isWeak(bool? isWeak) => this(isWeak: isWeak);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `EntityTagHeaderValue(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// EntityTagHeaderValue(...).copyWith(id: 12, name: "My name")
  /// ````
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
  /// Returns a callable class that can be used as follows: `instanceOfEntityTagHeaderValue.copyWith(...)` or like so:`instanceOfEntityTagHeaderValue.copyWith.fieldName(...)`.
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
