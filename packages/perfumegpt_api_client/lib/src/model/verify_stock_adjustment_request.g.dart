// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_stock_adjustment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyStockAdjustmentRequest extends VerifyStockAdjustmentRequest {
  @override
  final BuiltList<VerifyStockAdjustmentDetailRequest> adjustmentDetails;

  factory _$VerifyStockAdjustmentRequest([
    void Function(VerifyStockAdjustmentRequestBuilder)? updates,
  ]) => (VerifyStockAdjustmentRequestBuilder()..update(updates))._build();

  _$VerifyStockAdjustmentRequest._({required this.adjustmentDetails})
    : super._();
  @override
  VerifyStockAdjustmentRequest rebuild(
    void Function(VerifyStockAdjustmentRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  VerifyStockAdjustmentRequestBuilder toBuilder() =>
      VerifyStockAdjustmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyStockAdjustmentRequest &&
        adjustmentDetails == other.adjustmentDetails;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, adjustmentDetails.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'VerifyStockAdjustmentRequest',
    )..add('adjustmentDetails', adjustmentDetails)).toString();
  }
}

class VerifyStockAdjustmentRequestBuilder
    implements
        Builder<
          VerifyStockAdjustmentRequest,
          VerifyStockAdjustmentRequestBuilder
        > {
  _$VerifyStockAdjustmentRequest? _$v;

  ListBuilder<VerifyStockAdjustmentDetailRequest>? _adjustmentDetails;
  ListBuilder<VerifyStockAdjustmentDetailRequest> get adjustmentDetails =>
      _$this._adjustmentDetails ??=
          ListBuilder<VerifyStockAdjustmentDetailRequest>();
  set adjustmentDetails(
    ListBuilder<VerifyStockAdjustmentDetailRequest>? adjustmentDetails,
  ) => _$this._adjustmentDetails = adjustmentDetails;

  VerifyStockAdjustmentRequestBuilder() {
    VerifyStockAdjustmentRequest._defaults(this);
  }

  VerifyStockAdjustmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _adjustmentDetails = $v.adjustmentDetails.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyStockAdjustmentRequest other) {
    _$v = other as _$VerifyStockAdjustmentRequest;
  }

  @override
  void update(void Function(VerifyStockAdjustmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VerifyStockAdjustmentRequest build() => _build();

  _$VerifyStockAdjustmentRequest _build() {
    _$VerifyStockAdjustmentRequest _$result;
    try {
      _$result =
          _$v ??
          _$VerifyStockAdjustmentRequest._(
            adjustmentDetails: adjustmentDetails.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'adjustmentDetails';
        adjustmentDetails.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'VerifyStockAdjustmentRequest',
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
