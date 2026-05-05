import 'package:perfumegpt_ai_api_client/src/model/ai_acceptance.dart';
import 'package:perfumegpt_ai_api_client/src/model/ai_acceptance_controller_create_pending_response_acceptance200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/ai_acceptance_controller_get_ai_acceptance_rate200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/ai_acceptance_controller_get_all_ai_acceptance_status200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/ai_acceptance_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/ai_inventory_report_structured_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/ai_response_metadata.dart';
import 'package:perfumegpt_ai_api_client/src/model/ai_review_summary_structured_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/ai_trend_forecast_structured_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/add_phrase_rule_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/admin_instruction_controller_create_instruction200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/admin_instruction_controller_get_all_instructions200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/admin_instruction_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/all_user_log_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/base_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/base_response_api.dart';
import 'package:perfumegpt_ai_api_client/src/model/batch_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/chat_message_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/chat_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/chat_v11_ai_message.dart';
import 'package:perfumegpt_ai_api_client/src/model/chat_v11_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/concentration_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/conversation_controller_chat_v11200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/conversation_controller_get_all_conversations200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/conversation_controller_get_my_conversation_history200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/conversation_controller_get_my_conversation_history200_response_data.dart';
import 'package:perfumegpt_ai_api_client/src/model/conversation_output_dto.dart';
import 'package:perfumegpt_ai_api_client/src/model/conversation_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/create_admin_instruction_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/create_question_from_attribute_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/create_response_ai_acceptance_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/daily_sales_record.dart';
import 'package:perfumegpt_ai_api_client/src/model/event_log_create_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/event_log_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/event_log_summary_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/event_log_time_series_point_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/event_log_time_series_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/gender_normalizer_output.dart';
import 'package:perfumegpt_ai_api_client/src/model/grouped_survey_question_answer_detail_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/hybrid_search_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_controller_get_batch200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_controller_get_batch200_response_payload.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_controller_get_inventory_log_by_id200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_controller_get_inventory_report_logs200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_controller_get_inventory_report_logs200_response_payload.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_controller_get_inventory_stock200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_controller_get_inventory_stock200_response_payload.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_controller_get_product_sales_analytics_by_id200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_controller_get_product_sales_analytics_for_restock200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_controller_get_structured_ai_inventory_report200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_log.dart';
import 'package:perfumegpt_ai_api_client/src/model/inventory_stock_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/log_controller_get_aggregated_user_summary_report200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/log_controller_get_all_user_logs200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/log_controller_get_all_user_logs_summaries200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/log_controller_get_event_logs_summary200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/log_controller_get_event_logs_time_series200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/log_controller_get_paged_event_logs200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/log_controller_get_paged_event_logs200_response_payload.dart';
import 'package:perfumegpt_ai_api_client/src/model/message_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_answer.dart';
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_answer_item.dart';
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_message.dart';
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_product.dart';
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_question_item.dart';
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/mobile_survey_response_data.dart';
import 'package:perfumegpt_ai_api_client/src/model/normalized_query_filters.dart';
import 'package:perfumegpt_ai_api_client/src/model/origin_normalizer_output.dart';
import 'package:perfumegpt_ai_api_client/src/model/paged_result.dart';
import 'package:perfumegpt_ai_api_client/src/model/price_normalizer_output.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_attribute_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_card_output_item_dto.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_card_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_card_variant_output_dto.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_card_variant_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_controller_get_all_products200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_controller_get_all_products200_response_payload.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_controller_get_all_products400_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_controller_get_all_products404_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_controller_get_all_products500_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_controller_get_products_by_hybrid_search200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_controller_get_products_by_semantic_search200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_controller_get_products_by_semantic_search200_response_payload.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_temp_item_dto.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_temp_item_dto_variants_inner.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_variant_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_view_log_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/product_with_variants_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/query_fragment_attribute.dart';
import 'package:perfumegpt_ai_api_client/src/model/query_fragment_budget.dart';
import 'package:perfumegpt_ai_api_client/src/model/query_fragment_match.dart';
import 'package:perfumegpt_ai_api_client/src/model/reorder_question_item.dart';
import 'package:perfumegpt_ai_api_client/src/model/reorder_questions_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/review_controller_get_all_review_logs200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/review_controller_get_reviews200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/review_controller_get_reviews200_response_payload.dart';
import 'package:perfumegpt_ai_api_client/src/model/review_controller_get_structured_review_summary_by_variant_id200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/review_list_item_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/review_log.dart';
import 'package:perfumegpt_ai_api_client/src/model/sales_metrics.dart';
import 'package:perfumegpt_ai_api_client/src/model/search_text_log_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_answer_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_answer_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_attribute_type_info.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_attribute_value_item.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_attribute_value_item_query_fragment.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_attribute_values_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_create_survey_ques200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_delete_survey_question200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_get_all_surveys200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_get_attribute_types200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_get_attribute_values200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_get_mobile_survey_questions200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_get_mobile_survey_questions401_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_get_mobile_survey_questions403_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_get_survey_history_list_by_user_id200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_get_survey_ques_anws_by_user_id200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_get_survey_ques_by_id200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_reorder_questions200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_controller_submit_mobile_survey200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_grouped_answer_item.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_ques_ans_detail_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_question_answer_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_question_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/survey_question_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/trend_controller_get_product_from_trend_caching200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/trend_controller_summarize_logs_structured200_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/update_admin_instruction_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/user_log_summary_request.dart';
import 'package:perfumegpt_ai_api_client/src/model/user_log_summary_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/variant_media_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/variant_sales_analytics_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/variant_stock_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/year_normalizer_output.dart';

