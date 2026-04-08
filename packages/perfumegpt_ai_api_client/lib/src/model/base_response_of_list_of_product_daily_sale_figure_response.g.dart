// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_of_list_of_product_daily_sale_figure_response.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$BaseResponseOfListOfProductDailySaleFigureResponseCWProxy {
  BaseResponseOfListOfProductDailySaleFigureResponse payload(
    List<ProductDailySaleFigureResponse>? payload,
  );

  BaseResponseOfListOfProductDailySaleFigureResponse success(bool? success);

  BaseResponseOfListOfProductDailySaleFigureResponse message(String? message);

  BaseResponseOfListOfProductDailySaleFigureResponse errors(
    List<String>? errors,
  );

  BaseResponseOfListOfProductDailySaleFigureResponse errorType(int? errorType);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfProductDailySaleFigureResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfProductDailySaleFigureResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfProductDailySaleFigureResponse call({
    List<ProductDailySaleFigureResponse>? payload,
    bool? success,
    String? message,
    List<String>? errors,
    int? errorType,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfBaseResponseOfListOfProductDailySaleFigureResponse.copyWith(...)` or call `instanceOfBaseResponseOfListOfProductDailySaleFigureResponse.copyWith.fieldName(value)` for a single field.
class _$BaseResponseOfListOfProductDailySaleFigureResponseCWProxyImpl
    implements _$BaseResponseOfListOfProductDailySaleFigureResponseCWProxy {
  const _$BaseResponseOfListOfProductDailySaleFigureResponseCWProxyImpl(
    this._value,
  );

  final BaseResponseOfListOfProductDailySaleFigureResponse _value;

  @override
  BaseResponseOfListOfProductDailySaleFigureResponse payload(
    List<ProductDailySaleFigureResponse>? payload,
  ) => call(payload: payload);

  @override
  BaseResponseOfListOfProductDailySaleFigureResponse success(bool? success) =>
      call(success: success);

  @override
  BaseResponseOfListOfProductDailySaleFigureResponse message(String? message) =>
      call(message: message);

  @override
  BaseResponseOfListOfProductDailySaleFigureResponse errors(
    List<String>? errors,
  ) => call(errors: errors);

  @override
  BaseResponseOfListOfProductDailySaleFigureResponse errorType(
    int? errorType,
  ) => call(errorType: errorType);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `BaseResponseOfListOfProductDailySaleFigureResponse(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// BaseResponseOfListOfProductDailySaleFigureResponse(...).copyWith(id: 12, name: "My name")
  /// ```
  BaseResponseOfListOfProductDailySaleFigureResponse call({
    Object? payload = const $CopyWithPlaceholder(),
    Object? success = const $CopyWithPlaceholder(),
    Object? message = const $CopyWithPlaceholder(),
    Object? errors = const $CopyWithPlaceholder(),
    Object? errorType = const $CopyWithPlaceholder(),
  }) {
    return BaseResponseOfListOfProductDailySaleFigureResponse(
      payload: payload == const $CopyWithPlaceholder()
          ? _value.payload
          // ignore: cast_nullable_to_non_nullable
          : payload as List<ProductDailySaleFigureResponse>?,
      success: success == const $CopyWithPlaceholder()
          ? _value.success
          // ignore: cast_nullable_to_non_nullable
          : success as bool?,
      message: message == const $CopyWithPlaceholder()
          ? _value.message
          // ignore: cast_nullable_to_non_nullable
          : message as String?,
      errors: errors == const $CopyWithPlaceholder()
          ? _value.errors
          // ignore: cast_nullable_to_non_nullable
          : errors as List<String>?,
      errorType: errorType == const $CopyWithPlaceholder()
          ? _value.errorType
          // ignore: cast_nullable_to_non_nullable
          : errorType as int?,
    );
  }
}

extension $BaseResponseOfListOfProductDailySaleFigureResponseCopyWith
    on BaseResponseOfListOfProductDailySaleFigureResponse {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfBaseResponseOfListOfProductDailySaleFigureResponse.copyWith(...)` or `instanceOfBaseResponseOfListOfProductDailySaleFigureResponse.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$BaseResponseOfListOfProductDailySaleFigureResponseCWProxy get copyWith =>
      _$BaseResponseOfListOfProductDailySaleFigureResponseCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponseOfListOfProductDailySaleFigureResponse
_$BaseResponseOfListOfProductDailySaleFigureResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate(
  'BaseResponseOfListOfProductDailySaleFigureResponse',
  json,
  ($checkedConvert) {
    final val = BaseResponseOfListOfProductDailySaleFigureResponse(
      payload: $checkedConvert(
        'payload',
        (v) => (v as List<dynamic>?)
            ?.map(
              (e) => ProductDailySaleFigureResponse.fromJson(
                e as Map<String, dynamic>,
              ),
            )
            .toList(),
      ),
      success: $checkedConvert('success', (v) => v as bool?),
      message: $checkedConvert('message', (v) => v as String?),
      errors: $checkedConvert(
        'errors',
        (v) => (v as List<dynamic>?)?.map((e) => e as String).toList(),
      ),
      errorType: $checkedConvert('errorType', (v) => (v as num?)?.toInt()),
    );
    return val;
  },
);

Map<String, dynamic> _$BaseResponseOfListOfProductDailySaleFigureResponseToJson(
  BaseResponseOfListOfProductDailySaleFigureResponse instance,
) => <String, dynamic>{
  'payload': ?instance.payload?.map((e) => e.toJson()).toList(),
  'success': ?instance.success,
  'message': ?instance.message,
  'errors': ?instance.errors,
  'errorType': ?instance.errorType,
};
