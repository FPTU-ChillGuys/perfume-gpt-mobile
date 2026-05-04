// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import_verification_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$BatchInputState {

 String get tempId; String get batchCode; DateTime? get manufactureDate; DateTime? get expiryDate; int get quantity;
/// Create a copy of BatchInputState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BatchInputStateCopyWith<BatchInputState> get copyWith => _$BatchInputStateCopyWithImpl<BatchInputState>(this as BatchInputState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BatchInputState&&(identical(other.tempId, tempId) || other.tempId == tempId)&&(identical(other.batchCode, batchCode) || other.batchCode == batchCode)&&(identical(other.manufactureDate, manufactureDate) || other.manufactureDate == manufactureDate)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,tempId,batchCode,manufactureDate,expiryDate,quantity);

@override
String toString() {
  return 'BatchInputState(tempId: $tempId, batchCode: $batchCode, manufactureDate: $manufactureDate, expiryDate: $expiryDate, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class $BatchInputStateCopyWith<$Res>  {
  factory $BatchInputStateCopyWith(BatchInputState value, $Res Function(BatchInputState) _then) = _$BatchInputStateCopyWithImpl;
@useResult
$Res call({
 String tempId, String batchCode, DateTime? manufactureDate, DateTime? expiryDate, int quantity
});




}
/// @nodoc
class _$BatchInputStateCopyWithImpl<$Res>
    implements $BatchInputStateCopyWith<$Res> {
  _$BatchInputStateCopyWithImpl(this._self, this._then);

  final BatchInputState _self;
  final $Res Function(BatchInputState) _then;

/// Create a copy of BatchInputState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tempId = null,Object? batchCode = null,Object? manufactureDate = freezed,Object? expiryDate = freezed,Object? quantity = null,}) {
  return _then(_self.copyWith(
tempId: null == tempId ? _self.tempId : tempId // ignore: cast_nullable_to_non_nullable
as String,batchCode: null == batchCode ? _self.batchCode : batchCode // ignore: cast_nullable_to_non_nullable
as String,manufactureDate: freezed == manufactureDate ? _self.manufactureDate : manufactureDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BatchInputState].
extension BatchInputStatePatterns on BatchInputState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BatchInputState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BatchInputState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BatchInputState value)  $default,){
final _that = this;
switch (_that) {
case _BatchInputState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BatchInputState value)?  $default,){
final _that = this;
switch (_that) {
case _BatchInputState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tempId,  String batchCode,  DateTime? manufactureDate,  DateTime? expiryDate,  int quantity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BatchInputState() when $default != null:
return $default(_that.tempId,_that.batchCode,_that.manufactureDate,_that.expiryDate,_that.quantity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tempId,  String batchCode,  DateTime? manufactureDate,  DateTime? expiryDate,  int quantity)  $default,) {final _that = this;
switch (_that) {
case _BatchInputState():
return $default(_that.tempId,_that.batchCode,_that.manufactureDate,_that.expiryDate,_that.quantity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tempId,  String batchCode,  DateTime? manufactureDate,  DateTime? expiryDate,  int quantity)?  $default,) {final _that = this;
switch (_that) {
case _BatchInputState() when $default != null:
return $default(_that.tempId,_that.batchCode,_that.manufactureDate,_that.expiryDate,_that.quantity);case _:
  return null;

}
}

}

/// @nodoc


class _BatchInputState implements BatchInputState {
  const _BatchInputState({required this.tempId, this.batchCode = '', this.manufactureDate, this.expiryDate, this.quantity = 0});
  

@override final  String tempId;
@override@JsonKey() final  String batchCode;
@override final  DateTime? manufactureDate;
@override final  DateTime? expiryDate;
@override@JsonKey() final  int quantity;

/// Create a copy of BatchInputState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BatchInputStateCopyWith<_BatchInputState> get copyWith => __$BatchInputStateCopyWithImpl<_BatchInputState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BatchInputState&&(identical(other.tempId, tempId) || other.tempId == tempId)&&(identical(other.batchCode, batchCode) || other.batchCode == batchCode)&&(identical(other.manufactureDate, manufactureDate) || other.manufactureDate == manufactureDate)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.quantity, quantity) || other.quantity == quantity));
}


@override
int get hashCode => Object.hash(runtimeType,tempId,batchCode,manufactureDate,expiryDate,quantity);

@override
String toString() {
  return 'BatchInputState(tempId: $tempId, batchCode: $batchCode, manufactureDate: $manufactureDate, expiryDate: $expiryDate, quantity: $quantity)';
}


}

