// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_operation_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkOperationResult extends BulkOperationResult {
  @override
  final String operationName;
  @override
  final int? succeededCount;
  @override
  final int? failedCount;
  @override
  final BuiltList<BulkActionError> errors;
  @override
  final int? totalProcessed;
  @override
  final bool? hasError;

  factory _$BulkOperationResult([
    void Function(BulkOperationResultBuilder)? updates,
  ]) => (BulkOperationResultBuilder()..update(updates))._build();

  _$BulkOperationResult._({
    required this.operationName,
    this.succeededCount,
    this.failedCount,
    required this.errors,
    this.totalProcessed,
    this.hasError,
  }) : super._();
  @override
  BulkOperationResult rebuild(
    void Function(BulkOperationResultBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BulkOperationResultBuilder toBuilder() =>
      BulkOperationResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkOperationResult &&
        operationName == other.operationName &&
        succeededCount == other.succeededCount &&
        failedCount == other.failedCount &&
        errors == other.errors &&
        totalProcessed == other.totalProcessed &&
        hasError == other.hasError;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, operationName.hashCode);
    _$hash = $jc(_$hash, succeededCount.hashCode);
    _$hash = $jc(_$hash, failedCount.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, totalProcessed.hashCode);
    _$hash = $jc(_$hash, hasError.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BulkOperationResult')
          ..add('operationName', operationName)
          ..add('succeededCount', succeededCount)
          ..add('failedCount', failedCount)
          ..add('errors', errors)
          ..add('totalProcessed', totalProcessed)
          ..add('hasError', hasError))
        .toString();
  }
}

class BulkOperationResultBuilder
    implements Builder<BulkOperationResult, BulkOperationResultBuilder> {
  _$BulkOperationResult? _$v;

  String? _operationName;
  String? get operationName => _$this._operationName;
  set operationName(String? operationName) =>
      _$this._operationName = operationName;

  int? _succeededCount;
  int? get succeededCount => _$this._succeededCount;
  set succeededCount(int? succeededCount) =>
      _$this._succeededCount = succeededCount;

  int? _failedCount;
  int? get failedCount => _$this._failedCount;
  set failedCount(int? failedCount) => _$this._failedCount = failedCount;

  ListBuilder<BulkActionError>? _errors;
  ListBuilder<BulkActionError> get errors =>
      _$this._errors ??= ListBuilder<BulkActionError>();
  set errors(ListBuilder<BulkActionError>? errors) => _$this._errors = errors;

  int? _totalProcessed;
  int? get totalProcessed => _$this._totalProcessed;
  set totalProcessed(int? totalProcessed) =>
      _$this._totalProcessed = totalProcessed;

  bool? _hasError;
  bool? get hasError => _$this._hasError;
  set hasError(bool? hasError) => _$this._hasError = hasError;

  BulkOperationResultBuilder() {
    BulkOperationResult._defaults(this);
  }

  BulkOperationResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _operationName = $v.operationName;
      _succeededCount = $v.succeededCount;
      _failedCount = $v.failedCount;
      _errors = $v.errors.toBuilder();
      _totalProcessed = $v.totalProcessed;
      _hasError = $v.hasError;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkOperationResult other) {
    _$v = other as _$BulkOperationResult;
  }

  @override
  void update(void Function(BulkOperationResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkOperationResult build() => _build();

  _$BulkOperationResult _build() {
    _$BulkOperationResult _$result;
    try {
      _$result =
          _$v ??
          _$BulkOperationResult._(
            operationName: BuiltValueNullFieldError.checkNotNull(
              operationName,
              r'BulkOperationResult',
              'operationName',
            ),
            succeededCount: succeededCount,
            failedCount: failedCount,
            errors: errors.build(),
            totalProcessed: totalProcessed,
            hasError: hasError,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'errors';
        errors.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BulkOperationResult',
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
