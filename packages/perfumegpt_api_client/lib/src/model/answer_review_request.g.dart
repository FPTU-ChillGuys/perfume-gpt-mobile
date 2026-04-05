// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_review_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AnswerReviewRequest extends AnswerReviewRequest {
  @override
  final String staffFeedbackComment;

  factory _$AnswerReviewRequest([
    void Function(AnswerReviewRequestBuilder)? updates,
  ]) => (AnswerReviewRequestBuilder()..update(updates))._build();

  _$AnswerReviewRequest._({required this.staffFeedbackComment}) : super._();
  @override
  AnswerReviewRequest rebuild(
    void Function(AnswerReviewRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  AnswerReviewRequestBuilder toBuilder() =>
      AnswerReviewRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnswerReviewRequest &&
        staffFeedbackComment == other.staffFeedbackComment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, staffFeedbackComment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'AnswerReviewRequest',
    )..add('staffFeedbackComment', staffFeedbackComment)).toString();
  }
}

class AnswerReviewRequestBuilder
    implements Builder<AnswerReviewRequest, AnswerReviewRequestBuilder> {
  _$AnswerReviewRequest? _$v;

  String? _staffFeedbackComment;
  String? get staffFeedbackComment => _$this._staffFeedbackComment;
  set staffFeedbackComment(String? staffFeedbackComment) =>
      _$this._staffFeedbackComment = staffFeedbackComment;

  AnswerReviewRequestBuilder() {
    AnswerReviewRequest._defaults(this);
  }

  AnswerReviewRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _staffFeedbackComment = $v.staffFeedbackComment;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnswerReviewRequest other) {
    _$v = other as _$AnswerReviewRequest;
  }

  @override
  void update(void Function(AnswerReviewRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnswerReviewRequest build() => _build();

  _$AnswerReviewRequest _build() {
    final _$result =
        _$v ??
        _$AnswerReviewRequest._(
          staffFeedbackComment: BuiltValueNullFieldError.checkNotNull(
            staffFeedbackComment,
            r'AnswerReviewRequest',
            'staffFeedbackComment',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
