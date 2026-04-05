// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_return_request_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateReturnRequestDto extends CreateReturnRequestDto {
  @override
  final String orderId;
  @override
  final ReturnOrderReason reason;
  @override
  final BuiltList<ReturnItemDto> returnItems;
  @override
  final String? customerNote;
  @override
  final String? savedAddressId;
  @override
  final ContactAddressInformation? recipient;
  @override
  final BuiltList<String>? temporaryMediaIds;

  factory _$CreateReturnRequestDto([
    void Function(CreateReturnRequestDtoBuilder)? updates,
  ]) => (CreateReturnRequestDtoBuilder()..update(updates))._build();

  _$CreateReturnRequestDto._({
    required this.orderId,
    required this.reason,
    required this.returnItems,
    this.customerNote,
    this.savedAddressId,
    this.recipient,
    this.temporaryMediaIds,
  }) : super._();
  @override
  CreateReturnRequestDto rebuild(
    void Function(CreateReturnRequestDtoBuilder) updates,
  ) => (toBuilder()..update(updates)).build();

  @override
  CreateReturnRequestDtoBuilder toBuilder() =>
      CreateReturnRequestDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateReturnRequestDto &&
        orderId == other.orderId &&
        reason == other.reason &&
        returnItems == other.returnItems &&
        customerNote == other.customerNote &&
        savedAddressId == other.savedAddressId &&
        recipient == other.recipient &&
        temporaryMediaIds == other.temporaryMediaIds;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jc(_$hash, returnItems.hashCode);
    _$hash = $jc(_$hash, customerNote.hashCode);
    _$hash = $jc(_$hash, savedAddressId.hashCode);
    _$hash = $jc(_$hash, recipient.hashCode);
    _$hash = $jc(_$hash, temporaryMediaIds.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateReturnRequestDto')
          ..add('orderId', orderId)
          ..add('reason', reason)
          ..add('returnItems', returnItems)
          ..add('customerNote', customerNote)
          ..add('savedAddressId', savedAddressId)
          ..add('recipient', recipient)
          ..add('temporaryMediaIds', temporaryMediaIds))
        .toString();
  }
}

class CreateReturnRequestDtoBuilder
    implements Builder<CreateReturnRequestDto, CreateReturnRequestDtoBuilder> {
  _$CreateReturnRequestDto? _$v;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  ReturnOrderReason? _reason;
  ReturnOrderReason? get reason => _$this._reason;
  set reason(ReturnOrderReason? reason) => _$this._reason = reason;

  ListBuilder<ReturnItemDto>? _returnItems;
  ListBuilder<ReturnItemDto> get returnItems =>
      _$this._returnItems ??= ListBuilder<ReturnItemDto>();
  set returnItems(ListBuilder<ReturnItemDto>? returnItems) =>
      _$this._returnItems = returnItems;

  String? _customerNote;
  String? get customerNote => _$this._customerNote;
  set customerNote(String? customerNote) => _$this._customerNote = customerNote;

  String? _savedAddressId;
  String? get savedAddressId => _$this._savedAddressId;
  set savedAddressId(String? savedAddressId) =>
      _$this._savedAddressId = savedAddressId;

  ContactAddressInformationBuilder? _recipient;
  ContactAddressInformationBuilder get recipient =>
      _$this._recipient ??= ContactAddressInformationBuilder();
  set recipient(ContactAddressInformationBuilder? recipient) =>
      _$this._recipient = recipient;

  ListBuilder<String>? _temporaryMediaIds;
  ListBuilder<String> get temporaryMediaIds =>
      _$this._temporaryMediaIds ??= ListBuilder<String>();
  set temporaryMediaIds(ListBuilder<String>? temporaryMediaIds) =>
      _$this._temporaryMediaIds = temporaryMediaIds;

  CreateReturnRequestDtoBuilder() {
    CreateReturnRequestDto._defaults(this);
  }

  CreateReturnRequestDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _orderId = $v.orderId;
      _reason = $v.reason;
      _returnItems = $v.returnItems.toBuilder();
      _customerNote = $v.customerNote;
      _savedAddressId = $v.savedAddressId;
      _recipient = $v.recipient?.toBuilder();
      _temporaryMediaIds = $v.temporaryMediaIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateReturnRequestDto other) {
    _$v = other as _$CreateReturnRequestDto;
  }

  @override
  void update(void Function(CreateReturnRequestDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateReturnRequestDto build() => _build();

  _$CreateReturnRequestDto _build() {
    _$CreateReturnRequestDto _$result;
    try {
      _$result =
          _$v ??
          _$CreateReturnRequestDto._(
            orderId: BuiltValueNullFieldError.checkNotNull(
              orderId,
              r'CreateReturnRequestDto',
              'orderId',
            ),
            reason: BuiltValueNullFieldError.checkNotNull(
              reason,
              r'CreateReturnRequestDto',
              'reason',
            ),
            returnItems: returnItems.build(),
            customerNote: customerNote,
            savedAddressId: savedAddressId,
            recipient: _recipient?.build(),
            temporaryMediaIds: _temporaryMediaIds?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'returnItems';
        returnItems.build();

        _$failedField = 'recipient';
        _recipient?.build();
        _$failedField = 'temporaryMediaIds';
        _temporaryMediaIds?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
          r'CreateReturnRequestDto',
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