/// @nodoc
abstract mixin class _$BatchInputStateCopyWith<$Res> implements $BatchInputStateCopyWith<$Res> {
  factory _$BatchInputStateCopyWith(_BatchInputState value, $Res Function(_BatchInputState) _then) = __$BatchInputStateCopyWithImpl;
@override @useResult
$Res call({
 String tempId, String batchCode, DateTime? manufactureDate, DateTime? expiryDate, int quantity
});




}
/// @nodoc
class __$BatchInputStateCopyWithImpl<$Res>
    implements _$BatchInputStateCopyWith<$Res> {
  __$BatchInputStateCopyWithImpl(this._self, this._then);

  final _BatchInputState _self;
  final $Res Function(_BatchInputState) _then;

/// Create a copy of BatchInputState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tempId = null,Object? batchCode = null,Object? manufactureDate = freezed,Object? expiryDate = freezed,Object? quantity = null,}) {
  return _then(_BatchInputState(
tempId: null == tempId ? _self.tempId : tempId // ignore: cast_nullable_to_non_nullable
as String,batchCode: null == batchCode ? _self.batchCode : batchCode // ignore: cast_nullable_to_non_nullable
as String,manufactureDate: freezed == manufactureDate ? _self.manufactureDate : manufactureDate // ignore: cast_nullable_to_non_nullable
as DateTime?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as DateTime?,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$ProductVerificationState {

 String get importDetailId; String get variantId; String get variantName; String get variantSku; int get expectedQuantity; List<BatchInputState> get batches; bool get isExpanded; String? get note;
/// Create a copy of ProductVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductVerificationStateCopyWith<ProductVerificationState> get copyWith => _$ProductVerificationStateCopyWithImpl<ProductVerificationState>(this as ProductVerificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductVerificationState&&(identical(other.importDetailId, importDetailId) || other.importDetailId == importDetailId)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.variantName, variantName) || other.variantName == variantName)&&(identical(other.variantSku, variantSku) || other.variantSku == variantSku)&&(identical(other.expectedQuantity, expectedQuantity) || other.expectedQuantity == expectedQuantity)&&const DeepCollectionEquality().equals(other.batches, batches)&&(identical(other.isExpanded, isExpanded) || other.isExpanded == isExpanded)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,importDetailId,variantId,variantName,variantSku,expectedQuantity,const DeepCollectionEquality().hash(batches),isExpanded,note);

@override
String toString() {
  return 'ProductVerificationState(importDetailId: $importDetailId, variantId: $variantId, variantName: $variantName, variantSku: $variantSku, expectedQuantity: $expectedQuantity, batches: $batches, isExpanded: $isExpanded, note: $note)';
}


}

/// @nodoc
abstract mixin class $ProductVerificationStateCopyWith<$Res>  {
  factory $ProductVerificationStateCopyWith(ProductVerificationState value, $Res Function(ProductVerificationState) _then) = _$ProductVerificationStateCopyWithImpl;
@useResult
$Res call({
 String importDetailId, String variantId, String variantName, String variantSku, int expectedQuantity, List<BatchInputState> batches, bool isExpanded, String? note
});




}
/// @nodoc
class _$ProductVerificationStateCopyWithImpl<$Res>
    implements $ProductVerificationStateCopyWith<$Res> {
  _$ProductVerificationStateCopyWithImpl(this._self, this._then);

  final ProductVerificationState _self;
  final $Res Function(ProductVerificationState) _then;

/// Create a copy of ProductVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? importDetailId = null,Object? variantId = null,Object? variantName = null,Object? variantSku = null,Object? expectedQuantity = null,Object? batches = null,Object? isExpanded = null,Object? note = freezed,}) {
  return _then(_self.copyWith(
importDetailId: null == importDetailId ? _self.importDetailId : importDetailId // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,variantName: null == variantName ? _self.variantName : variantName // ignore: cast_nullable_to_non_nullable
as String,variantSku: null == variantSku ? _self.variantSku : variantSku // ignore: cast_nullable_to_non_nullable
as String,expectedQuantity: null == expectedQuantity ? _self.expectedQuantity : expectedQuantity // ignore: cast_nullable_to_non_nullable
as int,batches: null == batches ? _self.batches : batches // ignore: cast_nullable_to_non_nullable
as List<BatchInputState>,isExpanded: null == isExpanded ? _self.isExpanded : isExpanded // ignore: cast_nullable_to_non_nullable
as bool,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductVerificationState].
extension ProductVerificationStatePatterns on ProductVerificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductVerificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductVerificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductVerificationState value)  $default,){
final _that = this;
switch (_that) {
case _ProductVerificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductVerificationState value)?  $default,){
final _that = this;
switch (_that) {
case _ProductVerificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String importDetailId,  String variantId,  String variantName,  String variantSku,  int expectedQuantity,  List<BatchInputState> batches,  bool isExpanded,  String? note)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductVerificationState() when $default != null:
return $default(_that.importDetailId,_that.variantId,_that.variantName,_that.variantSku,_that.expectedQuantity,_that.batches,_that.isExpanded,_that.note);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String importDetailId,  String variantId,  String variantName,  String variantSku,  int expectedQuantity,  List<BatchInputState> batches,  bool isExpanded,  String? note)  $default,) {final _that = this;
switch (_that) {
case _ProductVerificationState():
return $default(_that.importDetailId,_that.variantId,_that.variantName,_that.variantSku,_that.expectedQuantity,_that.batches,_that.isExpanded,_that.note);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String importDetailId,  String variantId,  String variantName,  String variantSku,  int expectedQuantity,  List<BatchInputState> batches,  bool isExpanded,  String? note)?  $default,) {final _that = this;
switch (_that) {
case _ProductVerificationState() when $default != null:
return $default(_that.importDetailId,_that.variantId,_that.variantName,_that.variantSku,_that.expectedQuantity,_that.batches,_that.isExpanded,_that.note);case _:
  return null;

}
}

}

/// @nodoc


class _ProductVerificationState implements ProductVerificationState {
  const _ProductVerificationState({required this.importDetailId, required this.variantId, required this.variantName, required this.variantSku, required this.expectedQuantity, final  List<BatchInputState> batches = const [], this.isExpanded = false, this.note}): _batches = batches;
  

@override final  String importDetailId;
@override final  String variantId;
@override final  String variantName;
@override final  String variantSku;
@override final  int expectedQuantity;
 final  List<BatchInputState> _batches;
@override@JsonKey() List<BatchInputState> get batches {
  if (_batches is EqualUnmodifiableListView) return _batches;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_batches);
}

@override@JsonKey() final  bool isExpanded;
@override final  String? note;

/// Create a copy of ProductVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductVerificationStateCopyWith<_ProductVerificationState> get copyWith => __$ProductVerificationStateCopyWithImpl<_ProductVerificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductVerificationState&&(identical(other.importDetailId, importDetailId) || other.importDetailId == importDetailId)&&(identical(other.variantId, variantId) || other.variantId == variantId)&&(identical(other.variantName, variantName) || other.variantName == variantName)&&(identical(other.variantSku, variantSku) || other.variantSku == variantSku)&&(identical(other.expectedQuantity, expectedQuantity) || other.expectedQuantity == expectedQuantity)&&const DeepCollectionEquality().equals(other._batches, _batches)&&(identical(other.isExpanded, isExpanded) || other.isExpanded == isExpanded)&&(identical(other.note, note) || other.note == note));
}


