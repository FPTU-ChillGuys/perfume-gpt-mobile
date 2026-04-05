// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_brand_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseResponseOfListOfBrandResponse
    extends BaseResponseOfListOfBrandResponse {
  @override
  final BuiltList<BrandResponse>? payload;
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltList<String>? errors;
  @override
  final int? errorType;

  factory _$BaseResponseOfListOfBrandResponse([
    void Function(BaseResponseOfListOfBrandResponseBuilder)? updates,
  ]) => (BaseResponseOfListOfBrandResponseBuilder()..update(updates))._build();

  _$BaseResponseOfListOfBrandResponse._({
    this.payload,
    this.success,
    this.message,
    this.errors,
    this.errorType,
  }) : super._();
  @override
  BaseResponseOfListOfBrandResponse rebuild(
    void Function(BaseResponseOfListOfBrandResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BaseResponseOfListOfBrandResponseBuilder toBuilder() =>
      BaseResponseOfListOfBrandResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseResponseOfListOfBrandResponse &&
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
    return (newBuiltValueToStringHelper(r'BaseResponseOfListOfBrandResponse')
          ..add('payload', payload)
          ..add('success', success)
          ..add('message', message)
          ..add('errors', errors)
          ..add('errorType', errorType))
        .toString();
  }
}

class BaseResponseOfListOfBrandResponseBuilder
    implements
        Builder<
          BaseResponseOfListOfBrandResponse,
          BaseResponseOfListOfBrandResponseBuilder
        > {
  _$BaseResponseOfListOfBrandResponse? _$v;

  ListBuilder<BrandResponse>? _payload;
  ListBuilder<BrandResponse> get payload =>
      _$this._payload ??= ListBuilder<BrandResponse>();
  set payload(ListBuilder<BrandResponse>? payload) => _$this._payload = payload;

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

  BaseResponseOfListOfBrandResponseBuilder() {
    BaseResponseOfListOfBrandResponse._defaults(this);
  }

  BaseResponseOfListOfBrandResponseBuilder get _$this {
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
  void replace(BaseResponseOfListOfBrandResponse other) {
    _$v = other as _$BaseResponseOfListOfBrandResponse;
  }

  @override
  void update(
    void Function(BaseResponseOfListOfBrandResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BaseResponseOfListOfBrandResponse build() => _build();

  _$BaseResponseOfListOfBrandResponse _build() {
    _$BaseResponseOfListOfBrandResponse _$result;
    try {
      _$result =
          _$v ??
          _$BaseResponseOfListOfBrandResponse._(
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
          r'BaseResponseOfListOfBrandResponse',
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
