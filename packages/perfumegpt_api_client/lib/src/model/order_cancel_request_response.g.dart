// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_cancel_request_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderCancelRequestResponse extends OrderCancelRequestResponse {
  @override
  final String? id;
  @override
  final String? orderId;
  @override
  final String? requestedById;
  @override
  final String? requestedByEmail;
  @override
  final String? processedById;
  @override
  final String reason;
  @override
  final String? staffNote;
  @override
  final CancelRequestStatus? status;
  @override
  final bool? isRefundRequired;
  @override
  final num? refundAmount;
  @override
  final bool? isRefunded;
  @override
  final String? vnpTransactionNo;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$OrderCancelRequestResponse([
    void Function(OrderCancelRequestResponseBuilder)? updates,
  ]) => (OrderCancelRequestResponseBuilder()..update(updates))._build();

  _$OrderCancelRequestResponse._({
    this.id,
    this.orderId,
    this.requestedById,
    this.requestedByEmail,
    this.processedById,
    required this.reason,
    this.staffNote,
    this.status,
    this.isRefundRequired,
    this.refundAmount,
    this.isRefunded,
    this.vnpTransactionNo,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  OrderCancelRequestResponse rebuild(
    void Function(OrderCancelRequestResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OrderCancelRequestResponseBuilder toBuilder() =>
      OrderCancelRequestResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderCancelRequestResponse &&
        id == other.id &&
        orderId == other.orderId &&
        requestedById == other.requestedById &&
        requestedByEmail == other.requestedByEmail &&
        processedById == other.processedById &&
        reason == other.reason &&
        staffNote == other.staffNote &&
        status == other.status &&
        isRefundRequired == other.isRefundRequired &&
        refundAmount == other.refundAmount &&
        isRefunded == other.isRefunded &&
        vnpTransactionNo == other.vnpTransactionNo &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, requestedById.hashCode);
    _$hash = $jc(_$hash, requestedByEmail.hashCode);
    _$hash = $jc(_$hash, processedById.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, staffNote.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, isRefundRequired.hashCode);
    _$hash = $jc(_$hash, refundAmount.hashCode);
    _$hash = $jc(_$hash, isRefunded.hashCode);
    _$hash = $jc(_$hash, vnpTransactionNo.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderCancelRequestResponse')
          ..add('id', id)
          ..add('orderId', orderId)
          ..add('requestedById', requestedById)
          ..add('requestedByEmail', requestedByEmail)
          ..add('processedById', processedById)
          ..add('reason', reason)
          ..add('staffNote', staffNote)
          ..add('status', status)
          ..add('isRefundRequired', isRefundRequired)
          ..add('refundAmount', refundAmount)
          ..add('isRefunded', isRefunded)
          ..add('vnpTransactionNo', vnpTransactionNo)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class OrderCancelRequestResponseBuilder
    implements
        Builder<OrderCancelRequestResponse, OrderCancelRequestResponseBuilder> {
  _$OrderCancelRequestResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _requestedById;
  String? get requestedById => _$this._requestedById;
  set requestedById(String? requestedById) =>
      _$this._requestedById = requestedById;

  String? _requestedByEmail;
  String? get requestedByEmail => _$this._requestedByEmail;
  set requestedByEmail(String? requestedByEmail) =>
      _$this._requestedByEmail = requestedByEmail;

  String? _processedById;
  String? get processedById => _$this._processedById;
  set processedById(String? processedById) =>
      _$this._processedById = processedById;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _staffNote;
  String? get staffNote => _$this._staffNote;
  set staffNote(String? staffNote) => _$this._staffNote = staffNote;

  CancelRequestStatus? _status;
  CancelRequestStatus? get status => _$this._status;
  set status(CancelRequestStatus? status) => _$this._status = status;

  bool? _isRefundRequired;
  bool? get isRefundRequired => _$this._isRefundRequired;
  set isRefundRequired(bool? isRefundRequired) =>
      _$this._isRefundRequired = isRefundRequired;

  num? _refundAmount;
  num? get refundAmount => _$this._refundAmount;
  set refundAmount(num? refundAmount) => _$this._refundAmount = refundAmount;

  bool? _isRefunded;
  bool? get isRefunded => _$this._isRefunded;
  set isRefunded(bool? isRefunded) => _$this._isRefunded = isRefunded;

  String? _vnpTransactionNo;
  String? get vnpTransactionNo => _$this._vnpTransactionNo;
  set vnpTransactionNo(String? vnpTransactionNo) =>
      _$this._vnpTransactionNo = vnpTransactionNo;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  OrderCancelRequestResponseBuilder() {
    OrderCancelRequestResponse._defaults(this);
  }

  OrderCancelRequestResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderId = $v.orderId;
      _requestedById = $v.requestedById;
      _requestedByEmail = $v.requestedByEmail;
      _processedById = $v.processedById;
      _reason = $v.reason;
      _staffNote = $v.staffNote;
      _status = $v.status;
      _isRefundRequired = $v.isRefundRequired;
      _refundAmount = $v.refundAmount;
      _isRefunded = $v.isRefunded;
      _vnpTransactionNo = $v.vnpTransactionNo;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderCancelRequestResponse other) {
    _$v = other as _$OrderCancelRequestResponse;
  }

  @override
  void update(void Function(OrderCancelRequestResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderCancelRequestResponse build() => _build();

  _$OrderCancelRequestResponse _build() {
    final _$result =
        _$v ??
        _$OrderCancelRequestResponse._(
          id: id,
          orderId: orderId,
          requestedById: requestedById,
          requestedByEmail: requestedByEmail,
          processedById: processedById,
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'OrderCancelRequestResponse',
            'reason',
          ),
          staffNote: staffNote,
          status: status,
          isRefundRequired: isRefundRequired,
          refundAmount: refundAmount,
          isRefunded: isRefunded,
          vnpTransactionNo: vnpTransactionNo,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
