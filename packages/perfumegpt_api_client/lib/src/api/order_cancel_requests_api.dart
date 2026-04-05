//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:perfumegpt_api_client/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_order_cancel_request_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_ofstring.dart';
import 'package:perfumegpt_api_client/src/model/cancel_request_status.dart';
import 'package:perfumegpt_api_client/src/model/process_cancel_request.dart';

class OrderCancelRequestsApi {
  final Dio _dio;

  const OrderCancelRequestsApi(this._dio);

  /// apiOrdercancelrequestsGet
  ///
  ///
  /// Parameters:
  /// * [status]
  /// * [isRefundRequired]
  /// * [pageNumber]
  /// * [pageSize]
  /// * [sortBy]
  /// * [sortOrder]
  /// * [isDescending]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseResponseOfPagedResultOfOrderCancelRequestResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseResponseOfPagedResultOfOrderCancelRequestResponse>>
  apiOrdercancelrequestsGet({
    CancelRequestStatus? status,
    bool? isRefundRequired,
    int? pageNumber,
    int? pageSize,
    String? sortBy,
    String? sortOrder,
    bool? isDescending,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/ordercancelrequests';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (status != null) r'Status': status,
      if (isRefundRequired != null) r'IsRefundRequired': isRefundRequired,
      if (pageNumber != null) r'PageNumber': pageNumber,
      if (pageSize != null) r'PageSize': pageSize,
      if (sortBy != null) r'SortBy': sortBy,
      if (sortOrder != null) r'SortOrder': sortOrder,
      if (isDescending != null) r'IsDescending': isDescending,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseResponseOfPagedResultOfOrderCancelRequestResponse? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              BaseResponseOfPagedResultOfOrderCancelRequestResponse,
              BaseResponseOfPagedResultOfOrderCancelRequestResponse
            >(
              rawData,
              'BaseResponseOfPagedResultOfOrderCancelRequestResponse',
              growable: true,
            );
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseResponseOfPagedResultOfOrderCancelRequestResponse>(
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

  /// apiOrdercancelrequestsIdProcessPost
  ///
  ///
  /// Parameters:
  /// * [id]
  /// * [processCancelRequest]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BaseResponseOfstring] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseResponseOfstring>> apiOrdercancelrequestsIdProcessPost({
    required String id,
    required ProcessCancelRequest processCancelRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/api/ordercancelrequests/{id}/process'.replaceAll(
      '{'
      r'id'
      '}',
      id.toString(),
    );
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'Bearer'},
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(processCancelRequest);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _options.compose(_dio.options, _path),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BaseResponseOfstring? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<BaseResponseOfstring, BaseResponseOfstring>(
              rawData,
              'BaseResponseOfstring',
              growable: true,
            );
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
}
