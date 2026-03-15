// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_result_of_list_of_temporary_media_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BulkActionResultOfListOfTemporaryMediaResponseCWProxy {
  BulkActionResultOfListOfTemporaryMediaResponse data(
    List<TemporaryMediaResponse>? data,
  );

  BulkActionResultOfListOfTemporaryMediaResponse metadata(
    BulkActionMetadata? metadata,
  );

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkActionResultOfListOfTemporaryMediaResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkActionResultOfListOfTemporaryMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BulkActionResultOfListOfTemporaryMediaResponse call({
    List<TemporaryMediaResponse>? data,
    BulkActionMetadata? metadata,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith.fieldName(...)`
class _$BulkActionResultOfListOfTemporaryMediaResponseCWProxyImpl
    implements _$BulkActionResultOfListOfTemporaryMediaResponseCWProxy {
  const _$BulkActionResultOfListOfTemporaryMediaResponseCWProxyImpl(
    this._value,
  );

  final BulkActionResultOfListOfTemporaryMediaResponse _value;

  @override
  BulkActionResultOfListOfTemporaryMediaResponse data(
    List<TemporaryMediaResponse>? data,
  ) => this(data: data);

  @override
  BulkActionResultOfListOfTemporaryMediaResponse metadata(
    BulkActionMetadata? metadata,
  ) => this(metadata: metadata);

  @override
  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `BulkActionResultOfListOfTemporaryMediaResponse(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// BulkActionResultOfListOfTemporaryMediaResponse(...).copyWith(id: 12, name: "My name")
  /// ````
  BulkActionResultOfListOfTemporaryMediaResponse call({
    Object? data = const $CopyWithPlaceholder(),
    Object? metadata = const $CopyWithPlaceholder(),
  }) {
    return BulkActionResultOfListOfTemporaryMediaResponse(
      data: data == const $CopyWithPlaceholder()
          ? _value.data
          // ignore: cast_nullable_to_non_nullable
          : data as List<TemporaryMediaResponse>?,
      metadata: metadata == const $CopyWithPlaceholder()
          ? _value.metadata
          // ignore: cast_nullable_to_non_nullable
          : metadata as BulkActionMetadata?,
    );
  }
}

extension $BulkActionResultOfListOfTemporaryMediaResponseCopyWith
    on BulkActionResultOfListOfTemporaryMediaResponse {
  /// Returns a callable class that can be used as follows: `instanceOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith(...)` or like so:`instanceOfBulkActionResultOfListOfTemporaryMediaResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BulkActionResultOfListOfTemporaryMediaResponseCWProxy get copyWith =>
      _$BulkActionResultOfListOfTemporaryMediaResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BulkActionResultOfListOfTemporaryMediaResponse
_$BulkActionResultOfListOfTemporaryMediaResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('BulkActionResultOfListOfTemporaryMediaResponse', json, (
  $checkedConvert,
) {
  $checkKeys(json, requiredKeys: const ['data']);
  final val = BulkActionResultOfListOfTemporaryMediaResponse(
    data: $checkedConvert(
      'data',
      (v) => (v as List<dynamic>?)
          ?.map(
            (e) => TemporaryMediaResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    metadata: $checkedConvert(
      'metadata',
      (v) => v == null
          ? null
          : BulkActionMetadata.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$BulkActionResultOfListOfTemporaryMediaResponseToJson(
  BulkActionResultOfListOfTemporaryMediaResponse instance,
) => <String, dynamic>{
  'data': instance.data?.map((e) => e.toJson()).toList(),
  'metadata': ?instance.metadata?.toJson(),
};
