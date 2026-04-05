// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_result_of_list_of_temporary_media_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkActionResultOfListOfTemporaryMediaResponse
    extends BulkActionResultOfListOfTemporaryMediaResponse {
  @override
  final BuiltList<TemporaryMediaResponse>? data;
  @override
  final BulkActionMetadata? metadata;

  factory _$BulkActionResultOfListOfTemporaryMediaResponse([
    void Function(BulkActionResultOfListOfTemporaryMediaResponseBuilder)?
    updates,
  ]) =>
      (BulkActionResultOfListOfTemporaryMediaResponseBuilder()..update(updates))
          ._build();

  _$BulkActionResultOfListOfTemporaryMediaResponse._({this.data, this.metadata})
    : super._();
  @override
  BulkActionResultOfListOfTemporaryMediaResponse rebuild(
    void Function(BulkActionResultOfListOfTemporaryMediaResponseBuilder)
    updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BulkActionResultOfListOfTemporaryMediaResponseBuilder toBuilder() =>
      BulkActionResultOfListOfTemporaryMediaResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkActionResultOfListOfTemporaryMediaResponse &&
        data == other.data &&
        metadata == other.metadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'BulkActionResultOfListOfTemporaryMediaResponse',
          )
          ..add('data', data)
          ..add('metadata', metadata))
        .toString();
  }
}

class BulkActionResultOfListOfTemporaryMediaResponseBuilder
    implements
        Builder<
          BulkActionResultOfListOfTemporaryMediaResponse,
          BulkActionResultOfListOfTemporaryMediaResponseBuilder
        > {
  _$BulkActionResultOfListOfTemporaryMediaResponse? _$v;

  ListBuilder<TemporaryMediaResponse>? _data;
  ListBuilder<TemporaryMediaResponse> get data =>
      _$this._data ??= ListBuilder<TemporaryMediaResponse>();
  set data(ListBuilder<TemporaryMediaResponse>? data) => _$this._data = data;

  BulkActionMetadataBuilder? _metadata;
  BulkActionMetadataBuilder get metadata =>
      _$this._metadata ??= BulkActionMetadataBuilder();
  set metadata(BulkActionMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  BulkActionResultOfListOfTemporaryMediaResponseBuilder() {
    BulkActionResultOfListOfTemporaryMediaResponse._defaults(this);
  }

  BulkActionResultOfListOfTemporaryMediaResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkActionResultOfListOfTemporaryMediaResponse other) {
    _$v = other as _$BulkActionResultOfListOfTemporaryMediaResponse;
  }

  @override
  void update(
    void Function(BulkActionResultOfListOfTemporaryMediaResponseBuilder)?
    updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BulkActionResultOfListOfTemporaryMediaResponse build() => _build();

  _$BulkActionResultOfListOfTemporaryMediaResponse _build() {
    _$BulkActionResultOfListOfTemporaryMediaResponse _$result;
    try {
      _$result =
          _$v ??
          _$BulkActionResultOfListOfTemporaryMediaResponse._(
            data: _data?.build(),
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BulkActionResultOfListOfTemporaryMediaResponse',
          _$failedField,
          e.toString(),
        );
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
