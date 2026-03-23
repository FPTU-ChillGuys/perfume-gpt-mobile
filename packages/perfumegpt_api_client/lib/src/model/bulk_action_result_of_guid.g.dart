// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_result_of_guid.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BulkActionResultOfGuidCWProxy {
  BulkActionResultOfGuid data(String data);

  BulkActionResultOfGuid metadata(BulkActionMetadata? metadata);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BulkActionResultOfGuid(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BulkActionResultOfGuid(...).copyWith(id: 12, name: "My name")
  /// ```
  BulkActionResultOfGuid call({String data, BulkActionMetadata? metadata});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBulkActionResultOfGuid.copyWith(...)` or call `instanceOfBulkActionResultOfGuid.copyWith.fieldName(value)` for a single field.
class _$BulkActionResultOfGuidCWProxyImpl
    implements _$BulkActionResultOfGuidCWProxy {
  const _$BulkActionResultOfGuidCWProxyImpl(this._value);

  final BulkActionResultOfGuid _value;

  @override
  BulkActionResultOfGuid data(String data) => call(data: data);

  @override
  BulkActionResultOfGuid metadata(BulkActionMetadata? metadata) =>
      call(metadata: metadata);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BulkActionResultOfGuid(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BulkActionResultOfGuid(...).copyWith(id: 12, name: "My name")
  /// ```
  BulkActionResultOfGuid call({
    Object? data = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return BulkActionResultOfGuid(
      data: data == const $CopyWithPlaceholder() || data == null
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBulkActionResultOfGuid.copyWith(...)` or `instanceOfBulkActionResultOfGuid.copyWith.fieldName(...)`.
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
