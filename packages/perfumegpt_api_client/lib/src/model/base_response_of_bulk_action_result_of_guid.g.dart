// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_bulk_action_result_of_guid.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseResponseOfBulkActionResultOfGuid
    extends BaseResponseOfBulkActionResultOfGuid {
  @override
  final BulkActionResultOfGuid? payload;
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltList<String>? errors;
  @override
  final int? errorType;

  factory _$BaseResponseOfBulkActionResultOfGuid([
    void Function(BaseResponseOfBulkActionResultOfGuidBuilder)? updates,
  ]) =>
      (BaseResponseOfBulkActionResultOfGuidBuilder()..update(updates))._build();

  _$BaseResponseOfBulkActionResultOfGuid._({
    this.payload,
    this.success,
    this.message,
    this.errors,
    this.errorType,
  }) : super._();
  @override
  BaseResponseOfBulkActionResultOfGuid rebuild(
    void Function(BaseResponseOfBulkActionResultOfGuidBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BaseResponseOfBulkActionResultOfGuidBuilder toBuilder() =>
      BaseResponseOfBulkActionResultOfGuidBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseResponseOfBulkActionResultOfGuid &&
        payload == other.payload &&
        success == other.success &&
        message == other.message &&
        errors == other.errors &&
        errorType == other.errorType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payload.hashCode);
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, errors.hashCode);
    _$hash = $jc(_$hash, errorType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BaseResponseOfBulkActionResultOfGuid')
          ..add('payload', payload)
          ..add('success', success)
          ..add('message', message)
          ..add('errors', errors)
          ..add('errorType', errorType))
        .toString();
  }
}

class BaseResponseOfBulkActionResultOfGuidBuilder
    implements
        Builder<
          BaseResponseOfBulkActionResultOfGuid,
          BaseResponseOfBulkActionResultOfGuidBuilder
        > {
  _$BaseResponseOfBulkActionResultOfGuid? _$v;

  BulkActionResultOfGuidBuilder? _payload;
  BulkActionResultOfGuidBuilder get payload =>
      _$this._payload ??= BulkActionResultOfGuidBuilder();
  set payload(BulkActionResultOfGuidBuilder? payload) =>
      _$this._payload = payload;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<String>? _errors;
  ListBuilder<String> get errors => _$this._errors ??= ListBuilder<String>();
  set errors(ListBuilder<String>? errors) => _$this._errors = errors;

  int? _errorType;
  int? get errorType => _$this._errorType;
  set errorType(int? errorType) => _$this._errorType = errorType;

  BaseResponseOfBulkActionResultOfGuidBuilder() {
    BaseResponseOfBulkActionResultOfGuid._defaults(this);
  }

  BaseResponseOfBulkActionResultOfGuidBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payload = $v.payload?.toBuilder();
      _success = $v.success;
      _message = $v.message;
      _errors = $v.errors?.toBuilder();
      _errorType = $v.errorType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseResponseOfBulkActionResultOfGuid other) {
    _$v = other as _$BaseResponseOfBulkActionResultOfGuid;
  }

  @override
  void update(
    void Function(BaseResponseOfBulkActionResultOfGuidBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BaseResponseOfBulkActionResultOfGuid build() => _build();

  _$BaseResponseOfBulkActionResultOfGuid _build() {
    _$BaseResponseOfBulkActionResultOfGuid _$result;
    try {
      _$result =
          _$v ??
          _$BaseResponseOfBulkActionResultOfGuid._(
            payload: _payload?.build(),
            success: success,
            message: message,
            errors: _errors?.build(),
            errorType: errorType,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payload';
        _payload?.build();

        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'BaseResponseOfBulkActionResultOfGuid',
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
