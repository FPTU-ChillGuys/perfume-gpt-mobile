// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bulk_action_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BulkActionError extends BulkActionError {
  @override
  final String? id;
  @override
  final String errorMessage;

  factory _$BulkActionError([void Function(BulkActionErrorBuilder)? updates]) =>
      (BulkActionErrorBuilder()..update(updates))._build();

  _$BulkActionError._({this.id, required this.errorMessage}) : super._();
  @override
  BulkActionError rebuild(void Function(BulkActionErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BulkActionErrorBuilder toBuilder() => BulkActionErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BulkActionError &&
        id == other.id &&
        errorMessage == other.errorMessage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, errorMessage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BulkActionError')
          ..add('id', id)
          ..add('errorMessage', errorMessage))
        .toString();
  }
}

class BulkActionErrorBuilder
    implements Builder<BulkActionError, BulkActionErrorBuilder> {
  _$BulkActionError? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _errorMessage;
  String? get errorMessage => _$this._errorMessage;
  set errorMessage(String? errorMessage) => _$this._errorMessage = errorMessage;

  BulkActionErrorBuilder() {
    BulkActionError._defaults(this);
  }

  BulkActionErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _errorMessage = $v.errorMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BulkActionError other) {
    _$v = other as _$BulkActionError;
  }

  @override
  void update(void Function(BulkActionErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BulkActionError build() => _build();

  _$BulkActionError _build() {
    final _$result =
        _$v ??
        _$BulkActionError._(
          id: id,
          errorMessage: BuiltValueNullFieldError.checkNotNull(
            errorMessage,
            r'BulkActionError',
            'errorMessage',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
