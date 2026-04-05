// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_address_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateOrderAddressRequest extends UpdateOrderAddressRequest {
  @override
  final String? savedAddressId;
  @override
  final ContactAddressInformation? recipientInformation;

  factory _$UpdateOrderAddressRequest([
    void Function(UpdateOrderAddressRequestBuilder)? updates,
  ]) => (UpdateOrderAddressRequestBuilder()..update(updates))._build();

  _$UpdateOrderAddressRequest._({
    this.savedAddressId,
    this.recipientInformation,
  }) : super._();
  @override
  UpdateOrderAddressRequest rebuild(
    void Function(UpdateOrderAddressRequestBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  UpdateOrderAddressRequestBuilder toBuilder() =>
      UpdateOrderAddressRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateOrderAddressRequest &&
        savedAddressId == other.savedAddressId &&
        recipientInformation == other.recipientInformation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, savedAddressId.hashCode);
    _$hash = $jc(_$hash, recipientInformation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateOrderAddressRequest')
          ..add('savedAddressId', savedAddressId)
          ..add('recipientInformation', recipientInformation))
        .toString();
  }
}

class UpdateOrderAddressRequestBuilder
    implements
        Builder<UpdateOrderAddressRequest, UpdateOrderAddressRequestBuilder> {
  _$UpdateOrderAddressRequest? _$v;

  String? _savedAddressId;
  String? get savedAddressId => _$this._savedAddressId;
  set savedAddressId(String? savedAddressId) =>
      _$this._savedAddressId = savedAddressId;

  ContactAddressInformationBuilder? _recipientInformation;
  ContactAddressInformationBuilder get recipientInformation =>
      _$this._recipientInformation ??= ContactAddressInformationBuilder();
  set recipientInformation(
    ContactAddressInformationBuilder? recipientInformation,
  ) => _$this._recipientInformation = recipientInformation;

  UpdateOrderAddressRequestBuilder() {
    UpdateOrderAddressRequest._defaults(this);
  }

  UpdateOrderAddressRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _savedAddressId = $v.savedAddressId;
      _recipientInformation = $v.recipientInformation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateOrderAddressRequest other) {
    _$v = other as _$UpdateOrderAddressRequest;
  }

  @override
  void update(void Function(UpdateOrderAddressRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateOrderAddressRequest build() => _build();

  _$UpdateOrderAddressRequest _build() {
    _$UpdateOrderAddressRequest _$result;
    try {
      _$result =
          _$v ??
          _$UpdateOrderAddressRequest._(
            savedAddressId: savedAddressId,
            recipientInformation: _recipientInformation?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'recipientInformation';
        _recipientInformation?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'UpdateOrderAddressRequest',
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
