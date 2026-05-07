//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:perfumegpt_ai_api_client/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:perfumegpt_ai_api_client/src/model/ai_acceptance_controller_create_pending_response_acceptance200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/ai_acceptance_controller_get_ai_acceptance_rate200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/ai_acceptance_controller_get_all_ai_acceptance_status200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/create_response_ai_acceptance_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_reorder_questions200_response.dart';

class AIAcceptanceApi {
  final Dio _dio;

  const AIAcceptanceApi(this._dio);

  /// Đánh dấu click chấp nhận theo aiAcceptanceId
  ///
  ///
  /// Parameters:
  /// * [aiAcceptanceId] - ID bản ghi AI acceptance
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerCreatePendingResponseAcceptance200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<
    Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>
  >
  aIAcceptanceControllerClickAIAcceptance({
    required String aiAcceptanceId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/click/{aiAcceptanceId}'.replaceAll(
      '{'
      r'aiAcceptanceId'
      '}',
      aiAcceptanceId.toString(),
    );
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AIAcceptanceControllerCreatePendingResponseAcceptance200Response?
    _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              AIAcceptanceControllerCreatePendingResponseAcceptance200Response,
              AIAcceptanceControllerCreatePendingResponseAcceptance200Response
            >(
              rawData,
              'AIAcceptanceControllerCreatePendingResponseAcceptance200Response',
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

    return Response<
      AIAcceptanceControllerCreatePendingResponseAcceptance200Response
    >(
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
  Future<
    Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>
  >
  aIAcceptanceControllerCreatePendingResponseAcceptance({
    required CreateResponseAIAcceptanceRequest
    createResponseAIAcceptanceRequest,
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
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(createResponseAIAcceptanceRequest);
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

    AIAcceptanceControllerCreatePendingResponseAcceptance200Response?
    _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              AIAcceptanceControllerCreatePendingResponseAcceptance200Response,
              AIAcceptanceControllerCreatePendingResponseAcceptance200Response
            >(
              rawData,
              'AIAcceptanceControllerCreatePendingResponseAcceptance200Response',
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

    return Response<
      AIAcceptanceControllerCreatePendingResponseAcceptance200Response
    >(
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

  /// Lấy metrics acceptance theo context (accepted/pending/no-click)
  ///
  ///
  /// Parameters:
  /// * [contextType]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SurveyControllerReorderQuestions200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SurveyControllerReorderQuestions200Response>>
  aIAcceptanceControllerGetAIAcceptanceMetrics({
    String? contextType,
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
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
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

    SurveyControllerReorderQuestions200Response? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              SurveyControllerReorderQuestions200Response,
              SurveyControllerReorderQuestions200Response
            >(
              rawData,
              'SurveyControllerReorderQuestions200Response',
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

    return Response<SurveyControllerReorderQuestions200Response>(
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
  Future<Response<AIAcceptanceControllerGetAIAcceptanceRate200Response>>
  aIAcceptanceControllerGetAIAcceptanceRate({
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
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
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
      _responseData = rawData == null
          ? null
          : deserialize<
              AIAcceptanceControllerGetAIAcceptanceRate200Response,
              AIAcceptanceControllerGetAIAcceptanceRate200Response
            >(
              rawData,
              'AIAcceptanceControllerGetAIAcceptanceRate200Response',
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

  /// Lấy 3 tỉ lệ acceptance (chấp nhận / từ chối / chưa xác định)
  ///
  ///
  /// Parameters:
  /// * [contextType]
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SurveyControllerReorderQuestions200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SurveyControllerReorderQuestions200Response>>
  aIAcceptanceControllerGetAIAcceptanceRates({
    String? contextType,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/rates';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
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

    SurveyControllerReorderQuestions200Response? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              SurveyControllerReorderQuestions200Response,
              SurveyControllerReorderQuestions200Response
            >(
              rawData,
              'SurveyControllerReorderQuestions200Response',
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

    return Response<SurveyControllerReorderQuestions200Response>(
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

  /// Lấy trạng thái chấp nhận AI của tất cả gợi ý
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
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerGetAllAIAcceptanceStatus200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AIAcceptanceControllerGetAllAIAcceptanceStatus200Response>>
  aIAcceptanceControllerGetAllAIAcceptanceStatus({
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/status/all';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AIAcceptanceControllerGetAllAIAcceptanceStatus200Response? _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              AIAcceptanceControllerGetAllAIAcceptanceStatus200Response,
              AIAcceptanceControllerGetAllAIAcceptanceStatus200Response
            >(
              rawData,
              'AIAcceptanceControllerGetAllAIAcceptanceStatus200Response',
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

    return Response<AIAcceptanceControllerGetAllAIAcceptanceStatus200Response>(
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
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AIAcceptanceControllerCreatePendingResponseAcceptance200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<
    Response<AIAcceptanceControllerCreatePendingResponseAcceptance200Response>
  >
  aIAcceptanceControllerUpdateAIAcceptanceData({
    required String id,
    required String status,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ai-acceptance/{id}'.replaceAll(
      '{'
      r'id'
      '}',
      id.toString(),
    );
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{...?headers},
      extra: <String, dynamic>{'secure': <Map<String, String>>[], ...?extra},
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{r'status': status};

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    AIAcceptanceControllerCreatePendingResponseAcceptance200Response?
    _responseData;

    try {
      final rawData = _response.data;
      _responseData = rawData == null
          ? null
          : deserialize<
              AIAcceptanceControllerCreatePendingResponseAcceptance200Response,
              AIAcceptanceControllerCreatePendingResponseAcceptance200Response
            >(
              rawData,
              'AIAcceptanceControllerCreatePendingResponseAcceptance200Response',
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

    return Response<
      AIAcceptanceControllerCreatePendingResponseAcceptance200Response
    >(
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
