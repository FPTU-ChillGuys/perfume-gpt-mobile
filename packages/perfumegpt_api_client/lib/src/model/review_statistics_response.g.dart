// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_statistics_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ReviewStatisticsResponse extends ReviewStatisticsResponse {
  @override
  final String? variantId;
  @override
  final int? totalReviews;
  @override
  final double? averageRating;
  @override
  final int? fiveStarCount;
  @override
  final int? fourStarCount;
  @override
  final int? threeStarCount;
  @override
  final int? twoStarCount;
  @override
  final int? oneStarCount;

  factory _$ReviewStatisticsResponse([
    void Function(ReviewStatisticsResponseBuilder)? updates,
  ]) => (ReviewStatisticsResponseBuilder()..update(updates))._build();

  _$ReviewStatisticsResponse._({
    this.variantId,
    this.totalReviews,
    this.averageRating,
    this.fiveStarCount,
    this.fourStarCount,
    this.threeStarCount,
    this.twoStarCount,
    this.oneStarCount,
  }) : super._();
  @override
  ReviewStatisticsResponse rebuild(
    void Function(ReviewStatisticsResponseBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ReviewStatisticsResponseBuilder toBuilder() =>
      ReviewStatisticsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewStatisticsResponse &&
        variantId == other.variantId &&
        totalReviews == other.totalReviews &&
        averageRating == other.averageRating &&
        fiveStarCount == other.fiveStarCount &&
        fourStarCount == other.fourStarCount &&
        threeStarCount == other.threeStarCount &&
        twoStarCount == other.twoStarCount &&
        oneStarCount == other.oneStarCount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, variantId.hashCode);
    _$hash = $jc(_$hash, totalReviews.hashCode);
    _$hash = $jc(_$hash, averageRating.hashCode);
    _$hash = $jc(_$hash, fiveStarCount.hashCode);
    _$hash = $jc(_$hash, fourStarCount.hashCode);
    _$hash = $jc(_$hash, threeStarCount.hashCode);
    _$hash = $jc(_$hash, twoStarCount.hashCode);
    _$hash = $jc(_$hash, oneStarCount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewStatisticsResponse')
          ..add('variantId', variantId)
          ..add('totalReviews', totalReviews)
          ..add('averageRating', averageRating)
          ..add('fiveStarCount', fiveStarCount)
          ..add('fourStarCount', fourStarCount)
          ..add('threeStarCount', threeStarCount)
          ..add('twoStarCount', twoStarCount)
          ..add('oneStarCount', oneStarCount))
        .toString();
  }
}

class ReviewStatisticsResponseBuilder
    implements
        Builder<ReviewStatisticsResponse, ReviewStatisticsResponseBuilder> {
  _$ReviewStatisticsResponse? _$v;

  String? _variantId;
  String? get variantId => _$this._variantId;
  set variantId(String? variantId) => _$this._variantId = variantId;

  int? _totalReviews;
  int? get totalReviews => _$this._totalReviews;
  set totalReviews(int? totalReviews) => _$this._totalReviews = totalReviews;

  double? _averageRating;
  double? get averageRating => _$this._averageRating;
  set averageRating(double? averageRating) =>
      _$this._averageRating = averageRating;

  int? _fiveStarCount;
  int? get fiveStarCount => _$this._fiveStarCount;
  set fiveStarCount(int? fiveStarCount) =>
      _$this._fiveStarCount = fiveStarCount;

  int? _fourStarCount;
  int? get fourStarCount => _$this._fourStarCount;
  set fourStarCount(int? fourStarCount) =>
      _$this._fourStarCount = fourStarCount;

  int? _threeStarCount;
  int? get threeStarCount => _$this._threeStarCount;
  set threeStarCount(int? threeStarCount) =>
      _$this._threeStarCount = threeStarCount;

  int? _twoStarCount;
  int? get twoStarCount => _$this._twoStarCount;
  set twoStarCount(int? twoStarCount) => _$this._twoStarCount = twoStarCount;

  int? _oneStarCount;
  int? get oneStarCount => _$this._oneStarCount;
  set oneStarCount(int? oneStarCount) => _$this._oneStarCount = oneStarCount;

  ReviewStatisticsResponseBuilder() {
    ReviewStatisticsResponse._defaults(this);
  }

  ReviewStatisticsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _variantId = $v.variantId;
      _totalReviews = $v.totalReviews;
      _averageRating = $v.averageRating;
      _fiveStarCount = $v.fiveStarCount;
      _fourStarCount = $v.fourStarCount;
      _threeStarCount = $v.threeStarCount;
      _twoStarCount = $v.twoStarCount;
      _oneStarCount = $v.oneStarCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewStatisticsResponse other) {
    _$v = other as _$ReviewStatisticsResponse;
  }

  @override
  void update(void Function(ReviewStatisticsResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewStatisticsResponse build() => _build();

  _$ReviewStatisticsResponse _build() {
    final _$result =
        _$v ??
        _$ReviewStatisticsResponse._(
          variantId: variantId,
          totalReviews: totalReviews,
          averageRating: averageRating,
          fiveStarCount: fiveStarCount,
          fourStarCount: fourStarCount,
          threeStarCount: threeStarCount,
          twoStarCount: twoStarCount,
          oneStarCount: oneStarCount,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
