// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_result_ofstring.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkActionResultOfstring extends BulkActionResultOfstring {
  @override
  final String? data;
  @override
  final BulkActionMetadata? metadata;

  factory _$BulkActionResultOfstring([
    void Function(BulkActionResultOfstringBuilder)? updates,
  ]) => (BulkActionResultOfstringBuilder()..update(updates))._build();

  _$BulkActionResultOfstring._({this.data, this.metadata}) : super._();
  @override
  BulkActionResultOfstring rebuild(
    void Function(BulkActionResultOfstringBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BulkActionResultOfstringBuilder toBuilder() =>
      BulkActionResultOfstringBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkActionResultOfstring &&
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
    return (newBuiltValueToStringHelper(r'BulkActionResultOfstring')
          ..add('data', data)
          ..add('metadata', metadata))
        .toString();
  }
}

class BulkActionResultOfstringBuilder
    implements
        Builder<BulkActionResultOfstring, BulkActionResultOfstringBuilder> {
  _$BulkActionResultOfstring? _$v;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  BulkActionMetadataBuilder? _metadata;
  BulkActionMetadataBuilder get metadata =>
      _$this._metadata ??= BulkActionMetadataBuilder();
  set metadata(BulkActionMetadataBuilder? metadata) =>
      _$this._metadata = metadata;

  BulkActionResultOfstringBuilder() {
    BulkActionResultOfstring._defaults(this);
  }

  BulkActionResultOfstringBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _metadata = $v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkActionResultOfstring other) {
    _$v = other as _$BulkActionResultOfstring;
  }

  @override
  void update(void Function(BulkActionResultOfstringBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkActionResultOfstring build() => _build();

  _$BulkActionResultOfstring _build() {
    _$BulkActionResultOfstring _$result;
    try {
      _$result =
          _$v ??
          _$BulkActionResultOfstring._(
            data: data,
            metadata: _metadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BulkActionResultOfstring',
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
