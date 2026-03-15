// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_result_ofstring.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BulkActionResultOfstringCWProxy {
  BulkActionResultOfstring data(String? data);

  BulkActionResultOfstring metadata(BulkActionMetadata? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkActionResultOfstring(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkActionResultOfstring(...).copyWith(id: 12, name: "My name")
  /// ````
  BulkActionResultOfstring call({String? data, BulkActionMetadata? metadata});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBulkActionResultOfstring.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBulkActionResultOfstring.copyWith.fieldName(...)`
class _$BulkActionResultOfstringCWProxyImpl
    implements _$BulkActionResultOfstringCWProxy {
  const _$BulkActionResultOfstringCWProxyImpl(this._value);

  final BulkActionResultOfstring _value;

  @override
  BulkActionResultOfstring data(String? data) => this(data: data);

  @override
  BulkActionResultOfstring metadata(BulkActionMetadata? metadata) =>
      this(metadata: metadata);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkActionResultOfstring(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkActionResultOfstring(...).copyWith(id: 12, name: "My name")
  /// ````
  BulkActionResultOfstring call({
    Object? data = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return BulkActionResultOfstring(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as String?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as BulkActionMetadata?,
    );
  }
}

extension $BulkActionResultOfstringCopyWith on BulkActionResultOfstring {
  /// Returns a callable class that can be used as follows: `instanceOfBulkActionResultOfstring.copyWith(...)` or like so:`instanceOfBulkActionResultOfstring.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BulkActionResultOfstringCWProxy get copyWith =>
      _$BulkActionResultOfstringCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkActionResultOfstring _$BulkActionResultOfstringFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BulkActionResultOfstring', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['data']);
  final val = BulkActionResultOfstring(
    data: $checkedConvert('data', (v) => v as String?),
    metadata: $checkedConvert(
      'metadata',
      (v) => v == null
          ? null
          : BulkActionMetadata.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$BulkActionResultOfstringToJson(
  BulkActionResultOfstring instance,
) => <String, dynamic>{
  'data': instance.data,
  'metadata': ?instance.metadata?.toJson(),
};
