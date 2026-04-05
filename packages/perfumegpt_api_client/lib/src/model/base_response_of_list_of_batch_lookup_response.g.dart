// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_batch_lookup_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseResponseOfListOfBatchLookupResponse
    extends BaseResponseOfListOfBatchLookupResponse {
  @override
  final BuiltList<BatchLookupResponse>? payload;
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltList<String>? errors;
  @override
  final int? errorType;

  factory _$BaseResponseOfListOfBatchLookupResponse([
    void Function(BaseResponseOfListOfBatchLookupResponseBuilder)? updates,
  ]) => (BaseResponseOfListOfBatchLookupResponseBuilder()..update(updates))
      ._build();

  _$BaseResponseOfListOfBatchLookupResponse._({
    this.payload,
    this.success,
    this.message,
    this.errors,
    this.errorType,
  }) : super._();
  @override
  BaseResponseOfListOfBatchLookupResponse rebuild(
    void Function(BaseResponseOfListOfBatchLookupResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BaseResponseOfListOfBatchLookupResponseBuilder toBuilder() =>
      BaseResponseOfListOfBatchLookupResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseResponseOfListOfBatchLookupResponse &&
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
    return (newBuiltValueToStringHelper(
            r'BaseResponseOfListOfBatchLookupResponse',
          )
          ..add('payload', payload)
          ..add('success', success)
          ..add('message', message)
          ..add('errors', errors)
          ..add('errorType', errorType))
        .toString();
  }
}

class BaseResponseOfListOfBatchLookupResponseBuilder
    implements
        Builder<
          BaseResponseOfListOfBatchLookupResponse,
          BaseResponseOfListOfBatchLookupResponseBuilder
        > {
  _$BaseResponseOfListOfBatchLookupResponse? _$v;

  ListBuilder<BatchLookupResponse>? _payload;
  ListBuilder<BatchLookupResponse> get payload =>
      _$this._payload ??= ListBuilder<BatchLookupResponse>();
  set payload(ListBuilder<BatchLookupResponse>? payload) =>
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

  BaseResponseOfListOfBatchLookupResponseBuilder() {
    BaseResponseOfListOfBatchLookupResponse._defaults(this);
  }

  BaseResponseOfListOfBatchLookupResponseBuilder get _$this {
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
  void replace(BaseResponseOfListOfBatchLookupResponse other) {
    _$v = other as _$BaseResponseOfListOfBatchLookupResponse;
  }

  @override
  void update(
    void Function(BaseResponseOfListOfBatchLookupResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BaseResponseOfListOfBatchLookupResponse build() => _build();

  _$BaseResponseOfListOfBatchLookupResponse _build() {
    _$BaseResponseOfListOfBatchLookupResponse _$result;
    try {
      _$result =
          _$v ??
          _$BaseResponseOfListOfBatchLookupResponse._(
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
          r'BaseResponseOfListOfBatchLookupResponse',
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
