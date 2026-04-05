// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_review_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReviewRequest extends CreateReviewRequest {
  @override
  final String orderDetailId;
  @override
  final int? rating;
  @override
  final String comment;
  @override
  final BuiltList<String>? temporaryMediaIds;

  factory _$CreateReviewRequest([
    void Function(CreateReviewRequestBuilder)? updates,
  ]) => (CreateReviewRequestBuilder()..update(updates))._build();

  _$CreateReviewRequest._({
    required this.orderDetailId,
    this.rating,
    required this.comment,
    this.temporaryMediaIds,
  }) : super._();
  @override
  CreateReviewRequest rebuild(
    void Function(CreateReviewRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateReviewRequestBuilder toBuilder() =>
      CreateReviewRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateReviewRequest &&
        orderDetailId == other.orderDetailId &&
        rating == other.rating &&
        comment == other.comment &&
        temporaryMediaIds == other.temporaryMediaIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderDetailId.hashCode);
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, comment.hashCode);
    _$hash = $jc(_$hash, temporaryMediaIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateReviewRequest')
          ..add('orderDetailId', orderDetailId)
          ..add('rating', rating)
          ..add('comment', comment)
          ..add('temporaryMediaIds', temporaryMediaIds))
        .toString();
  }
}

class CreateReviewRequestBuilder
    implements Builder<CreateReviewRequest, CreateReviewRequestBuilder> {
  _$CreateReviewRequest? _$v;

  String? _orderDetailId;
  String? get orderDetailId => _$this._orderDetailId;
  set orderDetailId(String? orderDetailId) =>
      _$this._orderDetailId = orderDetailId;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  ListBuilder<String>? _temporaryMediaIds;
  ListBuilder<String> get temporaryMediaIds =>
      _$this._temporaryMediaIds ??= ListBuilder<String>();
  set temporaryMediaIds(ListBuilder<String>? temporaryMediaIds) =>
      _$this._temporaryMediaIds = temporaryMediaIds;

  CreateReviewRequestBuilder() {
    CreateReviewRequest._defaults(this);
  }

  CreateReviewRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderDetailId = $v.orderDetailId;
      _rating = $v.rating;
      _comment = $v.comment;
      _temporaryMediaIds = $v.temporaryMediaIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateReviewRequest other) {
    _$v = other as _$CreateReviewRequest;
  }

  @override
  void update(void Function(CreateReviewRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateReviewRequest build() => _build();

  _$CreateReviewRequest _build() {
    _$CreateReviewRequest _$result;
    try {
      _$result =
          _$v ??
          _$CreateReviewRequest._(
            orderDetailId: BuiltValueNullFieldError.checkNotNull(
              orderDetailId,
              r'CreateReviewRequest',
              'orderDetailId',
            ),
            rating: rating,
            comment: BuiltValueNullFieldError.checkNotNull(
              comment,
              r'CreateReviewRequest',
              'comment',
            ),
            temporaryMediaIds: _temporaryMediaIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'temporaryMediaIds';
        _temporaryMediaIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateReviewRequest',
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
