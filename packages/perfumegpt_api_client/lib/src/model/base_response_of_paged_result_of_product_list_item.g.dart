// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_paged_result_of_product_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BaseResponseOfPagedResultOfProductListItem
    extends BaseResponseOfPagedResultOfProductListItem {
  @override
  final PagedResultOfProductListItem? payload;
  @override
  final bool? success;
  @override
  final String? message;
  @override
  final BuiltList<String>? errors;
  @override
  final int? errorType;

  factory _$BaseResponseOfPagedResultOfProductListItem([
    void Function(BaseResponseOfPagedResultOfProductListItemBuilder)? updates,
  ]) => (BaseResponseOfPagedResultOfProductListItemBuilder()..update(updates))
      ._build();

  _$BaseResponseOfPagedResultOfProductListItem._({
    this.payload,
    this.success,
    this.message,
    this.errors,
    this.errorType,
  }) : super._();
  @override
  BaseResponseOfPagedResultOfProductListItem rebuild(
    void Function(BaseResponseOfPagedResultOfProductListItemBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  BaseResponseOfPagedResultOfProductListItemBuilder toBuilder() =>
      BaseResponseOfPagedResultOfProductListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseResponseOfPagedResultOfProductListItem &&
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
            r'BaseResponseOfPagedResultOfProductListItem',
          )
          ..add('payload', payload)
          ..add('success', success)
          ..add('message', message)
          ..add('errors', errors)
          ..add('errorType', errorType))
        .toString();
  }
}

class BaseResponseOfPagedResultOfProductListItemBuilder
    implements
        Builder<
          BaseResponseOfPagedResultOfProductListItem,
          BaseResponseOfPagedResultOfProductListItemBuilder
        > {
  _$BaseResponseOfPagedResultOfProductListItem? _$v;

  PagedResultOfProductListItemBuilder? _payload;
  PagedResultOfProductListItemBuilder get payload =>
      _$this._payload ??= PagedResultOfProductListItemBuilder();
  set payload(PagedResultOfProductListItemBuilder? payload) =>
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

  BaseResponseOfPagedResultOfProductListItemBuilder() {
    BaseResponseOfPagedResultOfProductListItem._defaults(this);
  }

  BaseResponseOfPagedResultOfProductListItemBuilder get _$this {
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
  void replace(BaseResponseOfPagedResultOfProductListItem other) {
    _$v = other as _$BaseResponseOfPagedResultOfProductListItem;
  }

  @override
  void update(
    void Function(BaseResponseOfPagedResultOfProductListItemBuilder)? updates,
  ) {
    if (updates != null) updates(this);
  }

  @override
  BaseResponseOfPagedResultOfProductListItem build() => _build();

  _$BaseResponseOfPagedResultOfProductListItem _build() {
    _$BaseResponseOfPagedResultOfProductListItem _$result;
    try {
      _$result =
          _$v ??
          _$BaseResponseOfPagedResultOfProductListItem._(
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
          r'BaseResponseOfPagedResultOfProductListItem',
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
