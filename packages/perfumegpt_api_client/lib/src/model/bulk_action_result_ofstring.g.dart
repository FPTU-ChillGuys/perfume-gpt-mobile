// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_result_ofstring.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BulkActionResultOfstringCWProxy {
  BulkActionResultOfstring data(String? data);

  BulkActionResultOfstring metadata(BulkActionMetadata? metadata);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BulkActionResultOfstring(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BulkActionResultOfstring(...).copyWith(id: 12, name: "My name")
  /// ```
  BulkActionResultOfstring call({String? data, BulkActionMetadata? metadata});
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBulkActionResultOfstring.copyWith(...)` or call `instanceOfBulkActionResultOfstring.copyWith.fieldName(value)` for a single field.
class _$BulkActionResultOfstringCWProxyImpl
    implements _$BulkActionResultOfstringCWProxy {
  const _$BulkActionResultOfstringCWProxyImpl(this._value);

  final BulkActionResultOfstring _value;

  @override
  BulkActionResultOfstring data(String? data) => call(data: data);

  @override
  BulkActionResultOfstring metadata(BulkActionMetadata? metadata) =>
      call(metadata: metadata);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BulkActionResultOfstring(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BulkActionResultOfstring(...).copyWith(id: 12, name: "My name")
  /// ```
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
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBulkActionResultOfstring.copyWith(...)` or `instanceOfBulkActionResultOfstring.copyWith.fieldName(...)`.
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
