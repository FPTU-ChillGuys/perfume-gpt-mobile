// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_order_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseResponseOfOrderResponse extends BaseResponseOfOrderResponse {
  @override
  final OrderResponse? payload;
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltList<String>? errors;
  @override
  final int? errorType;

  factory _$BaseResponseOfOrderResponse([
    void Function(BaseResponseOfOrderResponseBuilder)? updates,
  ]) => (BaseResponseOfOrderResponseBuilder()..update(updates))._build();

  _$BaseResponseOfOrderResponse._({
    this.payload,
    this.success,
    this.message,
    this.errors,
    this.errorType,
  }) : super._();
  @override
  BaseResponseOfOrderResponse rebuild(
    void Function(BaseResponseOfOrderResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BaseResponseOfOrderResponseBuilder toBuilder() =>
      BaseResponseOfOrderResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseResponseOfOrderResponse &&
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
    return (newBuiltValueToStringHelper(r'BaseResponseOfOrderResponse')
          ..add('payload', payload)
          ..add('success', success)
          ..add('message', message)
          ..add('errors', errors)
          ..add('errorType', errorType))
        .toString();
  }
}

class BaseResponseOfOrderResponseBuilder
    implements
        Builder<
          BaseResponseOfOrderResponse,
          BaseResponseOfOrderResponseBuilder
        > {
  _$BaseResponseOfOrderResponse? _$v;

  OrderResponseBuilder? _payload;
  OrderResponseBuilder get payload =>
      _$this._payload ??= OrderResponseBuilder();
  set payload(OrderResponseBuilder? payload) => _$this._payload = payload;

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

  BaseResponseOfOrderResponseBuilder() {
    BaseResponseOfOrderResponse._defaults(this);
  }

  BaseResponseOfOrderResponseBuilder get _$this {
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
  void replace(BaseResponseOfOrderResponse other) {
    _$v = other as _$BaseResponseOfOrderResponse;
  }

  @override
  void update(void Function(BaseResponseOfOrderResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BaseResponseOfOrderResponse build() => _build();

  _$BaseResponseOfOrderResponse _build() {
    _$BaseResponseOfOrderResponse _$result;
    try {
      _$result =
          _$v ??
          _$BaseResponseOfOrderResponse._(
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
          r'BaseResponseOfOrderResponse',
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
