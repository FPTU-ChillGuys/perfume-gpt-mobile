//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:perfumegpt_ai_api_client/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:perfumegpt_ai_api_client/src/model/email_controller_send_email200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/order_controller_get_all_orders200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/order_controller_get_structured_ai_order_summary200_response.dart';

class OrdersApi {
  final Dio _dio;

  const OrdersApi(this._dio);

  /// Tạo báo cáo tóm tắt đơn hàng bằng AI
  ///
  ///
  /// Parameters:
  /// * [userId] - ID của người dùng
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EmailControllerSendEmail200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EmailControllerSendEmail200Response>>
  orderControllerGetAIOrderSummary({
    required String userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/orders/summary/ai';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'jwt'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{r'userId': userId};

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    EmailControllerSendEmail200Response? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              EmailControllerSendEmail200Response,
              EmailControllerSendEmail200Response
            >(rawData, 'EmailControllerSendEmail200Response', growable: true);
    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EmailControllerSendEmail200Response>(
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

  /// Lấy danh sách tất cả đơn hàng
  ///
  ///
  /// Parameters:
  /// * [pageNumber] - Số trang
  /// * [pageSize] - Số bản ghi mỗi trang
  /// * [sortOrder] - Thứ tự sắp xếp
  /// * [isDescending] - Sắp xếp giảm dần
  /// * [status] - Trạng thái đơn hàng
  /// * [type] - Loại đơn hàng
  /// * [paymentStatus] - Trạng thái thanh toán
  /// * [fromDate] - Ngày bắt đầu (ISO 8601)
  /// * [toDate] - Ngày kết thúc (ISO 8601)
  /// * [searchTerm] - Từ khóa tìm kiếm
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OrderControllerGetAllOrders200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OrderControllerGetAllOrders200Response>>
  orderControllerGetAllOrders({
    num pageNumber = 1,
    num pageSize = 10,
    String sortOrder = 'asc',
    bool isDescending = false,
    String? status,
    String? type,
    String? paymentStatus,
    String? fromDate,
    String? toDate,
    String? searchTerm,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/orders';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'jwt'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'PageNumber': pageNumber,
      r'PageSize': pageSize,
      r'SortOrder': sortOrder,
      r'IsDescending': isDescending,
      if (status != null) r'status': status,
      if (type != null) r'type': type,
      if (paymentStatus != null) r'paymentStatus': paymentStatus,
      if (fromDate != null) r'fromDate': fromDate,
      if (toDate != null) r'toDate': toDate,
      if (searchTerm != null) r'searchTerm': searchTerm,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    OrderControllerGetAllOrders200Response? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              OrderControllerGetAllOrders200Response,
              OrderControllerGetAllOrders200Response
            >(
              rawData,
              'OrderControllerGetAllOrders200Response',
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

    return Response<OrderControllerGetAllOrders200Response>(
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

  /// Lấy đơn hàng theo user ID
  ///
  ///
  /// Parameters:
  /// * [userId] - ID của người dùng
  /// * [pageNumber] - Số trang
  /// * [pageSize] - Số bản ghi mỗi trang
  /// * [sortOrder] - Thứ tự sắp xếp
  /// * [isDescending] - Sắp xếp giảm dần
  /// * [status] - Trạng thái đơn hàng
  /// * [type] - Loại đơn hàng
  /// * [paymentStatus] - Trạng thái thanh toán
  /// * [fromDate] - Ngày bắt đầu (ISO 8601)
  /// * [toDate] - Ngày kết thúc (ISO 8601)
  /// * [searchTerm] - Từ khóa tìm kiếm
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OrderControllerGetAllOrders200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OrderControllerGetAllOrders200Response>>
  orderControllerGetOrdersByUserId({
    required String userId,
    num pageNumber = 1,
    num pageSize = 10,
    String sortOrder = 'asc',
    bool isDescending = false,
    String? status,
    String? type,
    String? paymentStatus,
    String? fromDate,
    String? toDate,
    String? searchTerm,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/orders/user/{userId}'.replaceAll(
      '{'
      r'userId'
      '}',
      userId.toString(),
    );
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'jwt'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'PageNumber': pageNumber,
      r'PageSize': pageSize,
      r'SortOrder': sortOrder,
      r'IsDescending': isDescending,
      if (status != null) r'status': status,
      if (type != null) r'type': type,
      if (paymentStatus != null) r'paymentStatus': paymentStatus,
      if (fromDate != null) r'fromDate': fromDate,
      if (toDate != null) r'toDate': toDate,
      if (searchTerm != null) r'searchTerm': searchTerm,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    OrderControllerGetAllOrders200Response? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              OrderControllerGetAllOrders200Response,
              OrderControllerGetAllOrders200Response
            >(
              rawData,
              'OrderControllerGetAllOrders200Response',
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

    return Response<OrderControllerGetAllOrders200Response>(
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

  /// Tạo báo cáo tóm tắt đơn hàng AI có cấu trúc
  ///
  ///
  /// Parameters:
  /// * [userId] - ID của người dùng
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [OrderControllerGetStructuredAIOrderSummary200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<OrderControllerGetStructuredAIOrderSummary200Response>>
  orderControllerGetStructuredAIOrderSummary({
    required String userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/orders/summary/ai/structured';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {'type': 'http', 'scheme': 'bearer', 'name': 'jwt'},
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{r'userId': userId};

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    OrderControllerGetStructuredAIOrderSummary200Response? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              OrderControllerGetStructuredAIOrderSummary200Response,
              OrderControllerGetStructuredAIOrderSummary200Response
            >(
              rawData,
              'OrderControllerGetStructuredAIOrderSummary200Response',
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

    return Response<OrderControllerGetStructuredAIOrderSummary200Response>(
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