final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

  ReturnType deserialize<ReturnType, BaseType>(dynamic value, String targetType, {bool growable= true}) {
      switch (targetType) {
        case 'String':
          return '$value' as ReturnType;
        case 'int':
          return (value is int ? value : int.parse('$value')) as ReturnType;
        case 'bool':
          if (value is bool) {
            return value as ReturnType;
          }
          final valueString = '$value'.toLowerCase();
          return (valueString == 'true' || valueString == '1') as ReturnType;
        case 'double':
          return (value is double ? value : double.parse('$value')) as ReturnType;
        case 'AIAcceptance':
          return AIAcceptance.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AIAcceptanceControllerCreatePendingResponseAcceptance200Response':
          return AIAcceptanceControllerCreatePendingResponseAcceptance200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AIAcceptanceControllerGetAIAcceptanceRate200Response':
          return AIAcceptanceControllerGetAIAcceptanceRate200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AIAcceptanceControllerGetAllAIAcceptanceStatus200Response':
          return AIAcceptanceControllerGetAllAIAcceptanceStatus200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AIAcceptanceResponse':
          return AIAcceptanceResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AIInventoryReportStructuredResponse':
          return AIInventoryReportStructuredResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AIResponseMetadata':
          return AIResponseMetadata.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AIReviewSummaryStructuredResponse':
          return AIReviewSummaryStructuredResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AITrendForecastStructuredResponse':
          return AITrendForecastStructuredResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AddPhraseRuleRequest':
          return AddPhraseRuleRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AdminInstructionControllerCreateInstruction200Response':
          return AdminInstructionControllerCreateInstruction200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AdminInstructionControllerGetAllInstructions200Response':
          return AdminInstructionControllerGetAllInstructions200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AdminInstructionResponse':
          return AdminInstructionResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AllUserLogRequest':
          return AllUserLogRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponse':
          return BaseResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseAPI':
          return BaseResponseAPI.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BatchResponse':
          return BatchResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatMessageRequest':
          return ChatMessageRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatRequest':
          return ChatRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatV11AiMessage':
          return ChatV11AiMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ChatV11Response':
          return ChatV11Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConcentrationResponse':
          return ConcentrationResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConversationControllerChatV11200Response':
          return ConversationControllerChatV11200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConversationControllerGetAllConversations200Response':
          return ConversationControllerGetAllConversations200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConversationControllerGetMyConversationHistory200Response':
          return ConversationControllerGetMyConversationHistory200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConversationControllerGetMyConversationHistory200ResponseData':
          return ConversationControllerGetMyConversationHistory200ResponseData.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConversationOutputDto':
          return ConversationOutputDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConversationResponse':
          return ConversationResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateAdminInstructionRequest':
          return CreateAdminInstructionRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateQuestionFromAttributeRequest':
          return CreateQuestionFromAttributeRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateResponseAIAcceptanceRequest':
          return CreateResponseAIAcceptanceRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DailySalesRecord':
          return DailySalesRecord.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EventLogCreateRequest':
          return EventLogCreateRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EventLogResponse':
          return EventLogResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EventLogSummaryResponse':
          return EventLogSummaryResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EventLogTimeSeriesPointResponse':
          return EventLogTimeSeriesPointResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EventLogTimeSeriesResponse':
          return EventLogTimeSeriesResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GenderNormalizerOutput':
          return GenderNormalizerOutput.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GroupedSurveyQuestionAnswerDetailResponse':
          return GroupedSurveyQuestionAnswerDetailResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'HybridSearchResponse':
          return HybridSearchResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryControllerGetBatch200Response':
          return InventoryControllerGetBatch200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryControllerGetBatch200ResponsePayload':
          return InventoryControllerGetBatch200ResponsePayload.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryControllerGetInventoryLogById200Response':
          return InventoryControllerGetInventoryLogById200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryControllerGetInventoryReportLogs200Response':
          return InventoryControllerGetInventoryReportLogs200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryControllerGetInventoryReportLogs200ResponsePayload':
          return InventoryControllerGetInventoryReportLogs200ResponsePayload.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryControllerGetInventoryStock200Response':
          return InventoryControllerGetInventoryStock200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryControllerGetInventoryStock200ResponsePayload':
          return InventoryControllerGetInventoryStock200ResponsePayload.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryControllerGetProductSalesAnalyticsById200Response':
          return InventoryControllerGetProductSalesAnalyticsById200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryControllerGetProductSalesAnalyticsForRestock200Response':
          return InventoryControllerGetProductSalesAnalyticsForRestock200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryControllerGetStructuredAIInventoryReport200Response':
          return InventoryControllerGetStructuredAIInventoryReport200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryLog':
          return InventoryLog.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryStockResponse':
          return InventoryStockResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LogControllerGetAggregatedUserSummaryReport200Response':
          return LogControllerGetAggregatedUserSummaryReport200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LogControllerGetAllUserLogs200Response':
          return LogControllerGetAllUserLogs200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LogControllerGetAllUserLogsSummaries200Response':
          return LogControllerGetAllUserLogsSummaries200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LogControllerGetEventLogsSummary200Response':
          return LogControllerGetEventLogsSummary200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LogControllerGetEventLogsTimeSeries200Response':
          return LogControllerGetEventLogsTimeSeries200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LogControllerGetPagedEventLogs200Response':
          return LogControllerGetPagedEventLogs200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LogControllerGetPagedEventLogs200ResponsePayload':
          return LogControllerGetPagedEventLogs200ResponsePayload.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MessageResponse':
          return MessageResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MobileSurveyAnswer':
          return MobileSurveyAnswer.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MobileSurveyAnswerItem':
          return MobileSurveyAnswerItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MobileSurveyMessage':
          return MobileSurveyMessage.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MobileSurveyProduct':
          return MobileSurveyProduct.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MobileSurveyQuestionItem':
          return MobileSurveyQuestionItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MobileSurveyRequest':
          return MobileSurveyRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MobileSurveyResponseData':
          return MobileSurveyResponseData.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'NormalizedQueryFilters':
          return NormalizedQueryFilters.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OriginNormalizerOutput':
          return OriginNormalizerOutput.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResult':
          return PagedResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PriceNormalizerOutput':
          return PriceNormalizerOutput.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductAttributeResponse':
          return ProductAttributeResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductCardOutputItemDto':
          return ProductCardOutputItemDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductCardResponse':
          return ProductCardResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductCardVariantOutputDto':
          return ProductCardVariantOutputDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductCardVariantResponse':
          return ProductCardVariantResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductControllerGetAllProducts200Response':
          return ProductControllerGetAllProducts200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductControllerGetAllProducts200ResponsePayload':
          return ProductControllerGetAllProducts200ResponsePayload.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductControllerGetAllProducts400Response':
          return ProductControllerGetAllProducts400Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductControllerGetAllProducts404Response':
          return ProductControllerGetAllProducts404Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductControllerGetAllProducts500Response':
          return ProductControllerGetAllProducts500Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductControllerGetProductsByHybridSearch200Response':
          return ProductControllerGetProductsByHybridSearch200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductControllerGetProductsBySemanticSearch200Response':
          return ProductControllerGetProductsBySemanticSearch200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductControllerGetProductsBySemanticSearch200ResponsePayload':
          return ProductControllerGetProductsBySemanticSearch200ResponsePayload.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductResponse':
          return ProductResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductTempItemDto':
          return ProductTempItemDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductTempItemDtoVariantsInner':
          return ProductTempItemDtoVariantsInner.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductVariantResponse':
          return ProductVariantResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductViewLogRequest':
          return ProductViewLogRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductWithVariantsResponse':
          return ProductWithVariantsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QueryFragmentAttribute':
          return QueryFragmentAttribute.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QueryFragmentBudget':
          return QueryFragmentBudget.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'QueryFragmentMatch':
          return QueryFragmentMatch.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReorderQuestionItem':
          return ReorderQuestionItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReorderQuestionsRequest':
          return ReorderQuestionsRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReviewControllerGetAllReviewLogs200Response':
          return ReviewControllerGetAllReviewLogs200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReviewControllerGetReviews200Response':
          return ReviewControllerGetReviews200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReviewControllerGetReviews200ResponsePayload':
          return ReviewControllerGetReviews200ResponsePayload.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReviewControllerGetStructuredReviewSummaryByVariantId200Response':
          return ReviewControllerGetStructuredReviewSummaryByVariantId200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReviewListItemResponse':
          return ReviewListItemResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReviewLog':
          return ReviewLog.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SalesMetrics':
          return SalesMetrics.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SearchTextLogRequest':
          return SearchTextLogRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyAnswerRequest':
          return SurveyAnswerRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyAnswerResponse':
          return SurveyAnswerResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyAttributeTypeInfo':
          return SurveyAttributeTypeInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyAttributeValueItem':
          return SurveyAttributeValueItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyAttributeValueItemQueryFragment':
          return SurveyAttributeValueItemQueryFragment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyAttributeValuesResponse':
          return SurveyAttributeValuesResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerCreateSurveyQues200Response':
          return SurveyControllerCreateSurveyQues200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerDeleteSurveyQuestion200Response':
          return SurveyControllerDeleteSurveyQuestion200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerGetAllSurveys200Response':
          return SurveyControllerGetAllSurveys200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerGetAttributeTypes200Response':
          return SurveyControllerGetAttributeTypes200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerGetAttributeValues200Response':
          return SurveyControllerGetAttributeValues200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerGetMobileSurveyQuestions200Response':
          return SurveyControllerGetMobileSurveyQuestions200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerGetMobileSurveyQuestions401Response':
          return SurveyControllerGetMobileSurveyQuestions401Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerGetMobileSurveyQuestions403Response':
          return SurveyControllerGetMobileSurveyQuestions403Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerGetSurveyHistoryListByUserId200Response':
          return SurveyControllerGetSurveyHistoryListByUserId200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerGetSurveyQuesAnwsByUserId200Response':
          return SurveyControllerGetSurveyQuesAnwsByUserId200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerGetSurveyQuesById200Response':
          return SurveyControllerGetSurveyQuesById200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerReorderQuestions200Response':
          return SurveyControllerReorderQuestions200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyControllerSubmitMobileSurvey200Response':
          return SurveyControllerSubmitMobileSurvey200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyGroupedAnswerItem':
          return SurveyGroupedAnswerItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyQuesAnsDetailRequest':
          return SurveyQuesAnsDetailRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyQuestionAnswerResponse':
          return SurveyQuestionAnswerResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyQuestionRequest':
          return SurveyQuestionRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SurveyQuestionResponse':
          return SurveyQuestionResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TrendControllerGetProductFromTrendCaching200Response':
          return TrendControllerGetProductFromTrendCaching200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TrendControllerSummarizeLogsStructured200Response':
          return TrendControllerSummarizeLogsStructured200Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateAdminInstructionRequest':
          return UpdateAdminInstructionRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserLogSummaryRequest':
          return UserLogSummaryRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserLogSummaryResponse':
          return UserLogSummaryResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VariantMediaResponse':
          return VariantMediaResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VariantSalesAnalyticsResponse':
          return VariantSalesAnalyticsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VariantStockResponse':
          return VariantStockResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'YearNormalizerOutput':
          return YearNormalizerOutput.fromJson(value as Map<String, dynamic>) as ReturnType;
        default:
          RegExpMatch? match;

          if (value is List && (match = _regList.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toList(growable: growable) as ReturnType;
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)) != null) {
            targetType = match![1]!; // ignore: parameter_assignments
            return value
              .map<BaseType>((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable))
              .toSet() as ReturnType;
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)) != null) {
            targetType = match![1]!.trim(); // ignore: parameter_assignments
            return Map<String, BaseType>.fromIterables(
              value.keys as Iterable<String>,
              value.values.map((dynamic v) => deserialize<BaseType, BaseType>(v, targetType, growable: growable)),
            ) as ReturnType;
          }
          break;
    }
    throw Exception('Cannot deserialize');
  }