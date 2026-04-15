//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:perfumegpt_api_client/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:perfumegpt_api_client/src/model/ai_acceptance_controller_create_pending_response_acceptance200_response.dart';
import 'package:perfumegpt_api_client/src/model/ai_acceptance_controller_get_ai_acceptance_rate200_response.dart';
import 'package:perfumegpt_api_client/src/model/create_response_ai_acceptance_request.dart';
import 'package:perfumegpt_api_client/src/model/trend_controller_get_product_trend_job_result200_response.dart';

class AIAcceptanceApi {

  final Dio _dio;

  const AIAcceptanceApi(this._dio);

  /// Đánh dấu click chấp nhận theo aiAcceptanceId
  /// 
  ///
  /// Parameters:
  /// * [aiAcceptanceId] - ID bản ghi AI acceptance
  /// * [userId] - ID user để kiểm tra quyền sở hữu (optional)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerCreatePendingResponseAcceptance200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>> aIAcceptanceControllerClickAIAcceptance({ 
    required String aiAcceptanceId,
    String? userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/click/{aiAcceptanceId}'.replaceAll('{' r'aiAcceptanceId' '}', aiAcceptanceId.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (userId != null) r'userId': userId,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AIAcceptanceControllerCreatePendingResponseAcceptance200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<AIAcceptanceControllerCreatePendingResponseAcceptance200Response, AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(rawData, 'AIAcceptanceControllerCreatePendingResponseAcceptance200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(
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

  /// Tạo bản ghi chấp nhận AI mới
  /// 
  ///
  /// Parameters:
  /// * [userId] - ID của người dùng
  /// * [status] - Trạng thái chấp nhận (true/false)
  /// * [cartItemId] - ID cart item liên quan (tùy chọn)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerCreatePendingResponseAcceptance200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>> aIAcceptanceControllerCreateAIAcceptanceRecord({ 
    required String userId,
    required String status,
    String? cartItemId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/record/{userId}'.replaceAll('{' r'userId' '}', userId.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (cartItemId != null) r'cartItemId': cartItemId,
      r'status': status,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AIAcceptanceControllerCreatePendingResponseAcceptance200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<AIAcceptanceControllerCreatePendingResponseAcceptance200Response, AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(rawData, 'AIAcceptanceControllerCreatePendingResponseAcceptance200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(
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

  /// Tạo AI acceptance pending theo response-level (backend-first)
  /// 
  ///
  /// Parameters:
  /// * [createResponseAIAcceptanceRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerCreatePendingResponseAcceptance200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>> aIAcceptanceControllerCreatePendingResponseAcceptance({ 
    required CreateResponseAIAcceptanceRequest createResponseAIAcceptanceRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/response';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
_bodyData=jsonEncode(createResponseAIAcceptanceRequest);
    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
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

    AIAcceptanceControllerCreatePendingResponseAcceptance200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<AIAcceptanceControllerCreatePendingResponseAcceptance200Response, AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(rawData, 'AIAcceptanceControllerCreatePendingResponseAcceptance200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(
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

  /// Lấy metrics acceptance theo context/user (accepted/pending/no-click)
  /// 
  ///
  /// Parameters:
  /// * [contextType] 
  /// * [userId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TrendControllerGetProductTrendJobResult200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TrendControllerGetProductTrendJobResult200Response>> aIAcceptanceControllerGetAIAcceptanceMetrics({ 
    String? contextType,
    String? userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/metrics';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (contextType != null) r'contextType': contextType,
      if (userId != null) r'userId': userId,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TrendControllerGetProductTrendJobResult200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TrendControllerGetProductTrendJobResult200Response, TrendControllerGetProductTrendJobResult200Response>(rawData, 'TrendControllerGetProductTrendJobResult200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TrendControllerGetProductTrendJobResult200Response>(
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

  /// Lấy tỷ lệ chấp nhận AI theo trạng thái
  /// 
  ///
  /// Parameters:
  /// * [isAccepted] - Trạng thái chấp nhận (true/false)
  /// * [contextType] - Lọc theo ngữ cảnh
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerGetAIAcceptanceRate200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AIAcceptanceControllerGetAIAcceptanceRate200Response>> aIAcceptanceControllerGetAIAcceptanceRate({ 
    required String isAccepted,
    String? contextType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/rate';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'isAccepted': isAccepted,
      if (contextType != null) r'contextType': contextType,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AIAcceptanceControllerGetAIAcceptanceRate200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<AIAcceptanceControllerGetAIAcceptanceRate200Response, AIAcceptanceControllerGetAIAcceptanceRate200Response>(rawData, 'AIAcceptanceControllerGetAIAcceptanceRate200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AIAcceptanceControllerGetAIAcceptanceRate200Response>(
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

  /// Lấy tỷ lệ chấp nhận AI theo user ID
  /// 
  ///
  /// Parameters:
  /// * [userId] - ID của người dùng
  /// * [contextType] - Lọc theo ngữ cảnh
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerGetAIAcceptanceRate200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AIAcceptanceControllerGetAIAcceptanceRate200Response>> aIAcceptanceControllerGetAIAcceptanceRateByUserId({ 
    required String userId,
    String? contextType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/rate/{userId}'.replaceAll('{' r'userId' '}', userId.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (contextType != null) r'contextType': contextType,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AIAcceptanceControllerGetAIAcceptanceRate200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<AIAcceptanceControllerGetAIAcceptanceRate200Response, AIAcceptanceControllerGetAIAcceptanceRate200Response>(rawData, 'AIAcceptanceControllerGetAIAcceptanceRate200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AIAcceptanceControllerGetAIAcceptanceRate200Response>(
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

  /// Lấy trạng thái chấp nhận AI theo user ID
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
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerCreatePendingResponseAcceptance200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>> aIAcceptanceControllerGetAIAcceptanceStatus({ 
    required String userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/status/{userId}'.replaceAll('{' r'userId' '}', userId.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
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

    AIAcceptanceControllerCreatePendingResponseAcceptance200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<AIAcceptanceControllerCreatePendingResponseAcceptance200Response, AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(rawData, 'AIAcceptanceControllerCreatePendingResponseAcceptance200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(
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

  /// Lấy trạng thái chấp nhận AI của tất cả người dùng
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
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerCreatePendingResponseAcceptance200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>> aIAcceptanceControllerGetAllAIAcceptanceStatus({ 
    required Object userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/status/all'.replaceAll('{' r'userId' '}', userId.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
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

    AIAcceptanceControllerCreatePendingResponseAcceptance200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<AIAcceptanceControllerCreatePendingResponseAcceptance200Response, AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(rawData, 'AIAcceptanceControllerCreatePendingResponseAcceptance200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(
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

  /// Lấy trạng thái AI acceptance có thể hiển thị (accepted ngay, false sau 24h)
  /// 
  ///
  /// Parameters:
  /// * [userId] - ID của người dùng
  /// * [contextType] - Lọc theo ngữ cảnh
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerCreatePendingResponseAcceptance200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>> aIAcceptanceControllerGetVisibleAIAcceptanceStatus({ 
    required String userId,
    String? contextType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/visible/{userId}'.replaceAll('{' r'userId' '}', userId.toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (contextType != null) r'contextType': contextType,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AIAcceptanceControllerCreatePendingResponseAcceptance200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<AIAcceptanceControllerCreatePendingResponseAcceptance200Response, AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(rawData, 'AIAcceptanceControllerCreatePendingResponseAcceptance200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(
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

  /// Cập nhật trạng thái chấp nhận AI theo ID
  /// 
  ///
  /// Parameters:
  /// * [id] - ID bản ghi AI acceptance
  /// * [status] - Trạng thái (true/false)
  /// * [cartItemId] - ID cart item liên quan (tùy chọn)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerCreatePendingResponseAcceptance200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>> aIAcceptanceControllerUpdateAIAcceptanceData({ 
    required String id,
    required String status,
    String? cartItemId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/{id}'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (cartItemId != null) r'cartItemId': cartItemId,
      r'status': status,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AIAcceptanceControllerCreatePendingResponseAcceptance200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<AIAcceptanceControllerCreatePendingResponseAcceptance200Response, AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(rawData, 'AIAcceptanceControllerCreatePendingResponseAcceptance200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(
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

  /// Cập nhật trạng thái chấp nhận AI theo ID người dùng và ID cart item
  /// 
  ///
  /// Parameters:
  /// * [userId] - ID của người dùng
  /// * [status] - Trạng thái (true/false)
  /// * [cartItemId] - ID cart item liên quan (tùy chọn)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerCreatePendingResponseAcceptance200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>> aIAcceptanceControllerUpdateAIAcceptanceDataByUserIdAndCartId({ 
    required String userId,
    required String status,
    String? cartItemId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/user/{userId}'.replaceAll('{' r'userId' '}', userId.toString());
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (cartItemId != null) r'cartItemId': cartItemId,
      r'status': status,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AIAcceptanceControllerCreatePendingResponseAcceptance200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<AIAcceptanceControllerCreatePendingResponseAcceptance200Response, AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(rawData, 'AIAcceptanceControllerCreatePendingResponseAcceptance200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>(
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
