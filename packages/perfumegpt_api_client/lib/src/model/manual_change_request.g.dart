// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manual_change_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ManualChangeRequest extends ManualChangeRequest {
  @override
  final String? userId;
  @override
  final LoyaltyTransactionType? transactionType;
  @override
  final int? points;
  @override
  final String reason;

  factory _$ManualChangeRequest([
    void Function(ManualChangeRequestBuilder)? updates,
  ]) => (ManualChangeRequestBuilder()..update(updates))._build();

  _$ManualChangeRequest._({
    this.userId,
    this.transactionType,
    this.points,
    required this.reason,
  }) : super._();
  @override
  ManualChangeRequest rebuild(
    void Function(ManualChangeRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  ManualChangeRequestBuilder toBuilder() =>
      ManualChangeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ManualChangeRequest &&
        userId == other.userId &&
        transactionType == other.transactionType &&
        points == other.points &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, transactionType.hashCode);
    _$hash = $jc(_$hash, points.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ManualChangeRequest')
          ..add('userId', userId)
          ..add('transactionType', transactionType)
          ..add('points', points)
          ..add('reason', reason))
        .toString();
  }
}

class ManualChangeRequestBuilder
    implements Builder<ManualChangeRequest, ManualChangeRequestBuilder> {
  _$ManualChangeRequest? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  LoyaltyTransactionType? _transactionType;
  LoyaltyTransactionType? get transactionType => _$this._transactionType;
  set transactionType(LoyaltyTransactionType? transactionType) =>
      _$this._transactionType = transactionType;

  int? _points;
  int? get points => _$this._points;
  set points(int? points) => _$this._points = points;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  ManualChangeRequestBuilder() {
    ManualChangeRequest._defaults(this);
  }

  ManualChangeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _transactionType = $v.transactionType;
      _points = $v.points;
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ManualChangeRequest other) {
    _$v = other as _$ManualChangeRequest;
  }

  @override
  void update(void Function(ManualChangeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ManualChangeRequest build() => _build();

  _$ManualChangeRequest _build() {
    final _$result =
        _$v ??
        _$ManualChangeRequest._(
          userId: userId,
          transactionType: transactionType,
          points: points,
          reason: BuiltValueNullFieldError.checkNotNull(
            reason,
            r'ManualChangeRequest',
            'reason',
          ),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
