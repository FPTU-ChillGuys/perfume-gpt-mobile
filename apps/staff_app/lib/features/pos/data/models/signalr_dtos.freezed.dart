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

 List<CartItemDto> get items; double get totalAmount; double get taxAmount; double get discountAmount;
/// Create a copy of CartDisplayDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartDisplayDtoCopyWith<CartDisplayDto> get copyWith => _$CartDisplayDtoCopyWithImpl<CartDisplayDto>(this as CartDisplayDto, _$identity);

  /// Serializes this CartDisplayDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartDisplayDto&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),totalAmount,taxAmount,discountAmount);

@override
String toString() {
  return 'CartDisplayDto(items: $items, totalAmount: $totalAmount, taxAmount: $taxAmount, discountAmount: $discountAmount)';
}


}

/// @nodoc
abstract mixin class $CartDisplayDtoCopyWith<$Res>  {
  factory $CartDisplayDtoCopyWith(CartDisplayDto value, $Res Function(CartDisplayDto) _then) = _$CartDisplayDtoCopyWithImpl;
@useResult
$Res call({
 List<CartItemDto> items, double totalAmount, double taxAmount, double discountAmount
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
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? totalAmount = null,Object? taxAmount = null,Object? discountAmount = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemDto>,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CartItemDto> items,  double totalAmount,  double taxAmount,  double discountAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartDisplayDto() when $default != null:
return $default(_that.items,_that.totalAmount,_that.taxAmount,_that.discountAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CartItemDto> items,  double totalAmount,  double taxAmount,  double discountAmount)  $default,) {final _that = this;
switch (_that) {
case _CartDisplayDto():
return $default(_that.items,_that.totalAmount,_that.taxAmount,_that.discountAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CartItemDto> items,  double totalAmount,  double taxAmount,  double discountAmount)?  $default,) {final _that = this;
switch (_that) {
case _CartDisplayDto() when $default != null:
return $default(_that.items,_that.totalAmount,_that.taxAmount,_that.discountAmount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartDisplayDto implements CartDisplayDto {
  const _CartDisplayDto({final  List<CartItemDto> items = const [], this.totalAmount = 0.0, this.taxAmount = 0.0, this.discountAmount = 0.0}): _items = items;
  factory _CartDisplayDto.fromJson(Map<String, dynamic> json) => _$CartDisplayDtoFromJson(json);

 final  List<CartItemDto> _items;
@override@JsonKey() List<CartItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  double totalAmount;
@override@JsonKey() final  double taxAmount;
@override@JsonKey() final  double discountAmount;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartDisplayDto&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),totalAmount,taxAmount,discountAmount);

@override
String toString() {
  return 'CartDisplayDto(items: $items, totalAmount: $totalAmount, taxAmount: $taxAmount, discountAmount: $discountAmount)';
}


}

/// @nodoc
abstract mixin class _$CartDisplayDtoCopyWith<$Res> implements $CartDisplayDtoCopyWith<$Res> {
  factory _$CartDisplayDtoCopyWith(_CartDisplayDto value, $Res Function(_CartDisplayDto) _then) = __$CartDisplayDtoCopyWithImpl;
@override @useResult
$Res call({
 List<CartItemDto> items, double totalAmount, double taxAmount, double discountAmount
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
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? totalAmount = null,Object? taxAmount = null,Object? discountAmount = null,}) {
  return _then(_CartDisplayDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<CartItemDto>,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$CartItemDto {

 String get id; String get name; String get imageUrl; int get quantity; double get price; double get total;
/// Create a copy of CartItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CartItemDtoCopyWith<CartItemDto> get copyWith => _$CartItemDtoCopyWithImpl<CartItemDto>(this as CartItemDto, _$identity);

  /// Serializes this CartItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CartItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,quantity,price,total);

@override
String toString() {
  return 'CartItemDto(id: $id, name: $name, imageUrl: $imageUrl, quantity: $quantity, price: $price, total: $total)';
}


}

/// @nodoc
abstract mixin class $CartItemDtoCopyWith<$Res>  {
  factory $CartItemDtoCopyWith(CartItemDto value, $Res Function(CartItemDto) _then) = _$CartItemDtoCopyWithImpl;
@useResult
$Res call({
 String id, String name, String imageUrl, int quantity, double price, double total
});




}
/// @nodoc
class _$CartItemDtoCopyWithImpl<$Res>
    implements $CartItemDtoCopyWith<$Res> {
  _$CartItemDtoCopyWithImpl(this._self, this._then);

  final CartItemDto _self;
  final $Res Function(CartItemDto) _then;

/// Create a copy of CartItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? quantity = null,Object? price = null,Object? total = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CartItemDto].
extension CartItemDtoPatterns on CartItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CartItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CartItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CartItemDto value)  $default,){
final _that = this;
switch (_that) {
case _CartItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CartItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _CartItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  int quantity,  double price,  double total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CartItemDto() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.quantity,_that.price,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String imageUrl,  int quantity,  double price,  double total)  $default,) {final _that = this;
switch (_that) {
case _CartItemDto():
return $default(_that.id,_that.name,_that.imageUrl,_that.quantity,_that.price,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String imageUrl,  int quantity,  double price,  double total)?  $default,) {final _that = this;
switch (_that) {
case _CartItemDto() when $default != null:
return $default(_that.id,_that.name,_that.imageUrl,_that.quantity,_that.price,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CartItemDto implements CartItemDto {
  const _CartItemDto({required this.id, required this.name, required this.imageUrl, required this.quantity, required this.price, required this.total});
  factory _CartItemDto.fromJson(Map<String, dynamic> json) => _$CartItemDtoFromJson(json);

@override final  String id;
@override final  String name;
@override final  String imageUrl;
@override final  int quantity;
@override final  double price;
@override final  double total;

/// Create a copy of CartItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CartItemDtoCopyWith<_CartItemDto> get copyWith => __$CartItemDtoCopyWithImpl<_CartItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CartItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CartItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.price, price) || other.price == price)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,imageUrl,quantity,price,total);

@override
String toString() {
  return 'CartItemDto(id: $id, name: $name, imageUrl: $imageUrl, quantity: $quantity, price: $price, total: $total)';
}


}

/// @nodoc
abstract mixin class _$CartItemDtoCopyWith<$Res> implements $CartItemDtoCopyWith<$Res> {
  factory _$CartItemDtoCopyWith(_CartItemDto value, $Res Function(_CartItemDto) _then) = __$CartItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String imageUrl, int quantity, double price, double total
});




}
/// @nodoc
class __$CartItemDtoCopyWithImpl<$Res>
    implements _$CartItemDtoCopyWith<$Res> {
  __$CartItemDtoCopyWithImpl(this._self, this._then);

  final _CartItemDto _self;
  final $Res Function(_CartItemDto) _then;

/// Create a copy of CartItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? imageUrl = null,Object? quantity = null,Object? price = null,Object? total = null,}) {
  return _then(_CartItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$PosPaymentCompletedDto {

 String get orderId; String get orderCode; double get amount; bool get isSuccess; String? get message;
/// Create a copy of PosPaymentCompletedDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PosPaymentCompletedDtoCopyWith<PosPaymentCompletedDto> get copyWith => _$PosPaymentCompletedDtoCopyWithImpl<PosPaymentCompletedDto>(this as PosPaymentCompletedDto, _$identity);

  /// Serializes this PosPaymentCompletedDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PosPaymentCompletedDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,orderCode,amount,isSuccess,message);

@override
String toString() {
  return 'PosPaymentCompletedDto(orderId: $orderId, orderCode: $orderCode, amount: $amount, isSuccess: $isSuccess, message: $message)';
}


}

/// @nodoc
abstract mixin class $PosPaymentCompletedDtoCopyWith<$Res>  {
  factory $PosPaymentCompletedDtoCopyWith(PosPaymentCompletedDto value, $Res Function(PosPaymentCompletedDto) _then) = _$PosPaymentCompletedDtoCopyWithImpl;
@useResult
$Res call({
 String orderId, String orderCode, double amount, bool isSuccess, String? message
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
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? orderCode = null,Object? amount = null,Object? isSuccess = null,Object? message = freezed,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  String orderCode,  double amount,  bool isSuccess,  String? message)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PosPaymentCompletedDto() when $default != null:
return $default(_that.orderId,_that.orderCode,_that.amount,_that.isSuccess,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  String orderCode,  double amount,  bool isSuccess,  String? message)  $default,) {final _that = this;
switch (_that) {
case _PosPaymentCompletedDto():
return $default(_that.orderId,_that.orderCode,_that.amount,_that.isSuccess,_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  String orderCode,  double amount,  bool isSuccess,  String? message)?  $default,) {final _that = this;
switch (_that) {
case _PosPaymentCompletedDto() when $default != null:
return $default(_that.orderId,_that.orderCode,_that.amount,_that.isSuccess,_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PosPaymentCompletedDto implements PosPaymentCompletedDto {
  const _PosPaymentCompletedDto({required this.orderId, required this.orderCode, required this.amount, required this.isSuccess, this.message});
  factory _PosPaymentCompletedDto.fromJson(Map<String, dynamic> json) => _$PosPaymentCompletedDtoFromJson(json);

@override final  String orderId;
@override final  String orderCode;
@override final  double amount;
@override final  bool isSuccess;
@override final  String? message;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PosPaymentCompletedDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isSuccess, isSuccess) || other.isSuccess == isSuccess)&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,orderCode,amount,isSuccess,message);

@override
String toString() {
  return 'PosPaymentCompletedDto(orderId: $orderId, orderCode: $orderCode, amount: $amount, isSuccess: $isSuccess, message: $message)';
}


}

/// @nodoc
abstract mixin class _$PosPaymentCompletedDtoCopyWith<$Res> implements $PosPaymentCompletedDtoCopyWith<$Res> {
  factory _$PosPaymentCompletedDtoCopyWith(_PosPaymentCompletedDto value, $Res Function(_PosPaymentCompletedDto) _then) = __$PosPaymentCompletedDtoCopyWithImpl;
@override @useResult
$Res call({
 String orderId, String orderCode, double amount, bool isSuccess, String? message
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
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? orderCode = null,Object? amount = null,Object? isSuccess = null,Object? message = freezed,}) {
  return _then(_PosPaymentCompletedDto(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,isSuccess: null == isSuccess ? _self.isSuccess : isSuccess // ignore: cast_nullable_to_non_nullable
as bool,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$PosPaymentLinkDto {

 String get orderId; String get orderCode; String get paymentUrl; double get amount;
/// Create a copy of PosPaymentLinkDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PosPaymentLinkDtoCopyWith<PosPaymentLinkDto> get copyWith => _$PosPaymentLinkDtoCopyWithImpl<PosPaymentLinkDto>(this as PosPaymentLinkDto, _$identity);

  /// Serializes this PosPaymentLinkDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PosPaymentLinkDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,orderCode,paymentUrl,amount);

@override
String toString() {
  return 'PosPaymentLinkDto(orderId: $orderId, orderCode: $orderCode, paymentUrl: $paymentUrl, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $PosPaymentLinkDtoCopyWith<$Res>  {
  factory $PosPaymentLinkDtoCopyWith(PosPaymentLinkDto value, $Res Function(PosPaymentLinkDto) _then) = _$PosPaymentLinkDtoCopyWithImpl;
@useResult
$Res call({
 String orderId, String orderCode, String paymentUrl, double amount
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
@pragma('vm:prefer-inline') @override $Res call({Object? orderId = null,Object? orderCode = null,Object? paymentUrl = null,Object? amount = null,}) {
  return _then(_self.copyWith(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String orderId,  String orderCode,  String paymentUrl,  double amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PosPaymentLinkDto() when $default != null:
return $default(_that.orderId,_that.orderCode,_that.paymentUrl,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String orderId,  String orderCode,  String paymentUrl,  double amount)  $default,) {final _that = this;
switch (_that) {
case _PosPaymentLinkDto():
return $default(_that.orderId,_that.orderCode,_that.paymentUrl,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String orderId,  String orderCode,  String paymentUrl,  double amount)?  $default,) {final _that = this;
switch (_that) {
case _PosPaymentLinkDto() when $default != null:
return $default(_that.orderId,_that.orderCode,_that.paymentUrl,_that.amount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PosPaymentLinkDto implements PosPaymentLinkDto {
  const _PosPaymentLinkDto({required this.orderId, required this.orderCode, required this.paymentUrl, required this.amount});
  factory _PosPaymentLinkDto.fromJson(Map<String, dynamic> json) => _$PosPaymentLinkDtoFromJson(json);

@override final  String orderId;
@override final  String orderCode;
@override final  String paymentUrl;
@override final  double amount;

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PosPaymentLinkDto&&(identical(other.orderId, orderId) || other.orderId == orderId)&&(identical(other.orderCode, orderCode) || other.orderCode == orderCode)&&(identical(other.paymentUrl, paymentUrl) || other.paymentUrl == paymentUrl)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderId,orderCode,paymentUrl,amount);

@override
String toString() {
  return 'PosPaymentLinkDto(orderId: $orderId, orderCode: $orderCode, paymentUrl: $paymentUrl, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$PosPaymentLinkDtoCopyWith<$Res> implements $PosPaymentLinkDtoCopyWith<$Res> {
  factory _$PosPaymentLinkDtoCopyWith(_PosPaymentLinkDto value, $Res Function(_PosPaymentLinkDto) _then) = __$PosPaymentLinkDtoCopyWithImpl;
@override @useResult
$Res call({
 String orderId, String orderCode, String paymentUrl, double amount
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
@override @pragma('vm:prefer-inline') $Res call({Object? orderId = null,Object? orderCode = null,Object? paymentUrl = null,Object? amount = null,}) {
  return _then(_PosPaymentLinkDto(
orderId: null == orderId ? _self.orderId : orderId // ignore: cast_nullable_to_non_nullable
as String,orderCode: null == orderCode ? _self.orderCode : orderCode // ignore: cast_nullable_to_non_nullable
as String,paymentUrl: null == paymentUrl ? _self.paymentUrl : paymentUrl // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
