// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'string_segment.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StringSegmentCWProxy {
  StringSegment buffer(String? buffer);

  StringSegment offset(int? offset);

  StringSegment length(int? length);

  StringSegment value(String? value);

  StringSegment hasValue(bool? hasValue);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StringSegment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StringSegment(...).copyWith(id: 12, name: "My name")
  /// ````
  StringSegment call({
    String? buffer,
    int? offset,
    int? length,
    String? value,
    bool? hasValue,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStringSegment.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStringSegment.copyWith.fieldName(...)`
class _$StringSegmentCWProxyImpl implements _$StringSegmentCWProxy {
  const _$StringSegmentCWProxyImpl(this._value);

  final StringSegment _value;

  @override
  StringSegment buffer(String? buffer) => this(buffer: buffer);

  @override
  StringSegment offset(int? offset) => this(offset: offset);

  @override
  StringSegment length(int? length) => this(length: length);

  @override
  StringSegment value(String? value) => this(value: value);

  @override
  StringSegment hasValue(bool? hasValue) => this(hasValue: hasValue);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StringSegment(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StringSegment(...).copyWith(id: 12, name: "My name")
  /// ````
  StringSegment call({
    Object? buffer = const $CopyWithPlaceholder(),
    Object? offset = const $CopyWithPlaceholder(),
    Object? length = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
    Object? hasValue = const $CopyWithPlaceholder(),
  }) {
    return StringSegment(
      buffer: buffer == const $CopyWithPlaceholder()
          ? _value.buffer
          // ignore: cast_nullable_to_non_nullable
          : buffer as String?,
      offset: offset == const $CopyWithPlaceholder()
          ? _value.offset
          // ignore: cast_nullable_to_non_nullable
          : offset as int?,
      length: length == const $CopyWithPlaceholder()
          ? _value.length
          // ignore: cast_nullable_to_non_nullable
          : length as int?,
      value: value == const $CopyWithPlaceholder()
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String?,
      hasValue: hasValue == const $CopyWithPlaceholder()
          ? _value.hasValue
          // ignore: cast_nullable_to_non_nullable
          : hasValue as bool?,
    );
  }
}

extension $StringSegmentCopyWith on StringSegment {
  /// Returns a callable class that can be used as follows: `instanceOfStringSegment.copyWith(...)` or like so:`instanceOfStringSegment.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StringSegmentCWProxy get copyWith => _$StringSegmentCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StringSegment _$StringSegmentFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StringSegment', json, ($checkedConvert) {
      final val = StringSegment(
        buffer: $checkedConvert('buffer', (v) => v as String?),
        offset: $checkedConvert('offset', (v) => (v as num?)?.toInt()),
        length: $checkedConvert('length', (v) => (v as num?)?.toInt()),
        value: $checkedConvert('value', (v) => v as String?),
        hasValue: $checkedConvert('hasValue', (v) => v as bool?),
      );
      return val;
    });

Map<String, dynamic> _$StringSegmentToJson(StringSegment instance) =>
    <String, dynamic>{
      'buffer': ?instance.buffer,
      'offset': ?instance.offset,
      'length': ?instance.length,
      'value': ?instance.value,
      'hasValue': ?instance.hasValue,
    };
