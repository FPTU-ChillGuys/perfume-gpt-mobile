// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_info_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrderInfoRequest extends GetOrderInfoRequest {
  @override
  final BuiltList<String> trackingNumbers;

  factory _$GetOrderInfoRequest([
    void Function(GetOrderInfoRequestBuilder)? updates,
  ]) => (GetOrderInfoRequestBuilder()..update(updates))._build();

  _$GetOrderInfoRequest._({required this.trackingNumbers}) : super._();
  @override
  GetOrderInfoRequest rebuild(
    void Function(GetOrderInfoRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  GetOrderInfoRequestBuilder toBuilder() =>
      GetOrderInfoRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrderInfoRequest &&
        trackingNumbers == other.trackingNumbers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trackingNumbers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'GetOrderInfoRequest',
    )..add('trackingNumbers', trackingNumbers)).toString();
  }
}

class GetOrderInfoRequestBuilder
    implements Builder<GetOrderInfoRequest, GetOrderInfoRequestBuilder> {
  _$GetOrderInfoRequest? _$v;

  ListBuilder<String>? _trackingNumbers;
  ListBuilder<String> get trackingNumbers =>
      _$this._trackingNumbers ??= ListBuilder<String>();
  set trackingNumbers(ListBuilder<String>? trackingNumbers) =>
      _$this._trackingNumbers = trackingNumbers;

  GetOrderInfoRequestBuilder() {
    GetOrderInfoRequest._defaults(this);
  }

  GetOrderInfoRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trackingNumbers = $v.trackingNumbers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrderInfoRequest other) {
    _$v = other as _$GetOrderInfoRequest;
  }

  @override
  void update(void Function(GetOrderInfoRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrderInfoRequest build() => _build();

  _$GetOrderInfoRequest _build() {
    _$GetOrderInfoRequest _$result;
    try {
      _$result =
          _$v ??
          _$GetOrderInfoRequest._(trackingNumbers: trackingNumbers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trackingNumbers';
        trackingNumbers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'GetOrderInfoRequest',
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
