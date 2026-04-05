// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_return_request_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OrderReturnRequestResponse extends OrderReturnRequestResponse {
  @override
  final String? id;
  @override
  final String? orderId;
  @override
  final String orderCode;
  @override
  final String? customerId;
  @override
  final String? customerEmail;
  @override
  final String? processedById;
  @override
  final String? processedByName;
  @override
  final String? inspectedById;
  @override
  final String? inspectedByName;
  @override
  final String reason;
  @override
  final String? customerNote;
  @override
  final String? staffNote;
  @override
  final String? inspectionNote;
  @override
  final ReturnRequestStatus? status;
  @override
  final num? requestedRefundAmount;
  @override
  final num? approvedRefundAmount;
  @override
  final bool? isRefunded;
  @override
  final String? vnpTransactionNo;
  @override
  final bool? isRestocked;
  @override
  final ReturnShippingInfoResponse? returnShippingInfo;
  @override
  final BuiltList<OrderReturnRequestDetailResponse>? returnDetails;
  @override
  final BuiltList<MediaResponse>? proofImages;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$OrderReturnRequestResponse([
    void Function(OrderReturnRequestResponseBuilder)? updates,
  ]) => (OrderReturnRequestResponseBuilder()..update(updates))._build();

  _$OrderReturnRequestResponse._({
    this.id,
    this.orderId,
    required this.orderCode,
    this.customerId,
    this.customerEmail,
    this.processedById,
    this.processedByName,
    this.inspectedById,
    this.inspectedByName,
    required this.reason,
    this.customerNote,
    this.staffNote,
    this.inspectionNote,
    this.status,
    this.requestedRefundAmount,
    this.approvedRefundAmount,
    this.isRefunded,
    this.vnpTransactionNo,
    this.isRestocked,
    this.returnShippingInfo,
    this.returnDetails,
    this.proofImages,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  OrderReturnRequestResponse rebuild(
    void Function(OrderReturnRequestResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  OrderReturnRequestResponseBuilder toBuilder() =>
      OrderReturnRequestResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrderReturnRequestResponse &&
        id == other.id &&
        orderId == other.orderId &&
        orderCode == other.orderCode &&
        customerId == other.customerId &&
        customerEmail == other.customerEmail &&
        processedById == other.processedById &&
        processedByName == other.processedByName &&
        inspectedById == other.inspectedById &&
        inspectedByName == other.inspectedByName &&
        reason == other.reason &&
        customerNote == other.customerNote &&
        staffNote == other.staffNote &&
        inspectionNote == other.inspectionNote &&
        status == other.status &&
        requestedRefundAmount == other.requestedRefundAmount &&
        approvedRefundAmount == other.approvedRefundAmount &&
        isRefunded == other.isRefunded &&
        vnpTransactionNo == other.vnpTransactionNo &&
        isRestocked == other.isRestocked &&
        returnShippingInfo == other.returnShippingInfo &&
        returnDetails == other.returnDetails &&
        proofImages == other.proofImages &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, orderCode.hashCode);
    _$hash = $jc(_$hash, customerId.hashCode);
    _$hash = $jc(_$hash, customerEmail.hashCode);
    _$hash = $jc(_$hash, processedById.hashCode);
    _$hash = $jc(_$hash, processedByName.hashCode);
    _$hash = $jc(_$hash, inspectedById.hashCode);
    _$hash = $jc(_$hash, inspectedByName.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, customerNote.hashCode);
    _$hash = $jc(_$hash, staffNote.hashCode);
    _$hash = $jc(_$hash, inspectionNote.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, requestedRefundAmount.hashCode);
    _$hash = $jc(_$hash, approvedRefundAmount.hashCode);
    _$hash = $jc(_$hash, isRefunded.hashCode);
    _$hash = $jc(_$hash, vnpTransactionNo.hashCode);
    _$hash = $jc(_$hash, isRestocked.hashCode);
    _$hash = $jc(_$hash, returnShippingInfo.hashCode);
    _$hash = $jc(_$hash, returnDetails.hashCode);
    _$hash = $jc(_$hash, proofImages.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrderReturnRequestResponse')
          ..add('id', id)
          ..add('orderId', orderId)
          ..add('orderCode', orderCode)
          ..add('customerId', customerId)
          ..add('customerEmail', customerEmail)
          ..add('processedById', processedById)
          ..add('processedByName', processedByName)
          ..add('inspectedById', inspectedById)
          ..add('inspectedByName', inspectedByName)
          ..add('reason', reason)
          ..add('customerNote', customerNote)
          ..add('staffNote', staffNote)
          ..add('inspectionNote', inspectionNote)
          ..add('status', status)
          ..add('requestedRefundAmount', requestedRefundAmount)
          ..add('approvedRefundAmount', approvedRefundAmount)
          ..add('isRefunded', isRefunded)
          ..add('vnpTransactionNo', vnpTransactionNo)
          ..add('isRestocked', isRestocked)
          ..add('returnShippingInfo', returnShippingInfo)
          ..add('returnDetails', returnDetails)
          ..add('proofImages', proofImages)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class OrderReturnRequestResponseBuilder
    implements
        Builder<OrderReturnRequestResponse, OrderReturnRequestResponseBuilder> {
  _$OrderReturnRequestResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _orderCode;
  String? get orderCode => _$this._orderCode;
  set orderCode(String? orderCode) => _$this._orderCode = orderCode;

  String? _customerId;
  String? get customerId => _$this._customerId;
  set customerId(String? customerId) => _$this._customerId = customerId;

  String? _customerEmail;
  String? get customerEmail => _$this._customerEmail;
  set customerEmail(String? customerEmail) =>
      _$this._customerEmail = customerEmail;

  String? _processedById;
  String? get processedById => _$this._processedById;
  set processedById(String? processedById) =>
      _$this._processedById = processedById;

  String? _processedByName;
  String? get processedByName => _$this._processedByName;
  set processedByName(String? processedByName) =>
      _$this._processedByName = processedByName;

  String? _inspectedById;
  String? get inspectedById => _$this._inspectedById;
  set inspectedById(String? inspectedById) =>
      _$this._inspectedById = inspectedById;

  String? _inspectedByName;
  String? get inspectedByName => _$this._inspectedByName;
  set inspectedByName(String? inspectedByName) =>
      _$this._inspectedByName = inspectedByName;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  String? _customerNote;
  String? get customerNote => _$this._customerNote;
  set customerNote(String? customerNote) => _$this._customerNote = customerNote;

  String? _staffNote;
  String? get staffNote => _$this._staffNote;
  set staffNote(String? staffNote) => _$this._staffNote = staffNote;

  String? _inspectionNote;
  String? get inspectionNote => _$this._inspectionNote;
  set inspectionNote(String? inspectionNote) =>
      _$this._inspectionNote = inspectionNote;

  ReturnRequestStatus? _status;
  ReturnRequestStatus? get status => _$this._status;
  set status(ReturnRequestStatus? status) => _$this._status = status;

  num? _requestedRefundAmount;
  num? get requestedRefundAmount => _$this._requestedRefundAmount;
  set requestedRefundAmount(num? requestedRefundAmount) =>
      _$this._requestedRefundAmount = requestedRefundAmount;

  num? _approvedRefundAmount;
  num? get approvedRefundAmount => _$this._approvedRefundAmount;
  set approvedRefundAmount(num? approvedRefundAmount) =>
      _$this._approvedRefundAmount = approvedRefundAmount;

  bool? _isRefunded;
  bool? get isRefunded => _$this._isRefunded;
  set isRefunded(bool? isRefunded) => _$this._isRefunded = isRefunded;

  String? _vnpTransactionNo;
  String? get vnpTransactionNo => _$this._vnpTransactionNo;
  set vnpTransactionNo(String? vnpTransactionNo) =>
      _$this._vnpTransactionNo = vnpTransactionNo;

  bool? _isRestocked;
  bool? get isRestocked => _$this._isRestocked;
  set isRestocked(bool? isRestocked) => _$this._isRestocked = isRestocked;

  ReturnShippingInfoResponseBuilder? _returnShippingInfo;
  ReturnShippingInfoResponseBuilder get returnShippingInfo =>
      _$this._returnShippingInfo ??= ReturnShippingInfoResponseBuilder();
  set returnShippingInfo(
    ReturnShippingInfoResponseBuilder? returnShippingInfo,
  ) => _$this._returnShippingInfo = returnShippingInfo;

  ListBuilder<OrderReturnRequestDetailResponse>? _returnDetails;
  ListBuilder<OrderReturnRequestDetailResponse> get returnDetails =>
      _$this._returnDetails ??= ListBuilder<OrderReturnRequestDetailResponse>();
  set returnDetails(
    ListBuilder<OrderReturnRequestDetailResponse>? returnDetails,
  ) => _$this._returnDetails = returnDetails;

  ListBuilder<MediaResponse>? _proofImages;
  ListBuilder<MediaResponse> get proofImages =>
      _$this._proofImages ??= ListBuilder<MediaResponse>();
  set proofImages(ListBuilder<MediaResponse>? proofImages) =>
      _$this._proofImages = proofImages;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  OrderReturnRequestResponseBuilder() {
    OrderReturnRequestResponse._defaults(this);
  }

  OrderReturnRequestResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _orderId = $v.orderId;
      _orderCode = $v.orderCode;
      _customerId = $v.customerId;
      _customerEmail = $v.customerEmail;
      _processedById = $v.processedById;
      _processedByName = $v.processedByName;
      _inspectedById = $v.inspectedById;
      _inspectedByName = $v.inspectedByName;
      _reason = $v.reason;
      _customerNote = $v.customerNote;
      _staffNote = $v.staffNote;
      _inspectionNote = $v.inspectionNote;
      _status = $v.status;
      _requestedRefundAmount = $v.requestedRefundAmount;
      _approvedRefundAmount = $v.approvedRefundAmount;
      _isRefunded = $v.isRefunded;
      _vnpTransactionNo = $v.vnpTransactionNo;
      _isRestocked = $v.isRestocked;
      _returnShippingInfo = $v.returnShippingInfo?.toBuilder();
      _returnDetails = $v.returnDetails?.toBuilder();
      _proofImages = $v.proofImages?.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrderReturnRequestResponse other) {
    _$v = other as _$OrderReturnRequestResponse;
  }

  @override
  void update(void Function(OrderReturnRequestResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrderReturnRequestResponse build() => _build();

  _$OrderReturnRequestResponse _build() {
    _$OrderReturnRequestResponse _$result;
    try {
      _$result =
          _$v ??
          _$OrderReturnRequestResponse._(
            id: id,
            orderId: orderId,
            orderCode: BuiltValueNullFieldError.checkNotNull(
              orderCode,
              r'OrderReturnRequestResponse',
              'orderCode',
            ),
            customerId: customerId,
            customerEmail: customerEmail,
            processedById: processedById,
            processedByName: processedByName,
            inspectedById: inspectedById,
            inspectedByName: inspectedByName,
            reason: BuiltValueNullFieldError.checkNotNull(
              reason,
              r'OrderReturnRequestResponse',
              'reason',
            ),
            customerNote: customerNote,
            staffNote: staffNote,
            inspectionNote: inspectionNote,
            status: status,
            requestedRefundAmount: requestedRefundAmount,
            approvedRefundAmount: approvedRefundAmount,
            isRefunded: isRefunded,
            vnpTransactionNo: vnpTransactionNo,
            isRestocked: isRestocked,
            returnShippingInfo: _returnShippingInfo?.build(),
            returnDetails: _returnDetails?.build(),
            proofImages: _proofImages?.build(),
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'returnShippingInfo';
        _returnShippingInfo?.build();
        _$failedField = 'returnDetails';
        _returnDetails?.build();
        _$failedField = 'proofImages';
        _proofImages?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'OrderReturnRequestResponse',
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
