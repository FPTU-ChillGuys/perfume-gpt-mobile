// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkActionMetadata extends BulkActionMetadata {
  @override
  final BuiltList<BulkOperationResult> operations;
  @override
  final bool? hasPartialFailure;
  @override
  final bool? allSucceeded;
  @override
  final int? totalOperations;
  @override
  final int? totalSucceeded;
  @override
  final int? totalFailed;

  factory _$BulkActionMetadata([
    void Function(BulkActionMetadataBuilder)? updates,
  ]) => (BulkActionMetadataBuilder()..update(updates))._build();

  _$BulkActionMetadata._({
    required this.operations,
    this.hasPartialFailure,
    this.allSucceeded,
    this.totalOperations,
    this.totalSucceeded,
    this.totalFailed,
  }) : super._();
  @override
  BulkActionMetadata rebuild(
    void Function(BulkActionMetadataBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BulkActionMetadataBuilder toBuilder() =>
      BulkActionMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkActionMetadata &&
        operations == other.operations &&
        hasPartialFailure == other.hasPartialFailure &&
        allSucceeded == other.allSucceeded &&
        totalOperations == other.totalOperations &&
        totalSucceeded == other.totalSucceeded &&
        totalFailed == other.totalFailed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operations.hashCode);
    _$hash = $jc(_$hash, hasPartialFailure.hashCode);
    _$hash = $jc(_$hash, allSucceeded.hashCode);
    _$hash = $jc(_$hash, totalOperations.hashCode);
    _$hash = $jc(_$hash, totalSucceeded.hashCode);
    _$hash = $jc(_$hash, totalFailed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BulkActionMetadata')
          ..add('operations', operations)
          ..add('hasPartialFailure', hasPartialFailure)
          ..add('allSucceeded', allSucceeded)
          ..add('totalOperations', totalOperations)
          ..add('totalSucceeded', totalSucceeded)
          ..add('totalFailed', totalFailed))
        .toString();
  }
}

class BulkActionMetadataBuilder
    implements Builder<BulkActionMetadata, BulkActionMetadataBuilder> {
  _$BulkActionMetadata? _$v;

  ListBuilder<BulkOperationResult>? _operations;
  ListBuilder<BulkOperationResult> get operations =>
      _$this._operations ??= ListBuilder<BulkOperationResult>();
  set operations(ListBuilder<BulkOperationResult>? operations) =>
      _$this._operations = operations;

  bool? _hasPartialFailure;
  bool? get hasPartialFailure => _$this._hasPartialFailure;
  set hasPartialFailure(bool? hasPartialFailure) =>
      _$this._hasPartialFailure = hasPartialFailure;

  bool? _allSucceeded;
  bool? get allSucceeded => _$this._allSucceeded;
  set allSucceeded(bool? allSucceeded) => _$this._allSucceeded = allSucceeded;

  int? _totalOperations;
  int? get totalOperations => _$this._totalOperations;
  set totalOperations(int? totalOperations) =>
      _$this._totalOperations = totalOperations;

  int? _totalSucceeded;
  int? get totalSucceeded => _$this._totalSucceeded;
  set totalSucceeded(int? totalSucceeded) =>
      _$this._totalSucceeded = totalSucceeded;

  int? _totalFailed;
  int? get totalFailed => _$this._totalFailed;
  set totalFailed(int? totalFailed) => _$this._totalFailed = totalFailed;

  BulkActionMetadataBuilder() {
    BulkActionMetadata._defaults(this);
  }

  BulkActionMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operations = $v.operations.toBuilder();
      _hasPartialFailure = $v.hasPartialFailure;
      _allSucceeded = $v.allSucceeded;
      _totalOperations = $v.totalOperations;
      _totalSucceeded = $v.totalSucceeded;
      _totalFailed = $v.totalFailed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkActionMetadata other) {
    _$v = other as _$BulkActionMetadata;
  }

  @override
  void update(void Function(BulkActionMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkActionMetadata build() => _build();

  _$BulkActionMetadata _build() {
    _$BulkActionMetadata _$result;
    try {
      _$result =
          _$v ??
          _$BulkActionMetadata._(
            operations: operations.build(),
            hasPartialFailure: hasPartialFailure,
            allSucceeded: allSucceeded,
            totalOperations: totalOperations,
            totalSucceeded: totalSucceeded,
            totalFailed: totalFailed,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'operations';
        operations.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BulkActionMetadata',
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
