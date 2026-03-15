// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_result_of_guid.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BulkActionResultOfGuidCWProxy {
  BulkActionResultOfGuid data(String data);

  BulkActionResultOfGuid metadata(BulkActionMetadata? metadata);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkActionResultOfGuid(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkActionResultOfGuid(...).copyWith(id: 12, name: "My name")
  /// ````
  BulkActionResultOfGuid call({String data, BulkActionMetadata? metadata});
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBulkActionResultOfGuid.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBulkActionResultOfGuid.copyWith.fieldName(...)`
class _$BulkActionResultOfGuidCWProxyImpl
    implements _$BulkActionResultOfGuidCWProxy {
  const _$BulkActionResultOfGuidCWProxyImpl(this._value);

  final BulkActionResultOfGuid _value;

  @override
  BulkActionResultOfGuid data(String data) => this(data: data);

  @override
  BulkActionResultOfGuid metadata(BulkActionMetadata? metadata) =>
      this(metadata: metadata);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkActionResultOfGuid(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkActionResultOfGuid(...).copyWith(id: 12, name: "My name")
  /// ````
  BulkActionResultOfGuid call({
    Object? data = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return BulkActionResultOfGuid(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as String,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as BulkActionMetadata?,
    );
  }
}

extension $BulkActionResultOfGuidCopyWith on BulkActionResultOfGuid {
  /// Returns a callable class that can be used as follows: `instanceOfBulkActionResultOfGuid.copyWith(...)` or like so:`instanceOfBulkActionResultOfGuid.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BulkActionResultOfGuidCWProxy get copyWith =>
      _$BulkActionResultOfGuidCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkActionResultOfGuid _$BulkActionResultOfGuidFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BulkActionResultOfGuid', json, ($checkedConvert) {
  $checkKeys(json, requiredKeys: const ['data']);
  final val = BulkActionResultOfGuid(
    data: $checkedConvert('data', (v) => v as String),
    metadata: $checkedConvert(
      'metadata',
      (v) => v == null
          ? null
          : BulkActionMetadata.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$BulkActionResultOfGuidToJson(
  BulkActionResultOfGuid instance,
) => <String, dynamic>{
  'data': instance.data,
  'metadata': ?instance.metadata?.toJson(),
};
