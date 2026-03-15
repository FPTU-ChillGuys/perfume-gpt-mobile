//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:perfumegpt_api_client/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:perfumegpt_api_client/src/model/base_response_of_get_cart_items_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_get_cart_total_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_ofstring.dart';

class CartApi {

  final Dio _dio;

  const CartApi(this._dio);

  /// apiCartClearDelete
  /// 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseResponseOfstring] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseResponseOfstring>> apiCartClearDelete({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/cart/clear';
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseResponseOfstring? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<BaseResponseOfstring, BaseResponseOfstring>(rawData, 'BaseResponseOfstring', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseResponseOfstring>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiCartItemsGet
  /// 
  ///
  /// Parameters:
  /// * [itemIds] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseResponseOfGetCartItemsResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseResponseOfGetCartItemsResponse>> apiCartItemsGet({ 
    List<String>? itemIds,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/cart/items';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (itemIds != null) r'itemIds': itemIds,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseResponseOfGetCartItemsResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<BaseResponseOfGetCartItemsResponse, BaseResponseOfGetCartItemsResponse>(rawData, 'BaseResponseOfGetCartItemsResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseResponseOfGetCartItemsResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// apiCartTotalGet
  /// 
  ///
  /// Parameters:
  /// * [voucherCode] 
  /// * [itemIds] 
  /// * [savedAddressId] 
  /// * [recipientPeriodFullName] 
  /// * [recipientPeriodPhone] 
  /// * [recipientPeriodDistrictId] 
  /// * [recipientPeriodDistrictName] 
  /// * [recipientPeriodWardCode] 
  /// * [recipientPeriodWardName] 
  /// * [recipientPeriodProvinceId] 
  /// * [recipientPeriodProvinceName] 
  /// * [recipientPeriodFullAddress] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseResponseOfGetCartTotalResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseResponseOfGetCartTotalResponse>> apiCartTotalGet({ 
    String? voucherCode,
    List<String>? itemIds,
    String? savedAddressId,
    String? recipientPeriodFullName,
    String? recipientPeriodPhone,
    int? recipientPeriodDistrictId,
    String? recipientPeriodDistrictName,
    String? recipientPeriodWardCode,
    String? recipientPeriodWardName,
    int? recipientPeriodProvinceId,
    String? recipientPeriodProvinceName,
    String? recipientPeriodFullAddress,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/cart/total';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'Bearer',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (voucherCode != null) r'VoucherCode': voucherCode,
      if (itemIds != null) r'ItemIds': itemIds,
      if (savedAddressId != null) r'SavedAddressId': savedAddressId,
      if (recipientPeriodFullName != null) r'Recipient.FullName': recipientPeriodFullName,
      if (recipientPeriodPhone != null) r'Recipient.Phone': recipientPeriodPhone,
      if (recipientPeriodDistrictId != null) r'Recipient.DistrictId': recipientPeriodDistrictId,
      if (recipientPeriodDistrictName != null) r'Recipient.DistrictName': recipientPeriodDistrictName,
      if (recipientPeriodWardCode != null) r'Recipient.WardCode': recipientPeriodWardCode,
      if (recipientPeriodWardName != null) r'Recipient.WardName': recipientPeriodWardName,
      if (recipientPeriodProvinceId != null) r'Recipient.ProvinceId': recipientPeriodProvinceId,
      if (recipientPeriodProvinceName != null) r'Recipient.ProvinceName': recipientPeriodProvinceName,
      if (recipientPeriodFullAddress != null) r'Recipient.FullAddress': recipientPeriodFullAddress,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseResponseOfGetCartTotalResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<BaseResponseOfGetCartTotalResponse, BaseResponseOfGetCartTotalResponse>(rawData, 'BaseResponseOfGetCartTotalResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseResponseOfGetCartTotalResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
