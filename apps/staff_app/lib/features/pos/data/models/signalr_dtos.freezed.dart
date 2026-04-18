// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signalr_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CartDisplayDto {

 List<PosOrderDetailListItem> get items; double get subTotal; double get shippingFee; double get discount; double get totalPrice; String? get paymentUrl; String? get message; String? get voucherCode;
/// Create a copy of CartDisplayDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartDisplayDtoCopyWith<CartDisplayDto> get copyWith => _$CartDisplayDtoCopyWithImpl<CartDisplayDto>(this as CartDisplayDto, _$identity);

  /// Serializes this CartDisplayDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartDisplayDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.subTotal, subTotal) || other.subTotal == subTotal)&&(identical(other.shippingFee, shippingFee) || other.shippingFee == shippingFee)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.message, message) || other.message == message)&&(identical(other.voucherCode, voucherCode) || other.voucherCode == voucherCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),subTotal,shippingFee,discount,totalPrice,paymentUrl,message,voucherCode);

@override
String toString() {
  return 'CartDisplayDto(items: $items, subTotal: $subTotal, shippingFee: $shippingFee, discount: $discount, totalPrice: $totalPrice, paymentUrl: $paymentUrl, message: $message, voucherCode: $voucherCode)';
}


}

/// @nodoc
abstract mixin class $CartDisplayDtoCopyWith<$Res>  {
  factory $CartDisplayDtoCopyWith(CartDisplayDto value, $Res Function(CartDisplayDto) _then) = _$CartDisplayDtoCopyWithImpl;
@useResult
$Res call({
 List<PosOrderDetailListItem> items, double subTotal, double shippingFee, double discount, double totalPrice, String? paymentUrl, String? message, String? voucherCode
});




}
/// @nodoc
class _$CartDisplayDtoCopyWithImpl<$Res>
    implements $CartDisplayDtoCopyWith<$Res> {
  _$CartDisplayDtoCopyWithImpl(this._self, this._then);

  final CartDisplayDto _self;
  final $Res Function(CartDisplayDto) _then;

/// Create a copy of CartDisplayDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? subTotal = null,Object? shippingFee = null,Object? discount = null,Object? totalPrice = null,Object? paymentUrl = freezed,Object? message = freezed,Object? voucherCode = freezed,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<PosOrderDetailListItem>,subTotal: null == subTotal ? _self.subTotal : subTotal // ignore: cast_nullable_to_non_nullable
as double,shippingFee: null == shippingFee ? _self.shippingFee : shippingFee // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,voucherCode: freezed == voucherCode ? _self.voucherCode : voucherCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CartDisplayDto].
extension CartDisplayDtoPatterns on CartDisplayDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartDisplayDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartDisplayDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartDisplayDto value)  $default,){
final _that = this;
switch (_that) {
case _CartDisplayDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartDisplayDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartDisplayDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PosOrderDetailListItem> items,  double subTotal,  double shippingFee,  double discount,  double totalPrice,  String? paymentUrl,  String? message,  String? voucherCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartDisplayDto() when $default != null:
return $default(_that.items,_that.subTotal,_that.shippingFee,_that.discount,_that.totalPrice,_that.paymentUrl,_that.message,_that.voucherCode);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PosOrderDetailListItem> items,  double subTotal,  double shippingFee,  double discount,  double totalPrice,  String? paymentUrl,  String? message,  String? voucherCode)  $default,) {final _that = this;
switch (_that) {
case _CartDisplayDto():
return $default(_that.items,_that.subTotal,_that.shippingFee,_that.discount,_that.totalPrice,_that.paymentUrl,_that.message,_that.voucherCode);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PosOrderDetailListItem> items,  double subTotal,  double shippingFee,  double discount,  double totalPrice,  String? paymentUrl,  String? message,  String? voucherCode)?  $default,) {final _that = this;
switch (_that) {
case _CartDisplayDto() when $default != null:
return $default(_that.items,_that.subTotal,_that.shippingFee,_that.discount,_that.totalPrice,_that.paymentUrl,_that.message,_that.voucherCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartDisplayDto implements CartDisplayDto {
  const _CartDisplayDto({required final  List<PosOrderDetailListItem> items, this.subTotal = 0.0, this.shippingFee = 0.0, this.discount = 0.0, this.totalPrice = 0.0, this.paymentUrl, this.message, this.voucherCode}): _items = items;
  factory _CartDisplayDto.fromJson(Map<String, dynamic> json) => _$CartDisplayDtoFromJson(json);

 final  List<PosOrderDetailListItem> _items;
@override List<PosOrderDetailListItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  double subTotal;
@override@JsonKey() final  double shippingFee;
@override@JsonKey() final  double discount;
@override@JsonKey() final  double totalPrice;
@override final  String? paymentUrl;
@override final  String? message;
@override final  String? voucherCode;

/// Create a copy of CartDisplayDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartDisplayDtoCopyWith<_CartDisplayDto> get copyWith => __$CartDisplayDtoCopyWithImpl<_CartDisplayDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartDisplayDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartDisplayDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.subTotal, subTotal) || other.subTotal == subTotal)&&(identical(other.shippingFee, shippingFee) || other.shippingFee == shippingFee)&&(identical(other.discount, discount) || other.discount == discount)&&(identical(other.totalPrice, totalPrice) || other.totalPrice == totalPrice)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.message, message) || other.message == message)&&(identical(other.voucherCode, voucherCode) || other.voucherCode == voucherCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),subTotal,shippingFee,discount,totalPrice,paymentUrl,message,voucherCode);

@override
String toString() {
  return 'CartDisplayDto(items: $items, subTotal: $subTotal, shippingFee: $shippingFee, discount: $discount, totalPrice: $totalPrice, paymentUrl: $paymentUrl, message: $message, voucherCode: $voucherCode)';
}


}

/// @nodoc
abstract mixin class _$CartDisplayDtoCopyWith<$Res> implements $CartDisplayDtoCopyWith<$Res> {
  factory _$CartDisplayDtoCopyWith(_CartDisplayDto value, $Res Function(_CartDisplayDto) _then) = __$CartDisplayDtoCopyWithImpl;
@override @useResult
$Res call({
 List<PosOrderDetailListItem> items, double subTotal, double shippingFee, double discount, double totalPrice, String? paymentUrl, String? message, String? voucherCode
});




}
/// @nodoc
class __$CartDisplayDtoCopyWithImpl<$Res>
    implements _$CartDisplayDtoCopyWith<$Res> {
  __$CartDisplayDtoCopyWithImpl(this._self, this._then);

  final _CartDisplayDto _self;
  final $Res Function(_CartDisplayDto) _then;

/// Create a copy of CartDisplayDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? subTotal = null,Object? shippingFee = null,Object? discount = null,Object? totalPrice = null,Object? paymentUrl = freezed,Object? message = freezed,Object? voucherCode = freezed,}) {
  return _then(_CartDisplayDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<PosOrderDetailListItem>,subTotal: null == subTotal ? _self.subTotal : subTotal // ignore: cast_nullable_to_non_nullable
as double,shippingFee: null == shippingFee ? _self.shippingFee : shippingFee // ignore: cast_nullable_to_non_nullable
as double,discount: null == discount ? _self.discount : discount // ignore: cast_nullable_to_non_nullable
as double,totalPrice: null == totalPrice ? _self.totalPrice : totalPrice // ignore: cast_nullable_to_non_nullable
as double,paymentUrl: freezed == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,voucherCode: freezed == voucherCode ? _self.voucherCode : voucherCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PosPaymentCompletedDto {

 String get orderId; String get paymentId; String get status; String get message;
/// Create a copy of PosPaymentCompletedDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PosPaymentCompletedDtoCopyWith<PosPaymentCompletedDto> get copyWith => _$PosPaymentCompletedDtoCopyWithImpl<PosPaymentCompletedDto>(this as PosPaymentCompletedDto, _$identity);

  /// Serializes this PosPaymentCompletedDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PosPaymentCompletedDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,paymentId,status,message);

@override
String toString() {
  return 'PosPaymentCompletedDto(orderId: $orderId, paymentId: $paymentId, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class $PosPaymentCompletedDtoCopyWith<$Res>  {
  factory $PosPaymentCompletedDtoCopyWith(PosPaymentCompletedDto value, $Res Function(PosPaymentCompletedDto) _then) = _$PosPaymentCompletedDtoCopyWithImpl;
@useResult
$Res call({
 String orderId, String paymentId, String status, String message
});




}
/// @nodoc
class _$PosPaymentCompletedDtoCopyWithImpl<$Res>
    implements $PosPaymentCompletedDtoCopyWith<$Res> {
  _$PosPaymentCompletedDtoCopyWithImpl(this._self, this._then);

  final PosPaymentCompletedDto _self;
  final $Res Function(PosPaymentCompletedDto) _then;

/// Create a copy of PosPaymentCompletedDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? paymentId = null,Object? status = null,Object? message = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PosPaymentCompletedDto].
extension PosPaymentCompletedDtoPatterns on PosPaymentCompletedDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PosPaymentCompletedDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PosPaymentCompletedDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PosPaymentCompletedDto value)  $default,){
final _that = this;
switch (_that) {
case _PosPaymentCompletedDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PosPaymentCompletedDto value)?  $default,){
final _that = this;
switch (_that) {
case _PosPaymentCompletedDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  String paymentId,  String status,  String message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PosPaymentCompletedDto() when $default != null:
return $default(_that.orderId,_that.paymentId,_that.status,_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  String paymentId,  String status,  String message)  $default,) {final _that = this;
switch (_that) {
case _PosPaymentCompletedDto():
return $default(_that.orderId,_that.paymentId,_that.status,_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  String paymentId,  String status,  String message)?  $default,) {final _that = this;
switch (_that) {
case _PosPaymentCompletedDto() when $default != null:
return $default(_that.orderId,_that.paymentId,_that.status,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PosPaymentCompletedDto implements PosPaymentCompletedDto {
  const _PosPaymentCompletedDto({required this.orderId, required this.paymentId, required this.status, required this.message});
  factory _PosPaymentCompletedDto.fromJson(Map<String, dynamic> json) => _$PosPaymentCompletedDtoFromJson(json);

@override final  String orderId;
@override final  String paymentId;
@override final  String status;
@override final  String message;

/// Create a copy of PosPaymentCompletedDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PosPaymentCompletedDtoCopyWith<_PosPaymentCompletedDto> get copyWith => __$PosPaymentCompletedDtoCopyWithImpl<_PosPaymentCompletedDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PosPaymentCompletedDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PosPaymentCompletedDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.status, status) || other.status == status)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,paymentId,status,message);

@override
String toString() {
  return 'PosPaymentCompletedDto(orderId: $orderId, paymentId: $paymentId, status: $status, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PosPaymentCompletedDtoCopyWith<$Res> implements $PosPaymentCompletedDtoCopyWith<$Res> {
  factory _$PosPaymentCompletedDtoCopyWith(_PosPaymentCompletedDto value, $Res Function(_PosPaymentCompletedDto) _then) = __$PosPaymentCompletedDtoCopyWithImpl;
@override @useResult
$Res call({
 String orderId, String paymentId, String status, String message
});




}
/// @nodoc
class __$PosPaymentCompletedDtoCopyWithImpl<$Res>
    implements _$PosPaymentCompletedDtoCopyWith<$Res> {
  __$PosPaymentCompletedDtoCopyWithImpl(this._self, this._then);

  final _PosPaymentCompletedDto _self;
  final $Res Function(_PosPaymentCompletedDto) _then;

/// Create a copy of PosPaymentCompletedDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? paymentId = null,Object? status = null,Object? message = null,}) {
  return _then(_PosPaymentCompletedDto(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PosPaymentLinkDto {

 String get orderId; String get paymentId; String get method; String get paymentUrl;
/// Create a copy of PosPaymentLinkDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PosPaymentLinkDtoCopyWith<PosPaymentLinkDto> get copyWith => _$PosPaymentLinkDtoCopyWithImpl<PosPaymentLinkDto>(this as PosPaymentLinkDto, _$identity);

  /// Serializes this PosPaymentLinkDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PosPaymentLinkDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.method, method) || other.method == method)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,paymentId,method,paymentUrl);

@override
String toString() {
  return 'PosPaymentLinkDto(orderId: $orderId, paymentId: $paymentId, method: $method, paymentUrl: $paymentUrl)';
}


}

/// @nodoc
abstract mixin class $PosPaymentLinkDtoCopyWith<$Res>  {
  factory $PosPaymentLinkDtoCopyWith(PosPaymentLinkDto value, $Res Function(PosPaymentLinkDto) _then) = _$PosPaymentLinkDtoCopyWithImpl;
@useResult
$Res call({
 String orderId, String paymentId, String method, String paymentUrl
});




}
/// @nodoc
class _$PosPaymentLinkDtoCopyWithImpl<$Res>
    implements $PosPaymentLinkDtoCopyWith<$Res> {
  _$PosPaymentLinkDtoCopyWithImpl(this._self, this._then);

  final PosPaymentLinkDto _self;
  final $Res Function(PosPaymentLinkDto) _then;

/// Create a copy of PosPaymentLinkDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? paymentId = null,Object? method = null,Object? paymentUrl = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PosPaymentLinkDto].
extension PosPaymentLinkDtoPatterns on PosPaymentLinkDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PosPaymentLinkDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PosPaymentLinkDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PosPaymentLinkDto value)  $default,){
final _that = this;
switch (_that) {
case _PosPaymentLinkDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PosPaymentLinkDto value)?  $default,){
final _that = this;
switch (_that) {
case _PosPaymentLinkDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  String paymentId,  String method,  String paymentUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PosPaymentLinkDto() when $default != null:
return $default(_that.orderId,_that.paymentId,_that.method,_that.paymentUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  String paymentId,  String method,  String paymentUrl)  $default,) {final _that = this;
switch (_that) {
case _PosPaymentLinkDto():
return $default(_that.orderId,_that.paymentId,_that.method,_that.paymentUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  String paymentId,  String method,  String paymentUrl)?  $default,) {final _that = this;
switch (_that) {
case _PosPaymentLinkDto() when $default != null:
return $default(_that.orderId,_that.paymentId,_that.method,_that.paymentUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PosPaymentLinkDto implements PosPaymentLinkDto {
  const _PosPaymentLinkDto({required this.orderId, required this.paymentId, required this.method, required this.paymentUrl});
  factory _PosPaymentLinkDto.fromJson(Map<String, dynamic> json) => _$PosPaymentLinkDtoFromJson(json);

@override final  String orderId;
@override final  String paymentId;
@override final  String method;
@override final  String paymentUrl;

/// Create a copy of PosPaymentLinkDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PosPaymentLinkDtoCopyWith<_PosPaymentLinkDto> get copyWith => __$PosPaymentLinkDtoCopyWithImpl<_PosPaymentLinkDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PosPaymentLinkDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PosPaymentLinkDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.paymentId, paymentId) || other.paymentId == paymentId)&&(identical(other.method, method) || other.method == method)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,paymentId,method,paymentUrl);

@override
String toString() {
  return 'PosPaymentLinkDto(orderId: $orderId, paymentId: $paymentId, method: $method, paymentUrl: $paymentUrl)';
}


}

/// @nodoc
abstract mixin class _$PosPaymentLinkDtoCopyWith<$Res> implements $PosPaymentLinkDtoCopyWith<$Res> {
  factory _$PosPaymentLinkDtoCopyWith(_PosPaymentLinkDto value, $Res Function(_PosPaymentLinkDto) _then) = __$PosPaymentLinkDtoCopyWithImpl;
@override @useResult
$Res call({
 String orderId, String paymentId, String method, String paymentUrl
});




}
/// @nodoc
class __$PosPaymentLinkDtoCopyWithImpl<$Res>
    implements _$PosPaymentLinkDtoCopyWith<$Res> {
  __$PosPaymentLinkDtoCopyWithImpl(this._self, this._then);

  final _PosPaymentLinkDto _self;
  final $Res Function(_PosPaymentLinkDto) _then;

/// Create a copy of PosPaymentLinkDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? paymentId = null,Object? method = null,Object? paymentUrl = null,}) {
  return _then(_PosPaymentLinkDto(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,paymentId: null == paymentId ? _self.paymentId : paymentId // ignore: cast_nullable_to_non_nullable
as String,method: null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String,paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
