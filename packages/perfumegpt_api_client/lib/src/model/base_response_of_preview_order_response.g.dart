// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_preview_order_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseResponseOfPreviewOrderResponse
    extends BaseResponseOfPreviewOrderResponse {
  @override
  final PreviewOrderResponse? payload;
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltList<String>? errors;
  @override
  final int? errorType;

  factory _$BaseResponseOfPreviewOrderResponse([
    void Function(BaseResponseOfPreviewOrderResponseBuilder)? updates,
  ]) => (BaseResponseOfPreviewOrderResponseBuilder()..update(updates))._build();

  _$BaseResponseOfPreviewOrderResponse._({
    this.payload,
    this.success,
    this.message,
    this.errors,
    this.errorType,
  }) : super._();
  @override
  BaseResponseOfPreviewOrderResponse rebuild(
    void Function(BaseResponseOfPreviewOrderResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BaseResponseOfPreviewOrderResponseBuilder toBuilder() =>
      BaseResponseOfPreviewOrderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseResponseOfPreviewOrderResponse &&
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
    return (newBuiltValueToStringHelper(r'BaseResponseOfPreviewOrderResponse')
          ..add('payload', payload)
          ..add('success', success)
          ..add('message', message)
          ..add('errors', errors)
          ..add('errorType', errorType))
        .toString();
  }
}

class BaseResponseOfPreviewOrderResponseBuilder
    implements
        Builder<
          BaseResponseOfPreviewOrderResponse,
          BaseResponseOfPreviewOrderResponseBuilder
        > {
  _$BaseResponseOfPreviewOrderResponse? _$v;

  PreviewOrderResponseBuilder? _payload;
  PreviewOrderResponseBuilder get payload =>
      _$this._payload ??= PreviewOrderResponseBuilder();
  set payload(PreviewOrderResponseBuilder? payload) =>
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

  BaseResponseOfPreviewOrderResponseBuilder() {
    BaseResponseOfPreviewOrderResponse._defaults(this);
  }

  BaseResponseOfPreviewOrderResponseBuilder get _$this {
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
  void replace(BaseResponseOfPreviewOrderResponse other) {
    _$v = other as _$BaseResponseOfPreviewOrderResponse;
  }

  @override
  void update(
    void Function(BaseResponseOfPreviewOrderResponseBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BaseResponseOfPreviewOrderResponse build() => _build();

  _$BaseResponseOfPreviewOrderResponse _build() {
    _$BaseResponseOfPreviewOrderResponse _$result;
    try {
      _$result =
          _$v ??
          _$BaseResponseOfPreviewOrderResponse._(
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
          r'BaseResponseOfPreviewOrderResponse',
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
