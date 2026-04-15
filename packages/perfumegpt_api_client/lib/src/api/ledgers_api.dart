//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:perfumegpt_api_client/src/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_cash_flow_ledger_item_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_inventory_ledger_item_response.dart';
import 'package:perfumegpt_api_client/src/model/cash_flow_category.dart';
import 'package:perfumegpt_api_client/src/model/cash_flow_type.dart';
import 'package:perfumegpt_api_client/src/model/stock_transaction_type.dart';

class LedgersApi {

  final Dio _dio;

  const LedgersApi(this._dio);

  /// apiLedgersCashFlowGet
  /// 
  ///
  /// Parameters:
  /// * [fromDate] 
  /// * [toDate] 
  /// * [flowType] 
  /// * [category] 
  /// * [referenceId] 
  /// * [referenceCode] 
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
  /// Returns a [Future] containing a [Response] with a [BaseResponseOfPagedResultOfCashFlowLedgerItemResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseResponseOfPagedResultOfCashFlowLedgerItemResponse>> apiLedgersCashFlowGet({ 
    DateTime? fromDate,
    DateTime? toDate,
    CashFlowType? flowType,
    CashFlowCategory? category,
    String? referenceId,
    String? referenceCode,
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
    final _path = r'/api/ledgers/cash-flow';
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
      if (fromDate != null) r'FromDate': fromDate,
      if (toDate != null) r'ToDate': toDate,
      if (flowType != null) r'FlowType': flowType,
      if (category != null) r'Category': category,
      if (referenceId != null) r'ReferenceId': referenceId,
      if (referenceCode != null) r'ReferenceCode': referenceCode,
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

    BaseResponseOfPagedResultOfCashFlowLedgerItemResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<BaseResponseOfPagedResultOfCashFlowLedgerItemResponse, BaseResponseOfPagedResultOfCashFlowLedgerItemResponse>(rawData, 'BaseResponseOfPagedResultOfCashFlowLedgerItemResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseResponseOfPagedResultOfCashFlowLedgerItemResponse>(
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

  /// apiLedgersInventoryGet
  /// 
  ///
  /// Parameters:
  /// * [fromDate] 
  /// * [toDate] 
  /// * [variantId] 
  /// * [batchId] 
  /// * [type] 
  /// * [referenceId] 
  /// * [actorId] 
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
  /// Returns a [Future] containing a [Response] with a [BaseResponseOfPagedResultOfInventoryLedgerItemResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BaseResponseOfPagedResultOfInventoryLedgerItemResponse>> apiLedgersInventoryGet({ 
    DateTime? fromDate,
    DateTime? toDate,
    String? variantId,
    String? batchId,
    StockTransactionType? type,
    String? referenceId,
    String? actorId,
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
    final _path = r'/api/ledgers/inventory';
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
      if (fromDate != null) r'FromDate': fromDate,
      if (toDate != null) r'ToDate': toDate,
      if (variantId != null) r'VariantId': variantId,
      if (batchId != null) r'BatchId': batchId,
      if (type != null) r'Type': type,
      if (referenceId != null) r'ReferenceId': referenceId,
      if (actorId != null) r'ActorId': actorId,
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

    BaseResponseOfPagedResultOfInventoryLedgerItemResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<BaseResponseOfPagedResultOfInventoryLedgerItemResponse, BaseResponseOfPagedResultOfInventoryLedgerItemResponse>(rawData, 'BaseResponseOfPagedResultOfInventoryLedgerItemResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BaseResponseOfPagedResultOfInventoryLedgerItemResponse>(
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
