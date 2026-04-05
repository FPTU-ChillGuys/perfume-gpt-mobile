// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewResponse extends ReviewResponse {
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
  final String? variantId;
  @override
  final String variantName;
  @override
  final int? rating;
  @override
  final String comment;
  @override
  final String? staffFeedbackComment;
  @override
  final DateTime? staffFeedbackAt;
  @override
  final BuiltList<MediaResponse> images;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  factory _$ReviewResponse([void Function(ReviewResponseBuilder)? updates]) =>
      (ReviewResponseBuilder()..update(updates))._build();

  _$ReviewResponse._({
    this.id,
    this.userId,
    required this.userFullName,
    this.userProfilePictureUrl,
    this.orderDetailId,
    this.variantId,
    required this.variantName,
    this.rating,
    required this.comment,
    this.staffFeedbackComment,
    this.staffFeedbackAt,
    required this.images,
    this.createdAt,
    this.updatedAt,
  }) : super._();
  @override
  ReviewResponse rebuild(void Function(ReviewResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewResponseBuilder toBuilder() => ReviewResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewResponse &&
        id == other.id &&
        userId == other.userId &&
        userFullName == other.userFullName &&
        userProfilePictureUrl == other.userProfilePictureUrl &&
        orderDetailId == other.orderDetailId &&
        variantId == other.variantId &&
        variantName == other.variantName &&
        rating == other.rating &&
        comment == other.comment &&
        staffFeedbackComment == other.staffFeedbackComment &&
        staffFeedbackAt == other.staffFeedbackAt &&
        images == other.images &&
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
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, variantName.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, staffFeedbackComment.hashCode);
    _$hash = $jc(_$hash, staffFeedbackAt.hashCode);
    _$hash = $jc(_$hash, images.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewResponse')
          ..add('id', id)
          ..add('userId', userId)
          ..add('userFullName', userFullName)
          ..add('userProfilePictureUrl', userProfilePictureUrl)
          ..add('orderDetailId', orderDetailId)
          ..add('variantId', variantId)
          ..add('variantName', variantName)
          ..add('rating', rating)
          ..add('comment', comment)
          ..add('staffFeedbackComment', staffFeedbackComment)
          ..add('staffFeedbackAt', staffFeedbackAt)
          ..add('images', images)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ReviewResponseBuilder
    implements Builder<ReviewResponse, ReviewResponseBuilder> {
  _$ReviewResponse? _$v;

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

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _variantName;
  String? get variantName => _$this._variantName;
  set variantName(String? variantName) => _$this._variantName = variantName;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  String? _staffFeedbackComment;
  String? get staffFeedbackComment => _$this._staffFeedbackComment;
  set staffFeedbackComment(String? staffFeedbackComment) =>
      _$this._staffFeedbackComment = staffFeedbackComment;

  DateTime? _staffFeedbackAt;
  DateTime? get staffFeedbackAt => _$this._staffFeedbackAt;
  set staffFeedbackAt(DateTime? staffFeedbackAt) =>
      _$this._staffFeedbackAt = staffFeedbackAt;

  ListBuilder<MediaResponse>? _images;
  ListBuilder<MediaResponse> get images =>
      _$this._images ??= ListBuilder<MediaResponse>();
  set images(ListBuilder<MediaResponse>? images) => _$this._images = images;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ReviewResponseBuilder() {
    ReviewResponse._defaults(this);
  }

  ReviewResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _userFullName = $v.userFullName;
      _userProfilePictureUrl = $v.userProfilePictureUrl;
      _orderDetailId = $v.orderDetailId;
      _variantId = $v.variantId;
      _variantName = $v.variantName;
      _rating = $v.rating;
      _comment = $v.comment;
      _staffFeedbackComment = $v.staffFeedbackComment;
      _staffFeedbackAt = $v.staffFeedbackAt;
      _images = $v.images.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewResponse other) {
    _$v = other as _$ReviewResponse;
  }

  @override
  void update(void Function(ReviewResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewResponse build() => _build();

  _$ReviewResponse _build() {
    _$ReviewResponse _$result;
    try {
      _$result =
          _$v ??
          _$ReviewResponse._(
            id: id,
            userId: userId,
            userFullName: BuiltValueNullFieldError.checkNotNull(
              userFullName,
              r'ReviewResponse',
              'userFullName',
            ),
            userProfilePictureUrl: userProfilePictureUrl,
            orderDetailId: orderDetailId,
            variantId: variantId,
            variantName: BuiltValueNullFieldError.checkNotNull(
              variantName,
              r'ReviewResponse',
              'variantName',
            ),
            rating: rating,
            comment: BuiltValueNullFieldError.checkNotNull(
              comment,
              r'ReviewResponse',
              'comment',
            ),
            staffFeedbackComment: staffFeedbackComment,
            staffFeedbackAt: staffFeedbackAt,
            images: images.build(),
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
          r'ReviewResponse',
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
