// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_detail_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewDetailResponse extends ReviewDetailResponse {
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String userFullName;
  @override
  final String? userProfilePictureUrl;
  @override
  final String? orderDetailId;
  @override
  final String? orderId;
  @override
  final int? quantity;
  @override
  final num? unitPrice;
  @override
  final String? variantId;
  @override
  final String variantName;
  @override
  final String productName;
  @override
  final int? volumeMl;
  @override
  final String concentrationName;
  @override
  final int? rating;
  @override
  final String comment;
  @override
  final BuiltList<MediaResponse> images;
  @override
  final String? staffFeedbackComment;
  @override
  final String? staffFeedbackByStaffId;
  @override
  final DateTime? staffFeedbackAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$ReviewDetailResponse([
    void Function(ReviewDetailResponseBuilder)? updates,
  ]) => (ReviewDetailResponseBuilder()..update(updates))._build();

  _$ReviewDetailResponse._({
    this.id,
    this.userId,
    required this.userFullName,
    this.userProfilePictureUrl,
    this.orderDetailId,
    this.orderId,
    this.quantity,
    this.unitPrice,
    this.variantId,
    required this.variantName,
    required this.productName,
    this.volumeMl,
    required this.concentrationName,
    this.rating,
    required this.comment,
    required this.images,
    this.staffFeedbackComment,
    this.staffFeedbackByStaffId,
    this.staffFeedbackAt,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  ReviewDetailResponse rebuild(
    void Function(ReviewDetailResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReviewDetailResponseBuilder toBuilder() =>
      ReviewDetailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewDetailResponse &&
        id == other.id &&
        userId == other.userId &&
        userFullName == other.userFullName &&
        userProfilePictureUrl == other.userProfilePictureUrl &&
        orderDetailId == other.orderDetailId &&
        orderId == other.orderId &&
        quantity == other.quantity &&
        unitPrice == other.unitPrice &&
        variantId == other.variantId &&
        variantName == other.variantName &&
        productName == other.productName &&
        volumeMl == other.volumeMl &&
        concentrationName == other.concentrationName &&
        rating == other.rating &&
        comment == other.comment &&
        images == other.images &&
        staffFeedbackComment == other.staffFeedbackComment &&
        staffFeedbackByStaffId == other.staffFeedbackByStaffId &&
        staffFeedbackAt == other.staffFeedbackAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, userFullName.hashCode);
    _$hash = $jc(_$hash, userProfilePictureUrl.hashCode);
    _$hash = $jc(_$hash, orderDetailId.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, unitPrice.hashCode);
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, variantName.hashCode);
    _$hash = $jc(_$hash, productName.hashCode);
    _$hash = $jc(_$hash, volumeMl.hashCode);
    _$hash = $jc(_$hash, concentrationName.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, staffFeedbackComment.hashCode);
    _$hash = $jc(_$hash, staffFeedbackByStaffId.hashCode);
    _$hash = $jc(_$hash, staffFeedbackAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewDetailResponse')
          ..add('id', id)
          ..add('userId', userId)
          ..add('userFullName', userFullName)
          ..add('userProfilePictureUrl', userProfilePictureUrl)
          ..add('orderDetailId', orderDetailId)
          ..add('orderId', orderId)
          ..add('quantity', quantity)
          ..add('unitPrice', unitPrice)
          ..add('variantId', variantId)
          ..add('variantName', variantName)
          ..add('productName', productName)
          ..add('volumeMl', volumeMl)
          ..add('concentrationName', concentrationName)
          ..add('rating', rating)
          ..add('comment', comment)
          ..add('images', images)
          ..add('staffFeedbackComment', staffFeedbackComment)
          ..add('staffFeedbackByStaffId', staffFeedbackByStaffId)
          ..add('staffFeedbackAt', staffFeedbackAt)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ReviewDetailResponseBuilder
    implements Builder<ReviewDetailResponse, ReviewDetailResponseBuilder> {
  _$ReviewDetailResponse? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _userFullName;
  String? get userFullName => _$this._userFullName;
  set userFullName(String? userFullName) => _$this._userFullName = userFullName;

  String? _userProfilePictureUrl;
  String? get userProfilePictureUrl => _$this._userProfilePictureUrl;
  set userProfilePictureUrl(String? userProfilePictureUrl) =>
      _$this._userProfilePictureUrl = userProfilePictureUrl;

  String? _orderDetailId;
  String? get orderDetailId => _$this._orderDetailId;
  set orderDetailId(String? orderDetailId) =>
      _$this._orderDetailId = orderDetailId;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  num? _unitPrice;
  num? get unitPrice => _$this._unitPrice;
  set unitPrice(num? unitPrice) => _$this._unitPrice = unitPrice;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _variantName;
  String? get variantName => _$this._variantName;
  set variantName(String? variantName) => _$this._variantName = variantName;

  String? _productName;
  String? get productName => _$this._productName;
  set productName(String? productName) => _$this._productName = productName;

  int? _volumeMl;
  int? get volumeMl => _$this._volumeMl;
  set volumeMl(int? volumeMl) => _$this._volumeMl = volumeMl;

  String? _concentrationName;
  String? get concentrationName => _$this._concentrationName;
  set concentrationName(String? concentrationName) =>
      _$this._concentrationName = concentrationName;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  ListBuilder<MediaResponse>? _images;
  ListBuilder<MediaResponse> get images =>
      _$this._images ??= ListBuilder<MediaResponse>();
  set images(ListBuilder<MediaResponse>? images) => _$this._images = images;

  String? _staffFeedbackComment;
  String? get staffFeedbackComment => _$this._staffFeedbackComment;
  set staffFeedbackComment(String? staffFeedbackComment) =>
      _$this._staffFeedbackComment = staffFeedbackComment;

  String? _staffFeedbackByStaffId;
  String? get staffFeedbackByStaffId => _$this._staffFeedbackByStaffId;
  set staffFeedbackByStaffId(String? staffFeedbackByStaffId) =>
      _$this._staffFeedbackByStaffId = staffFeedbackByStaffId;

  DateTime? _staffFeedbackAt;
  DateTime? get staffFeedbackAt => _$this._staffFeedbackAt;
  set staffFeedbackAt(DateTime? staffFeedbackAt) =>
      _$this._staffFeedbackAt = staffFeedbackAt;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ReviewDetailResponseBuilder() {
    ReviewDetailResponse._defaults(this);
  }

  ReviewDetailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _userFullName = $v.userFullName;
      _userProfilePictureUrl = $v.userProfilePictureUrl;
      _orderDetailId = $v.orderDetailId;
      _orderId = $v.orderId;
      _quantity = $v.quantity;
      _unitPrice = $v.unitPrice;
      _variantId = $v.variantId;
      _variantName = $v.variantName;
      _productName = $v.productName;
      _volumeMl = $v.volumeMl;
      _concentrationName = $v.concentrationName;
      _rating = $v.rating;
      _comment = $v.comment;
      _images = $v.images.toBuilder();
      _staffFeedbackComment = $v.staffFeedbackComment;
      _staffFeedbackByStaffId = $v.staffFeedbackByStaffId;
      _staffFeedbackAt = $v.staffFeedbackAt;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewDetailResponse other) {
    _$v = other as _$ReviewDetailResponse;
  }

  @override
  void update(void Function(ReviewDetailResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewDetailResponse build() => _build();

  _$ReviewDetailResponse _build() {
    _$ReviewDetailResponse _$result;
    try {
      _$result =
          _$v ??
          _$ReviewDetailResponse._(
            id: id,
            userId: userId,
            userFullName: BuiltValueNullFieldError.checkNotNull(
              userFullName,
              r'ReviewDetailResponse',
              'userFullName',
            ),
            userProfilePictureUrl: userProfilePictureUrl,
            orderDetailId: orderDetailId,
            orderId: orderId,
            quantity: quantity,
            unitPrice: unitPrice,
            variantId: variantId,
            variantName: BuiltValueNullFieldError.checkNotNull(
              variantName,
              r'ReviewDetailResponse',
              'variantName',
            ),
            productName: BuiltValueNullFieldError.checkNotNull(
              productName,
              r'ReviewDetailResponse',
              'productName',
            ),
            volumeMl: volumeMl,
            concentrationName: BuiltValueNullFieldError.checkNotNull(
              concentrationName,
              r'ReviewDetailResponse',
              'concentrationName',
            ),
            rating: rating,
            comment: BuiltValueNullFieldError.checkNotNull(
              comment,
              r'ReviewDetailResponse',
              'comment',
            ),
            images: images.build(),
            staffFeedbackComment: staffFeedbackComment,
            staffFeedbackByStaffId: staffFeedbackByStaffId,
            staffFeedbackAt: staffFeedbackAt,
            createdAt: createdAt,
            updatedAt: updatedAt,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'images';
        images.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'ReviewDetailResponse',
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