@override
int get hashCode => Object.hash(runtimeType,importDetailId,variantId,variantName,variantSku,expectedQuantity,const DeepCollectionEquality().hash(_batches),isExpanded,note);

@override
String toString() {
  return 'ProductVerificationState(importDetailId: $importDetailId, variantId: $variantId, variantName: $variantName, variantSku: $variantSku, expectedQuantity: $expectedQuantity, batches: $batches, isExpanded: $isExpanded, note: $note)';
}


}

/// @nodoc
abstract mixin class _$ProductVerificationStateCopyWith<$Res> implements $ProductVerificationStateCopyWith<$Res> {
  factory _$ProductVerificationStateCopyWith(_ProductVerificationState value, $Res Function(_ProductVerificationState) _then) = __$ProductVerificationStateCopyWithImpl;
@override @useResult
$Res call({
 String importDetailId, String variantId, String variantName, String variantSku, int expectedQuantity, List<BatchInputState> batches, bool isExpanded, String? note
});




}
/// @nodoc
class __$ProductVerificationStateCopyWithImpl<$Res>
    implements _$ProductVerificationStateCopyWith<$Res> {
  __$ProductVerificationStateCopyWithImpl(this._self, this._then);

  final _ProductVerificationState _self;
  final $Res Function(_ProductVerificationState) _then;

/// Create a copy of ProductVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? importDetailId = null,Object? variantId = null,Object? variantName = null,Object? variantSku = null,Object? expectedQuantity = null,Object? batches = null,Object? isExpanded = null,Object? note = freezed,}) {
  return _then(_ProductVerificationState(
importDetailId: null == importDetailId ? _self.importDetailId : importDetailId // ignore: cast_nullable_to_non_nullable
as String,variantId: null == variantId ? _self.variantId : variantId // ignore: cast_nullable_to_non_nullable
as String,variantName: null == variantName ? _self.variantName : variantName // ignore: cast_nullable_to_non_nullable
as String,variantSku: null == variantSku ? _self.variantSku : variantSku // ignore: cast_nullable_to_non_nullable
as String,expectedQuantity: null == expectedQuantity ? _self.expectedQuantity : expectedQuantity // ignore: cast_nullable_to_non_nullable
as int,batches: null == batches ? _self._batches : batches // ignore: cast_nullable_to_non_nullable
as List<BatchInputState>,isExpanded: null == isExpanded ? _self.isExpanded : isExpanded // ignore: cast_nullable_to_non_nullable
as bool,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ImportVerificationState {

 String? get ticketId; List<ProductVerificationState> get products; String get staffNote; bool get isLoading;
/// Create a copy of ImportVerificationState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ImportVerificationStateCopyWith<ImportVerificationState> get copyWith => _$ImportVerificationStateCopyWithImpl<ImportVerificationState>(this as ImportVerificationState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ImportVerificationState&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&const DeepCollectionEquality().equals(other.products, products)&&(identical(other.staffNote, staffNote) || other.staffNote == staffNote)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,const DeepCollectionEquality().hash(products),staffNote,isLoading);

@override
String toString() {
  return 'ImportVerificationState(ticketId: $ticketId, products: $products, staffNote: $staffNote, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class $ImportVerificationStateCopyWith<$Res>  {
  factory $ImportVerificationStateCopyWith(ImportVerificationState value, $Res Function(ImportVerificationState) _then) = _$ImportVerificationStateCopyWithImpl;
@useResult
$Res call({
 String? ticketId, List<ProductVerificationState> products, String staffNote, bool isLoading
});




}
/// @nodoc
class _$ImportVerificationStateCopyWithImpl<$Res>
    implements $ImportVerificationStateCopyWith<$Res> {
  _$ImportVerificationStateCopyWithImpl(this._self, this._then);

  final ImportVerificationState _self;
  final $Res Function(ImportVerificationState) _then;

/// Create a copy of ImportVerificationState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ticketId = freezed,Object? products = null,Object? staffNote = null,Object? isLoading = null,}) {
  return _then(_self.copyWith(
ticketId: freezed == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String?,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductVerificationState>,staffNote: null == staffNote ? _self.staffNote : staffNote // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ImportVerificationState].
extension ImportVerificationStatePatterns on ImportVerificationState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ImportVerificationState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ImportVerificationState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ImportVerificationState value)  $default,){
final _that = this;
switch (_that) {
case _ImportVerificationState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ImportVerificationState value)?  $default,){
final _that = this;
switch (_that) {
case _ImportVerificationState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? ticketId,  List<ProductVerificationState> products,  String staffNote,  bool isLoading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ImportVerificationState() when $default != null:
return $default(_that.ticketId,_that.products,_that.staffNote,_that.isLoading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? ticketId,  List<ProductVerificationState> products,  String staffNote,  bool isLoading)  $default,) {final _that = this;
switch (_that) {
case _ImportVerificationState():
return $default(_that.ticketId,_that.products,_that.staffNote,_that.isLoading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? ticketId,  List<ProductVerificationState> products,  String staffNote,  bool isLoading)?  $default,) {final _that = this;
switch (_that) {
case _ImportVerificationState() when $default != null:
return $default(_that.ticketId,_that.products,_that.staffNote,_that.isLoading);case _:
  return null;

}
}

}

/// @nodoc


class _ImportVerificationState implements ImportVerificationState {
  const _ImportVerificationState({this.ticketId, final  List<ProductVerificationState> products = const [], this.staffNote = '', this.isLoading = false}): _products = products;
  

@override final  String? ticketId;
 final  List<ProductVerificationState> _products;
@override@JsonKey() List<ProductVerificationState> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}

@override@JsonKey() final  String staffNote;
@override@JsonKey() final  bool isLoading;

/// Create a copy of ImportVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ImportVerificationStateCopyWith<_ImportVerificationState> get copyWith => __$ImportVerificationStateCopyWithImpl<_ImportVerificationState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ImportVerificationState&&(identical(other.ticketId, ticketId) || other.ticketId == ticketId)&&const DeepCollectionEquality().equals(other._products, _products)&&(identical(other.staffNote, staffNote) || other.staffNote == staffNote)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading));
}


@override
int get hashCode => Object.hash(runtimeType,ticketId,const DeepCollectionEquality().hash(_products),staffNote,isLoading);

@override
String toString() {
  return 'ImportVerificationState(ticketId: $ticketId, products: $products, staffNote: $staffNote, isLoading: $isLoading)';
}


}

/// @nodoc
abstract mixin class _$ImportVerificationStateCopyWith<$Res> implements $ImportVerificationStateCopyWith<$Res> {
  factory _$ImportVerificationStateCopyWith(_ImportVerificationState value, $Res Function(_ImportVerificationState) _then) = __$ImportVerificationStateCopyWithImpl;
@override @useResult
$Res call({
 String? ticketId, List<ProductVerificationState> products, String staffNote, bool isLoading
});




}
/// @nodoc
class __$ImportVerificationStateCopyWithImpl<$Res>
    implements _$ImportVerificationStateCopyWith<$Res> {
  __$ImportVerificationStateCopyWithImpl(this._self, this._then);

  final _ImportVerificationState _self;
  final $Res Function(_ImportVerificationState) _then;

/// Create a copy of ImportVerificationState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ticketId = freezed,Object? products = null,Object? staffNote = null,Object? isLoading = null,}) {
  return _then(_ImportVerificationState(
ticketId: freezed == ticketId ? _self.ticketId : ticketId // ignore: cast_nullable_to_non_nullable
as String?,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductVerificationState>,staffNote: null == staffNote ? _self.staffNote : staffNote // ignore: cast_nullable_to_non_nullable
as String,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
