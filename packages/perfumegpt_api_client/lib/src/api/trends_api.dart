//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:perfumegpt_api_client/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:perfumegpt_api_client/src/model/all_user_log_request.dart';
import 'package:perfumegpt_api_client/src/model/email_controller_send_email200_response.dart';
import 'package:perfumegpt_api_client/src/model/trend_controller_get_product_from_trend_caching200_response.dart';
import 'package:perfumegpt_api_client/src/model/trend_controller_get_product_trend_job_result200_response.dart';
import 'package:perfumegpt_api_client/src/model/trend_controller_summarize_logs_structured200_response.dart';

class TrendsApi {

  final Dio _dio;

  const TrendsApi(this._dio);

  /// Khởi tạo job để lấy product từ xu hướng
  /// 
  ///
  /// Parameters:
  /// * [endDate] - Ngày kết thúc
  /// * [forceRefresh] - Bắt buộc làm mới cache
  /// * [period] - Khoảng thời gian lọc
  /// * [startDate] - Ngày bắt đầu
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EmailControllerSendEmail200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EmailControllerSendEmail200Response>> trendControllerCreateProductTrendJob({ 
    required DateTime endDate,
    bool forceRefresh = false,
    String? period,
    DateTime? startDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/trends/product/job';
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
      if (period != null) r'period': period,
      r'endDate': endDate,
      if (startDate != null) r'startDate': startDate,
      r'forceRefresh': forceRefresh,
    };

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
_responseData = rawData == null ? null : deserialize<EmailControllerSendEmail200Response, EmailControllerSendEmail200Response>(rawData, 'EmailControllerSendEmail200Response', growable: true);

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

  /// Lấy product từ xu hướng người dùng (caching)
  /// 
  ///
  /// Parameters:
  /// * [endDate] - Ngày kết thúc
  /// * [allUserLogRequest] 
  /// * [period] - Khoảng thời gian lọc
  /// * [startDate] - Ngày bắt đầu
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TrendControllerGetProductFromTrendCaching200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TrendControllerGetProductFromTrendCaching200Response>> trendControllerGetProductFromTrendCaching({ 
    required DateTime endDate,
    required AllUserLogRequest allUserLogRequest,
    String? period,
    DateTime? startDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/trends/product/caching';
    final _options = Options(
      method: r'GET',
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

    final _queryParameters = <String, dynamic>{
      if (period != null) r'period': period,
      r'endDate': endDate,
      if (startDate != null) r'startDate': startDate,
    };

    dynamic _bodyData;

    try {
_bodyData=jsonEncode(allUserLogRequest);
    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
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
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TrendControllerGetProductFromTrendCaching200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TrendControllerGetProductFromTrendCaching200Response, TrendControllerGetProductFromTrendCaching200Response>(rawData, 'TrendControllerGetProductFromTrendCaching200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TrendControllerGetProductFromTrendCaching200Response>(
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

  /// Lấy product từ xu hướng người dùng
  /// 
  ///
  /// Parameters:
  /// * [endDate] - Ngày kết thúc
  /// * [allUserLogRequest] 
  /// * [period] - Khoảng thời gian lọc
  /// * [startDate] - Ngày bắt đầu
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TrendControllerGetProductFromTrendCaching200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TrendControllerGetProductFromTrendCaching200Response>> trendControllerGetProductNoCaching({ 
    required DateTime endDate,
    required AllUserLogRequest allUserLogRequest,
    String? period,
    DateTime? startDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/trends/product';
    final _options = Options(
      method: r'GET',
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

    final _queryParameters = <String, dynamic>{
      if (period != null) r'period': period,
      r'endDate': endDate,
      if (startDate != null) r'startDate': startDate,
    };

    dynamic _bodyData;

    try {
_bodyData=jsonEncode(allUserLogRequest);
    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
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
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TrendControllerGetProductFromTrendCaching200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TrendControllerGetProductFromTrendCaching200Response, TrendControllerGetProductFromTrendCaching200Response>(rawData, 'TrendControllerGetProductFromTrendCaching200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TrendControllerGetProductFromTrendCaching200Response>(
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

  /// Kiểm tra trạng thái hoàn thành của job
  /// 
  ///
  /// Parameters:
  /// * [jobId] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TrendControllerGetProductTrendJobResult200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TrendControllerGetProductTrendJobResult200Response>> trendControllerGetProductTrendJobResult({ 
    required String jobId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/trends/product/job/{jobId}'.replaceAll('{' r'jobId' '}', jobId.toString());
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

  /// Dự đoán xu hướng dựa trên tổng hợp log người dùng
  /// 
  ///
  /// Parameters:
  /// * [endDate] - Ngày kết thúc
  /// * [allUserLogRequest] 
  /// * [period] - Khoảng thời gian lọc
  /// * [startDate] - Ngày bắt đầu
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EmailControllerSendEmail200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EmailControllerSendEmail200Response>> trendControllerSummarizeLogs({ 
    required DateTime endDate,
    required AllUserLogRequest allUserLogRequest,
    String? period,
    DateTime? startDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/trends/summary';
    final _options = Options(
      method: r'GET',
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

    final _queryParameters = <String, dynamic>{
      if (period != null) r'period': period,
      r'endDate': endDate,
      if (startDate != null) r'startDate': startDate,
    };

    dynamic _bodyData;

    try {
_bodyData=jsonEncode(allUserLogRequest);
    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
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
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    EmailControllerSendEmail200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<EmailControllerSendEmail200Response, EmailControllerSendEmail200Response>(rawData, 'EmailControllerSendEmail200Response', growable: true);

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

  /// Dự đoán xu hướng có cấu trúc với metadata
  /// 
  ///
  /// Parameters:
  /// * [endDate] - Ngày kết thúc
  /// * [allUserLogRequest] 
  /// * [period] - Khoảng thời gian lọc
  /// * [startDate] - Ngày bắt đầu
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TrendControllerSummarizeLogsStructured200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TrendControllerSummarizeLogsStructured200Response>> trendControllerSummarizeLogsStructured({ 
    required DateTime endDate,
    required AllUserLogRequest allUserLogRequest,
    String? period,
    DateTime? startDate,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/trends/summary/structured';
    final _options = Options(
      method: r'GET',
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

    final _queryParameters = <String, dynamic>{
      if (period != null) r'period': period,
      r'endDate': endDate,
      if (startDate != null) r'startDate': startDate,
    };

    dynamic _bodyData;

    try {
_bodyData=jsonEncode(allUserLogRequest);
    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
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
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    TrendControllerSummarizeLogsStructured200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TrendControllerSummarizeLogsStructured200Response, TrendControllerSummarizeLogsStructured200Response>(rawData, 'TrendControllerSummarizeLogsStructured200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TrendControllerSummarizeLogsStructured200Response>(
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
