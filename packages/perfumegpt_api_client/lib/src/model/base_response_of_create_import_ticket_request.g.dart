// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_create_import_ticket_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseResponseOfCreateImportTicketRequest
    extends BaseResponseOfCreateImportTicketRequest {
  @override
  final CreateImportTicketRequest? payload;
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltList<String>? errors;
  @override
  final int? errorType;

  factory _$BaseResponseOfCreateImportTicketRequest([
    void Function(BaseResponseOfCreateImportTicketRequestBuilder)? updates,
  ]) => (BaseResponseOfCreateImportTicketRequestBuilder()..update(updates))
      ._build();

  _$BaseResponseOfCreateImportTicketRequest._({
    this.payload,
    this.success,
    this.message,
    this.errors,
    this.errorType,
  }) : super._();
  @override
  BaseResponseOfCreateImportTicketRequest rebuild(
    void Function(BaseResponseOfCreateImportTicketRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BaseResponseOfCreateImportTicketRequestBuilder toBuilder() =>
      BaseResponseOfCreateImportTicketRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseResponseOfCreateImportTicketRequest &&
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
            r'BaseResponseOfCreateImportTicketRequest',
          )
          ..add('payload', payload)
          ..add('success', success)
          ..add('message', message)
          ..add('errors', errors)
          ..add('errorType', errorType))
        .toString();
  }
}

class BaseResponseOfCreateImportTicketRequestBuilder
    implements
        Builder<
          BaseResponseOfCreateImportTicketRequest,
          BaseResponseOfCreateImportTicketRequestBuilder
        > {
  _$BaseResponseOfCreateImportTicketRequest? _$v;

  CreateImportTicketRequestBuilder? _payload;
  CreateImportTicketRequestBuilder get payload =>
      _$this._payload ??= CreateImportTicketRequestBuilder();
  set payload(CreateImportTicketRequestBuilder? payload) =>
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

  BaseResponseOfCreateImportTicketRequestBuilder() {
    BaseResponseOfCreateImportTicketRequest._defaults(this);
  }

  BaseResponseOfCreateImportTicketRequestBuilder get _$this {
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
  void replace(BaseResponseOfCreateImportTicketRequest other) {
    _$v = other as _$BaseResponseOfCreateImportTicketRequest;
  }

  @override
  void update(
    void Function(BaseResponseOfCreateImportTicketRequestBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BaseResponseOfCreateImportTicketRequest build() => _build();

  _$BaseResponseOfCreateImportTicketRequest _build() {
    _$BaseResponseOfCreateImportTicketRequest _$result;
    try {
      _$result =
          _$v ??
          _$BaseResponseOfCreateImportTicketRequest._(
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
          r'BaseResponseOfCreateImportTicketRequest',
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
