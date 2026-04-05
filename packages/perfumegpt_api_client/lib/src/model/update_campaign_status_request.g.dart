// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_campaign_status_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCampaignStatusRequest extends UpdateCampaignStatusRequest {
  @override
  final CampaignStatus? status;

  factory _$UpdateCampaignStatusRequest([
    void Function(UpdateCampaignStatusRequestBuilder)? updates,
  ]) => (UpdateCampaignStatusRequestBuilder()..update(updates))._build();

  _$UpdateCampaignStatusRequest._({this.status}) : super._();
  @override
  UpdateCampaignStatusRequest rebuild(
    void Function(UpdateCampaignStatusRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateCampaignStatusRequestBuilder toBuilder() =>
      UpdateCampaignStatusRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCampaignStatusRequest && status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
      r'UpdateCampaignStatusRequest',
    )..add('status', status)).toString();
  }
}

class UpdateCampaignStatusRequestBuilder
    implements
        Builder<
          UpdateCampaignStatusRequest,
          UpdateCampaignStatusRequestBuilder
        > {
  _$UpdateCampaignStatusRequest? _$v;

  CampaignStatus? _status;
  CampaignStatus? get status => _$this._status;
  set status(CampaignStatus? status) => _$this._status = status;

  UpdateCampaignStatusRequestBuilder() {
    UpdateCampaignStatusRequest._defaults(this);
  }

  UpdateCampaignStatusRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCampaignStatusRequest other) {
    _$v = other as _$UpdateCampaignStatusRequest;
  }

  @override
  void update(void Function(UpdateCampaignStatusRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateCampaignStatusRequest build() => _build();

  _$UpdateCampaignStatusRequest _build() {
    final _$result = _$v ?? _$UpdateCampaignStatusRequest._(status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
