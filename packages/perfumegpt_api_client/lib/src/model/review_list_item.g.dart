// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_list_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewListItem extends ReviewListItem {
  @override
  final String? id;
  @override
  final String? userId;
  @override
  final String userFullName;
  @override
  final String? userProfilePictureUrl;
  @override
  final String? variantId;
  @override
  final String variantName;
  @override
  final int? rating;
  @override
  final String commentPreview;
  @override
  final int? imageCount;
  @override
  final DateTime? createdAt;

  factory _$ReviewListItem([void Function(ReviewListItemBuilder)? updates]) =>
      (ReviewListItemBuilder()..update(updates))._build();

  _$ReviewListItem._({
    this.id,
    this.userId,
    required this.userFullName,
    this.userProfilePictureUrl,
    this.variantId,
    required this.variantName,
    this.rating,
    required this.commentPreview,
    this.imageCount,
    this.createdAt,
  }) : super._();
  @override
  ReviewListItem rebuild(void Function(ReviewListItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewListItemBuilder toBuilder() => ReviewListItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewListItem &&
        id == other.id &&
        userId == other.userId &&
        userFullName == other.userFullName &&
        userProfilePictureUrl == other.userProfilePictureUrl &&
        variantId == other.variantId &&
        variantName == other.variantName &&
        rating == other.rating &&
        commentPreview == other.commentPreview &&
        imageCount == other.imageCount &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, userFullName.hashCode);
    _$hash = $jc(_$hash, userProfilePictureUrl.hashCode);
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, variantName.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, commentPreview.hashCode);
    _$hash = $jc(_$hash, imageCount.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewListItem')
          ..add('id', id)
          ..add('userId', userId)
          ..add('userFullName', userFullName)
          ..add('userProfilePictureUrl', userProfilePictureUrl)
          ..add('variantId', variantId)
          ..add('variantName', variantName)
          ..add('rating', rating)
          ..add('commentPreview', commentPreview)
          ..add('imageCount', imageCount)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ReviewListItemBuilder
    implements Builder<ReviewListItem, ReviewListItemBuilder> {
  _$ReviewListItem? _$v;

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

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  String? _variantName;
  String? get variantName => _$this._variantName;
  set variantName(String? variantName) => _$this._variantName = variantName;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  String? _commentPreview;
  String? get commentPreview => _$this._commentPreview;
  set commentPreview(String? commentPreview) =>
      _$this._commentPreview = commentPreview;

  int? _imageCount;
  int? get imageCount => _$this._imageCount;
  set imageCount(int? imageCount) => _$this._imageCount = imageCount;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ReviewListItemBuilder() {
    ReviewListItem._defaults(this);
  }

  ReviewListItemBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _userId = $v.userId;
      _userFullName = $v.userFullName;
      _userProfilePictureUrl = $v.userProfilePictureUrl;
      _variantId = $v.variantId;
      _variantName = $v.variantName;
      _rating = $v.rating;
      _commentPreview = $v.commentPreview;
      _imageCount = $v.imageCount;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewListItem other) {
    _$v = other as _$ReviewListItem;
  }

  @override
  void update(void Function(ReviewListItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewListItem build() => _build();

  _$ReviewListItem _build() {
    final _$result =
        _$v ??
        _$ReviewListItem._(
          id: id,
          userId: userId,
          userFullName: BuiltValueNullFieldError.checkNotNull(
            userFullName,
            r'ReviewListItem',
            'userFullName',
          ),
          userProfilePictureUrl: userProfilePictureUrl,
          variantId: variantId,
          variantName: BuiltValueNullFieldError.checkNotNull(
            variantName,
            r'ReviewListItem',
            'variantName',
          ),
          rating: rating,
          commentPreview: BuiltValueNullFieldError.checkNotNull(
            commentPreview,
            r'ReviewListItem',
            'commentPreview',
          ),
          imageCount: imageCount,
          createdAt: createdAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
