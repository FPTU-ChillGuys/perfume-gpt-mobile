// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_result_of_guid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkActionResultOfGuid extends BulkActionResultOfGuid {
  @override
  final String data;
  @override
  final BulkActionMetadata? metadata;

  factory _$BulkActionResultOfGuid([
    void Function(BulkActionResultOfGuidBuilder)? updates,
  ]) => (BulkActionResultOfGuidBuilder()..update(updates))._build();

  _$BulkActionResultOfGuid._({required this.data, this.metadata}) : super._();
  @override
  BulkActionResultOfGuid rebuild(
    void Function(BulkActionResultOfGuidBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BulkActionResultOfGuidBuilder toBuilder() =>
      BulkActionResultOfGuidBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkActionResultOfGuid &&
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
    return (newBuiltValueToStringHelper(r'BulkActionResultOfGuid')
          ..add('data', data)
          ..add('metadata', metadata))
        .toString();
  }
}

class BulkActionResultOfGuidBuilder
    implements Builder<BulkActionResultOfGuid, BulkActionResultOfGuidBuilder> {
  _$BulkActionResultOfGuid? _$v;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  BulkActionMetadataBuilder? _metadata;
  BulkActionMetadataBuilder get metadata =>
      _$this._metadata ??= BulkActionMetadataBuilder();
  set metadata(BulkActionMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  BulkActionResultOfGuidBuilder() {
    BulkActionResultOfGuid._defaults(this);
  }

  BulkActionResultOfGuidBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkActionResultOfGuid other) {
    _$v = other as _$BulkActionResultOfGuid;
  }

  @override
  void update(void Function(BulkActionResultOfGuidBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkActionResultOfGuid build() => _build();

  _$BulkActionResultOfGuid _build() {
    _$BulkActionResultOfGuid _$result;
    try {
      _$result =
          _$v ??
          _$BulkActionResultOfGuid._(
            data: BuiltValueNullFieldError.checkNotNull(
              data,
              r'BulkActionResultOfGuid',
              'data',
            ),
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BulkActionResultOfGuid',
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
