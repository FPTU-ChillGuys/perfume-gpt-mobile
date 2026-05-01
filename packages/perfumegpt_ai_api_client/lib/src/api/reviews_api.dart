//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:perfumegpt_ai_api_client/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:perfumegpt_ai_api_client/src/model/dictionary_controller_get_snapshot404_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/dictionary_controller_get_snapshot500_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/review_controller_get_all_review_logs200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/review_controller_get_reviews200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/review_controller_get_structured_review_summary_by_variant_id200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_create_survey_ques200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_get_all_surveys401_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_get_all_surveys403_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_reorder_questions200_response.dart';

class ReviewsApi {

  final Dio _dio;

  const ReviewsApi(this._dio);

  /// Thêm review log
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
  /// Returns a [Future] containing a [Response] with a [ReviewControllerGetAllReviewLogs200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReviewControllerGetAllReviewLogs200Response>> reviewControllerAddReviewLog({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reviews/logs';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'http',
            'scheme': 'bearer',
            'name': 'jwt',
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

    ReviewControllerGetAllReviewLogs200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ReviewControllerGetAllReviewLogs200Response, ReviewControllerGetAllReviewLogs200Response>(rawData, 'ReviewControllerGetAllReviewLogs200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReviewControllerGetAllReviewLogs200Response>(
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

  /// Khởi tạo job để tóm tắt đánh giá theo variant ID
  /// 
  ///
  /// Parameters:
  /// * [variantId] - ID của variant sản phẩm
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SurveyControllerCreateSurveyQues200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SurveyControllerCreateSurveyQues200Response>> reviewControllerCreateReviewSummaryJob({ 
    required String variantId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reviews/summary/job/{variantId}'.replaceAll('{' r'variantId' '}', variantId.toString());
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
            'name': 'jwt',
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

    SurveyControllerCreateSurveyQues200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SurveyControllerCreateSurveyQues200Response, SurveyControllerCreateSurveyQues200Response>(rawData, 'SurveyControllerCreateSurveyQues200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SurveyControllerCreateSurveyQues200Response>(
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

  /// Lấy tất cả review logs
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
  /// Returns a [Future] containing a [Response] with a [ReviewControllerGetAllReviewLogs200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReviewControllerGetAllReviewLogs200Response>> reviewControllerGetAllReviewLogs({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reviews/logs';
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
            'name': 'jwt',
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

    ReviewControllerGetAllReviewLogs200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ReviewControllerGetAllReviewLogs200Response, ReviewControllerGetAllReviewLogs200Response>(rawData, 'ReviewControllerGetAllReviewLogs200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReviewControllerGetAllReviewLogs200Response>(
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

  /// Lấy review log mới nhất theo variant ID
  /// 
  ///
  /// Parameters:
  /// * [variantId] - ID của variant sản phẩm
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReviewControllerGetAllReviewLogs200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReviewControllerGetAllReviewLogs200Response>> reviewControllerGetLatestReviewLogByVariantId({ 
    required String variantId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reviews/logs/latest/variant/{variantId}'.replaceAll('{' r'variantId' '}', variantId.toString());
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
            'name': 'jwt',
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

    ReviewControllerGetAllReviewLogs200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ReviewControllerGetAllReviewLogs200Response, ReviewControllerGetAllReviewLogs200Response>(rawData, 'ReviewControllerGetAllReviewLogs200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReviewControllerGetAllReviewLogs200Response>(
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

  /// Lấy review log theo ID
  /// 
  ///
  /// Parameters:
  /// * [id] - ID của review log
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReviewControllerGetAllReviewLogs200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReviewControllerGetAllReviewLogs200Response>> reviewControllerGetReviewLogById({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reviews/logs/{id}'.replaceAll('{' r'id' '}', id.toString());
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
            'name': 'jwt',
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

    ReviewControllerGetAllReviewLogs200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ReviewControllerGetAllReviewLogs200Response, ReviewControllerGetAllReviewLogs200Response>(rawData, 'ReviewControllerGetAllReviewLogs200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReviewControllerGetAllReviewLogs200Response>(
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

  /// Lấy review logs theo variant ID
  /// 
  ///
  /// Parameters:
  /// * [variantId] - ID của variant sản phẩm
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReviewControllerGetAllReviewLogs200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReviewControllerGetAllReviewLogs200Response>> reviewControllerGetReviewLogsByVariantId({ 
    required String variantId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reviews/logs/variant/{variantId}'.replaceAll('{' r'variantId' '}', variantId.toString());
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
            'name': 'jwt',
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

    ReviewControllerGetAllReviewLogs200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ReviewControllerGetAllReviewLogs200Response, ReviewControllerGetAllReviewLogs200Response>(rawData, 'ReviewControllerGetAllReviewLogs200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReviewControllerGetAllReviewLogs200Response>(
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

  /// Tóm tắt đánh giá bằng AI theo variant ID
  /// 
  ///
  /// Parameters:
  /// * [variantId] - ID của variant sản phẩm
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SurveyControllerCreateSurveyQues200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SurveyControllerCreateSurveyQues200Response>> reviewControllerGetReviewSummaryByVariantId({ 
    required String variantId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reviews/summary/{variantId}'.replaceAll('{' r'variantId' '}', variantId.toString());
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
            'name': 'jwt',
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

    SurveyControllerCreateSurveyQues200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SurveyControllerCreateSurveyQues200Response, SurveyControllerCreateSurveyQues200Response>(rawData, 'SurveyControllerCreateSurveyQues200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SurveyControllerCreateSurveyQues200Response>(
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

  /// Tóm tắt đánh giá bằng AI cho tất cả variant
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
  /// Returns a [Future] containing a [Response] with a [SurveyControllerCreateSurveyQues200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SurveyControllerCreateSurveyQues200Response>> reviewControllerGetReviewSummaryFromAllVariant({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reviews/summary/all';
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
            'name': 'jwt',
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

    SurveyControllerCreateSurveyQues200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SurveyControllerCreateSurveyQues200Response, SurveyControllerCreateSurveyQues200Response>(rawData, 'SurveyControllerCreateSurveyQues200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SurveyControllerCreateSurveyQues200Response>(
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

  /// Kiểm tra trạng thái hoàn thành của job tóm tắt đánh giá
  /// 
  ///
  /// Parameters:
  /// * [jobId] 
  /// * [variantId] - ID của variant sản phẩm đã dùng tạo job
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SurveyControllerReorderQuestions200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SurveyControllerReorderQuestions200Response>> reviewControllerGetReviewSummaryJobResult({ 
    required String jobId,
    required String variantId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reviews/summary/job/result/{jobId}'.replaceAll('{' r'jobId' '}', jobId.toString());
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
            'name': 'jwt',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'variantId': variantId,
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
_responseData = rawData == null ? null : deserialize<SurveyControllerReorderQuestions200Response, SurveyControllerReorderQuestions200Response>(rawData, 'SurveyControllerReorderQuestions200Response', growable: true);

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

  /// Lấy danh sách đánh giá (phân trang)
  /// 
  ///
  /// Parameters:
  /// * [pageNumber] - Số trang
  /// * [pageSize] - Số bản ghi mỗi trang
  /// * [sortOrder] - Thứ tự sắp xếp
  /// * [isDescending] - Sắp xếp giảm dần
  /// * [variantId] - ID variant sản phẩm
  /// * [userId] - ID người dùng
  /// * [status] - Trạng thái đánh giá
  /// * [minRating] - Số sao tối thiểu
  /// * [maxRating] - Số sao tối đa
  /// * [hasImages] - Chỉ lấy đánh giá có hình ảnh
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReviewControllerGetReviews200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReviewControllerGetReviews200Response>> reviewControllerGetReviews({ 
    num pageNumber = 1,
    num pageSize = 10,
    String sortOrder = 'asc',
    bool isDescending = false,
    String? variantId,
    String? userId,
    String? status,
    num? minRating,
    num? maxRating,
    bool? hasImages,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reviews';
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
            'name': 'jwt',
          },
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
      if (variantId != null) r'VariantId': variantId,
      if (userId != null) r'UserId': userId,
      if (status != null) r'Status': status,
      if (minRating != null) r'MinRating': minRating,
      if (maxRating != null) r'MaxRating': maxRating,
      if (hasImages != null) r'HasImages': hasImages,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ReviewControllerGetReviews200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ReviewControllerGetReviews200Response, ReviewControllerGetReviews200Response>(rawData, 'ReviewControllerGetReviews200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReviewControllerGetReviews200Response>(
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

  /// Tóm tắt đánh giá có cấu trúc theo variant ID
  /// 
  ///
  /// Parameters:
  /// * [variantId] - ID của variant sản phẩm
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReviewControllerGetStructuredReviewSummaryByVariantId200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReviewControllerGetStructuredReviewSummaryByVariantId200Response>> reviewControllerGetStructuredReviewSummaryByVariantId({ 
    required String variantId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/reviews/summary/structured/{variantId}'.replaceAll('{' r'variantId' '}', variantId.toString());
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
            'name': 'jwt',
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

    ReviewControllerGetStructuredReviewSummaryByVariantId200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ReviewControllerGetStructuredReviewSummaryByVariantId200Response, ReviewControllerGetStructuredReviewSummaryByVariantId200Response>(rawData, 'ReviewControllerGetStructuredReviewSummaryByVariantId200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReviewControllerGetStructuredReviewSummaryByVariantId200Response>(
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
