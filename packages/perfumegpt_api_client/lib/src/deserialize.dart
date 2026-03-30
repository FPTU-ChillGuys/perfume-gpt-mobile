import 'package:perfumegpt_api_client/src/model/address_level4_response.dart';
import 'package:perfumegpt_api_client/src/model/address_response.dart';
import 'package:perfumegpt_api_client/src/model/admin_dashboard_overview_response.dart';
import 'package:perfumegpt_api_client/src/model/answer_review_request.dart';
import 'package:perfumegpt_api_client/src/model/attribute_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/attribute_value_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/available_voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_address_level4_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_address_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_admin_dashboard_overview_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_batch_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_brand_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_bulk_action_result_of_guid.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_bulk_action_result_of_list_of_temporary_media_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_bulk_action_result_ofstring.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_campaign_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_category_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_concentration_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_create_import_ticket_request.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_excel_template_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_get_cart_items_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_get_cart_total_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_import_ticket_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_inventory_levels_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_inventory_summary_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_address_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_attribute_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_attribute_value_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_batch_lookup_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_brand_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_brand_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_campaign_promotion_item_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_categories_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_category_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_concentration_lookup_dto.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_concentration_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_district_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_media_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_olfactory_family_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_olfactory_lookup_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_product_daily_sale_figure_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_product_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_province_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_redeemable_voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_review_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_scent_note_lookup_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_scent_note_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_staff_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_supplier_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_supplier_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_top_product_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_variant_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_list_of_ward_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_loyalty_transaction_totals_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_media_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_olfactory_family_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_order_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_available_voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_batch_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_campaign_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_import_ticket_list_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_loyalty_transaction_history_item_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_order_cancel_request_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_order_list_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_product_list_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_product_list_item_with_variants.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_review_list_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_stock_adjustment_list_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_stock_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_user_voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_variant_paged_item.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_paged_result_of_voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_pick_list_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_preview_order_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_product_fast_look_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_product_infor_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_product_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_product_variant_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_profile_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_receipt_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_revenue_summary_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_review_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_review_statistics_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_scent_note_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_stock_adjustment_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_stock_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_supplier_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_swap_damaged_stock_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_token_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_user_credentials_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_user_order_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_of_voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/base_response_ofboolean.dart';
import 'package:perfumegpt_api_client/src/model/base_response_ofstring.dart';
import 'package:perfumegpt_api_client/src/model/batch_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/batch_lookup_response.dart';
import 'package:perfumegpt_api_client/src/model/batch_response.dart';
import 'package:perfumegpt_api_client/src/model/brand_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/brand_response.dart';
import 'package:perfumegpt_api_client/src/model/bulk_action_error.dart';
import 'package:perfumegpt_api_client/src/model/bulk_action_metadata.dart';
import 'package:perfumegpt_api_client/src/model/bulk_action_result_of_guid.dart';
import 'package:perfumegpt_api_client/src/model/bulk_action_result_of_list_of_temporary_media_response.dart';
import 'package:perfumegpt_api_client/src/model/bulk_action_result_ofstring.dart';
import 'package:perfumegpt_api_client/src/model/bulk_operation_result.dart';
import 'package:perfumegpt_api_client/src/model/campaign_promotion_item_response.dart';
import 'package:perfumegpt_api_client/src/model/campaign_response.dart';
import 'package:perfumegpt_api_client/src/model/categories_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/category_response.dart';
import 'package:perfumegpt_api_client/src/model/concentration_lookup_dto.dart';
import 'package:perfumegpt_api_client/src/model/concentration_response.dart';
import 'package:perfumegpt_api_client/src/model/confirm_payment_request.dart';
import 'package:perfumegpt_api_client/src/model/create_address_request.dart';
import 'package:perfumegpt_api_client/src/model/create_attribute_request.dart';
import 'package:perfumegpt_api_client/src/model/create_attribute_value_request.dart';
import 'package:perfumegpt_api_client/src/model/create_batch_request.dart';
import 'package:perfumegpt_api_client/src/model/create_brand_request.dart';
import 'package:perfumegpt_api_client/src/model/create_campaign_promotion_item_request.dart';
import 'package:perfumegpt_api_client/src/model/create_campaign_request.dart';
import 'package:perfumegpt_api_client/src/model/create_campaign_voucher_request.dart';
import 'package:perfumegpt_api_client/src/model/create_cart_item_request.dart';
import 'package:perfumegpt_api_client/src/model/create_category_request.dart';
import 'package:perfumegpt_api_client/src/model/create_concentration_request.dart';
import 'package:perfumegpt_api_client/src/model/create_import_detail_request.dart';
import 'package:perfumegpt_api_client/src/model/create_import_ticket_request.dart';
import 'package:perfumegpt_api_client/src/model/create_in_store_order_request.dart';
import 'package:perfumegpt_api_client/src/model/create_olfactory_family_request.dart';
import 'package:perfumegpt_api_client/src/model/create_order_detail_request.dart';
import 'package:perfumegpt_api_client/src/model/create_order_request.dart';
import 'package:perfumegpt_api_client/src/model/create_product_request.dart';
import 'package:perfumegpt_api_client/src/model/create_return_request_detail_dto.dart';
import 'package:perfumegpt_api_client/src/model/create_return_request_dto.dart';
import 'package:perfumegpt_api_client/src/model/create_review_request.dart';
import 'package:perfumegpt_api_client/src/model/create_scent_note_request.dart';
import 'package:perfumegpt_api_client/src/model/create_stock_adjustment_detail_request.dart';
import 'package:perfumegpt_api_client/src/model/create_stock_adjustment_request.dart';
import 'package:perfumegpt_api_client/src/model/create_supplier_request.dart';
import 'package:perfumegpt_api_client/src/model/create_variant_request.dart';
import 'package:perfumegpt_api_client/src/model/create_voucher_request.dart';
import 'package:perfumegpt_api_client/src/model/customer_attribute_preference_response.dart';
import 'package:perfumegpt_api_client/src/model/customer_family_preference_respone.dart';
import 'package:perfumegpt_api_client/src/model/customer_note_preference_response.dart';
import 'package:perfumegpt_api_client/src/model/district_response.dart';
import 'package:perfumegpt_api_client/src/model/entity_tag_header_value.dart';
import 'package:perfumegpt_api_client/src/model/excel_template_response.dart';
import 'package:perfumegpt_api_client/src/model/file_content_result.dart';
import 'package:perfumegpt_api_client/src/model/forgot_password_request.dart';
import 'package:perfumegpt_api_client/src/model/fulfill_order_item_request.dart';
import 'package:perfumegpt_api_client/src/model/fulfill_order_request.dart';
import 'package:perfumegpt_api_client/src/model/get_cart_item_response.dart';
import 'package:perfumegpt_api_client/src/model/get_cart_items_response.dart';
import 'package:perfumegpt_api_client/src/model/get_cart_total_response.dart';
import 'package:perfumegpt_api_client/src/model/google_login_request.dart';
import 'package:perfumegpt_api_client/src/model/import_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/import_ticket_list_item.dart';
import 'package:perfumegpt_api_client/src/model/import_ticket_response.dart';
import 'package:perfumegpt_api_client/src/model/inventory_levels_response.dart';
import 'package:perfumegpt_api_client/src/model/inventory_summary_response.dart';
import 'package:perfumegpt_api_client/src/model/login_request.dart';
import 'package:perfumegpt_api_client/src/model/loyalty_transaction_history_item_response.dart';
import 'package:perfumegpt_api_client/src/model/loyalty_transaction_totals_response.dart';
import 'package:perfumegpt_api_client/src/model/manual_change_request.dart';
import 'package:perfumegpt_api_client/src/model/media_response.dart';
import 'package:perfumegpt_api_client/src/model/olfactory_family_response.dart';
import 'package:perfumegpt_api_client/src/model/olfactory_lookup_response.dart';
import 'package:perfumegpt_api_client/src/model/order_cancel_request_response.dart';
import 'package:perfumegpt_api_client/src/model/order_detail_list_items.dart';
import 'package:perfumegpt_api_client/src/model/order_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/order_list_item.dart';
import 'package:perfumegpt_api_client/src/model/order_response.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_available_voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_batch_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_campaign_response.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_import_ticket_list_item.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_loyalty_transaction_history_item_response.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_order_cancel_request_response.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_order_list_item.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_product_list_item.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_product_list_item_with_variants.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_review_list_item.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_stock_adjustment_list_item.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_stock_response.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_user_voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_variant_paged_item.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/payment_info_response.dart';
import 'package:perfumegpt_api_client/src/model/payment_information.dart';
import 'package:perfumegpt_api_client/src/model/pick_list_batch_info.dart';
import 'package:perfumegpt_api_client/src/model/pick_list_item_response.dart';
import 'package:perfumegpt_api_client/src/model/pick_list_response.dart';
import 'package:perfumegpt_api_client/src/model/preview_order_response.dart';
import 'package:perfumegpt_api_client/src/model/problem_details.dart';
import 'package:perfumegpt_api_client/src/model/process_cancel_request.dart';
import 'package:perfumegpt_api_client/src/model/process_initial_return_dto.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_dto.dart';
import 'package:perfumegpt_api_client/src/model/product_attribute_response.dart';
import 'package:perfumegpt_api_client/src/model/product_daily_sale_figure_response.dart';
import 'package:perfumegpt_api_client/src/model/product_fast_look_response.dart';
import 'package:perfumegpt_api_client/src/model/product_image_upload_item.dart';
import 'package:perfumegpt_api_client/src/model/product_infor_response.dart';
import 'package:perfumegpt_api_client/src/model/product_list_item.dart';
import 'package:perfumegpt_api_client/src/model/product_list_item_with_variants.dart';
import 'package:perfumegpt_api_client/src/model/product_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/product_olfactory_family_response.dart';
import 'package:perfumegpt_api_client/src/model/product_response.dart';
import 'package:perfumegpt_api_client/src/model/product_scent_note_response.dart';
import 'package:perfumegpt_api_client/src/model/product_variant_response.dart';
import 'package:perfumegpt_api_client/src/model/profile_response.dart';
import 'package:perfumegpt_api_client/src/model/province_response.dart';
import 'package:perfumegpt_api_client/src/model/receipt_item_dto.dart';
import 'package:perfumegpt_api_client/src/model/receipt_response.dart';
import 'package:perfumegpt_api_client/src/model/recipient_info_response.dart';
import 'package:perfumegpt_api_client/src/model/recipient_information.dart';
import 'package:perfumegpt_api_client/src/model/record_inspection_detail_dto.dart';
import 'package:perfumegpt_api_client/src/model/record_inspection_dto.dart';
import 'package:perfumegpt_api_client/src/model/redeem_voucher_request.dart';
import 'package:perfumegpt_api_client/src/model/redeemable_voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/register_request.dart';
import 'package:perfumegpt_api_client/src/model/reject_inspection_dto.dart';
import 'package:perfumegpt_api_client/src/model/reserved_batch_response.dart';
import 'package:perfumegpt_api_client/src/model/reset_password_request.dart';
import 'package:perfumegpt_api_client/src/model/revenue_summary_response.dart';
import 'package:perfumegpt_api_client/src/model/review_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/review_list_item.dart';
import 'package:perfumegpt_api_client/src/model/review_response.dart';
import 'package:perfumegpt_api_client/src/model/review_statistics_response.dart';
import 'package:perfumegpt_api_client/src/model/scent_note_dto.dart';
import 'package:perfumegpt_api_client/src/model/scent_note_lookup_response.dart';
import 'package:perfumegpt_api_client/src/model/scent_note_response.dart';
import 'package:perfumegpt_api_client/src/model/shipping_info_response.dart';
import 'package:perfumegpt_api_client/src/model/staff_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/start_inspection_dto.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_detail_response.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_list_item.dart';
import 'package:perfumegpt_api_client/src/model/stock_adjustment_response.dart';
import 'package:perfumegpt_api_client/src/model/stock_response.dart';
import 'package:perfumegpt_api_client/src/model/string_segment.dart';
import 'package:perfumegpt_api_client/src/model/supplier_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/supplier_response.dart';
import 'package:perfumegpt_api_client/src/model/swap_damaged_stock_request.dart';
import 'package:perfumegpt_api_client/src/model/swap_damaged_stock_response.dart';
import 'package:perfumegpt_api_client/src/model/temporary_media_response.dart';
import 'package:perfumegpt_api_client/src/model/token_response.dart';
import 'package:perfumegpt_api_client/src/model/top_product_response.dart';
import 'package:perfumegpt_api_client/src/model/update_address_request.dart';
import 'package:perfumegpt_api_client/src/model/update_attribute_request.dart';
import 'package:perfumegpt_api_client/src/model/update_attribute_value_request.dart';
import 'package:perfumegpt_api_client/src/model/update_brand_request.dart';
import 'package:perfumegpt_api_client/src/model/update_campaign_promotion_item_request.dart';
import 'package:perfumegpt_api_client/src/model/update_campaign_request.dart';
import 'package:perfumegpt_api_client/src/model/update_campaign_status_request.dart';
import 'package:perfumegpt_api_client/src/model/update_campaign_voucher_request.dart';
import 'package:perfumegpt_api_client/src/model/update_cart_item_request.dart';
import 'package:perfumegpt_api_client/src/model/update_category_request.dart';
import 'package:perfumegpt_api_client/src/model/update_concentration_request.dart';
import 'package:perfumegpt_api_client/src/model/update_import_detail_request.dart';
import 'package:perfumegpt_api_client/src/model/update_import_request.dart';
import 'package:perfumegpt_api_client/src/model/update_import_status_request.dart';
import 'package:perfumegpt_api_client/src/model/update_note_preference_request.dart';
import 'package:perfumegpt_api_client/src/model/update_olfactory_family_request.dart';
import 'package:perfumegpt_api_client/src/model/update_order_address_request.dart';
import 'package:perfumegpt_api_client/src/model/update_order_status_request.dart';
import 'package:perfumegpt_api_client/src/model/update_product_request.dart';
import 'package:perfumegpt_api_client/src/model/update_profile_request.dart';
import 'package:perfumegpt_api_client/src/model/update_scent_note_request.dart';
import 'package:perfumegpt_api_client/src/model/update_stock_adjustment_status_request.dart';
import 'package:perfumegpt_api_client/src/model/update_supplier_request.dart';
import 'package:perfumegpt_api_client/src/model/update_variant_request.dart';
import 'package:perfumegpt_api_client/src/model/update_voucher_request.dart';
import 'package:perfumegpt_api_client/src/model/user_cancel_order_request.dart';
import 'package:perfumegpt_api_client/src/model/user_credentials_response.dart';
import 'package:perfumegpt_api_client/src/model/user_order_response.dart';
import 'package:perfumegpt_api_client/src/model/user_voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/variant_daily_sale_figure.dart';
import 'package:perfumegpt_api_client/src/model/variant_fast_look_response.dart';
import 'package:perfumegpt_api_client/src/model/variant_image_upload_item.dart';
import 'package:perfumegpt_api_client/src/model/variant_lookup_item.dart';
import 'package:perfumegpt_api_client/src/model/variant_paged_item.dart';
import 'package:perfumegpt_api_client/src/model/variant_summary_item.dart';
import 'package:perfumegpt_api_client/src/model/verify_import_detail_request.dart';
import 'package:perfumegpt_api_client/src/model/verify_import_ticket_request.dart';
import 'package:perfumegpt_api_client/src/model/verify_stock_adjustment_detail_request.dart';
import 'package:perfumegpt_api_client/src/model/verify_stock_adjustment_request.dart';
import 'package:perfumegpt_api_client/src/model/voucher_response.dart';
import 'package:perfumegpt_api_client/src/model/ward_response.dart';

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
        case 'AddressLevel4Response':
          return AddressLevel4Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AddressResponse':
          return AddressResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AdminDashboardOverviewResponse':
          return AdminDashboardOverviewResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AnswerReviewRequest':
          return AnswerReviewRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AttributeLookupItem':
          return AttributeLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AttributeValueLookupItem':
          return AttributeValueLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'AvailableVoucherResponse':
          return AvailableVoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponse':
          return BaseResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfAddressLevel4Response':
          return BaseResponseOfAddressLevel4Response.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfAddressResponse':
          return BaseResponseOfAddressResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfAdminDashboardOverviewResponse':
          return BaseResponseOfAdminDashboardOverviewResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfBatchDetailResponse':
          return BaseResponseOfBatchDetailResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfBrandResponse':
          return BaseResponseOfBrandResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfBulkActionResultOfGuid':
          return BaseResponseOfBulkActionResultOfGuid.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse':
          return BaseResponseOfBulkActionResultOfListOfTemporaryMediaResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfBulkActionResultOfstring':
          return BaseResponseOfBulkActionResultOfstring.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfCampaignResponse':
          return BaseResponseOfCampaignResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfCategoryResponse':
          return BaseResponseOfCategoryResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfConcentrationResponse':
          return BaseResponseOfConcentrationResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfCreateImportTicketRequest':
          return BaseResponseOfCreateImportTicketRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfExcelTemplateResponse':
          return BaseResponseOfExcelTemplateResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfGetCartItemsResponse':
          return BaseResponseOfGetCartItemsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfGetCartTotalResponse':
          return BaseResponseOfGetCartTotalResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfImportTicketResponse':
          return BaseResponseOfImportTicketResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfInventoryLevelsResponse':
          return BaseResponseOfInventoryLevelsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfInventorySummaryResponse':
          return BaseResponseOfInventorySummaryResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfAddressResponse':
          return BaseResponseOfListOfAddressResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfAttributeLookupItem':
          return BaseResponseOfListOfAttributeLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfAttributeValueLookupItem':
          return BaseResponseOfListOfAttributeValueLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfBatchLookupResponse':
          return BaseResponseOfListOfBatchLookupResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfBrandLookupItem':
          return BaseResponseOfListOfBrandLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfBrandResponse':
          return BaseResponseOfListOfBrandResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfCampaignPromotionItemResponse':
          return BaseResponseOfListOfCampaignPromotionItemResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfCategoriesLookupItem':
          return BaseResponseOfListOfCategoriesLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfCategoryResponse':
          return BaseResponseOfListOfCategoryResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfConcentrationLookupDto':
          return BaseResponseOfListOfConcentrationLookupDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfConcentrationResponse':
          return BaseResponseOfListOfConcentrationResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfDistrictResponse':
          return BaseResponseOfListOfDistrictResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfMediaResponse':
          return BaseResponseOfListOfMediaResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfOlfactoryFamilyResponse':
          return BaseResponseOfListOfOlfactoryFamilyResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfOlfactoryLookupResponse':
          return BaseResponseOfListOfOlfactoryLookupResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfProductDailySaleFigureResponse':
          return BaseResponseOfListOfProductDailySaleFigureResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfProductLookupItem':
          return BaseResponseOfListOfProductLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfProvinceResponse':
          return BaseResponseOfListOfProvinceResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfRedeemableVoucherResponse':
          return BaseResponseOfListOfRedeemableVoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfReviewResponse':
          return BaseResponseOfListOfReviewResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfScentNoteLookupResponse':
          return BaseResponseOfListOfScentNoteLookupResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfScentNoteResponse':
          return BaseResponseOfListOfScentNoteResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfStaffLookupItem':
          return BaseResponseOfListOfStaffLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfSupplierLookupItem':
          return BaseResponseOfListOfSupplierLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfSupplierResponse':
          return BaseResponseOfListOfSupplierResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfTopProductResponse':
          return BaseResponseOfListOfTopProductResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfVariantLookupItem':
          return BaseResponseOfListOfVariantLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfListOfWardResponse':
          return BaseResponseOfListOfWardResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfLoyaltyTransactionTotalsResponse':
          return BaseResponseOfLoyaltyTransactionTotalsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfMediaResponse':
          return BaseResponseOfMediaResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfOlfactoryFamilyResponse':
          return BaseResponseOfOlfactoryFamilyResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfOrderResponse':
          return BaseResponseOfOrderResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfAvailableVoucherResponse':
          return BaseResponseOfPagedResultOfAvailableVoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfBatchDetailResponse':
          return BaseResponseOfPagedResultOfBatchDetailResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfCampaignResponse':
          return BaseResponseOfPagedResultOfCampaignResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfImportTicketListItem':
          return BaseResponseOfPagedResultOfImportTicketListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse':
          return BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfOrderCancelRequestResponse':
          return BaseResponseOfPagedResultOfOrderCancelRequestResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfOrderListItem':
          return BaseResponseOfPagedResultOfOrderListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfProductListItem':
          return BaseResponseOfPagedResultOfProductListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfProductListItemWithVariants':
          return BaseResponseOfPagedResultOfProductListItemWithVariants.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfReviewListItem':
          return BaseResponseOfPagedResultOfReviewListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfStockAdjustmentListItem':
          return BaseResponseOfPagedResultOfStockAdjustmentListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfStockResponse':
          return BaseResponseOfPagedResultOfStockResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfUserVoucherResponse':
          return BaseResponseOfPagedResultOfUserVoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfVariantPagedItem':
          return BaseResponseOfPagedResultOfVariantPagedItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPagedResultOfVoucherResponse':
          return BaseResponseOfPagedResultOfVoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPickListResponse':
          return BaseResponseOfPickListResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfPreviewOrderResponse':
          return BaseResponseOfPreviewOrderResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfProductFastLookResponse':
          return BaseResponseOfProductFastLookResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfProductInforResponse':
          return BaseResponseOfProductInforResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfProductResponse':
          return BaseResponseOfProductResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfProductVariantResponse':
          return BaseResponseOfProductVariantResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfProfileResponse':
          return BaseResponseOfProfileResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfReceiptResponse':
          return BaseResponseOfReceiptResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfRevenueSummaryResponse':
          return BaseResponseOfRevenueSummaryResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfReviewDetailResponse':
          return BaseResponseOfReviewDetailResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfReviewStatisticsResponse':
          return BaseResponseOfReviewStatisticsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfScentNoteResponse':
          return BaseResponseOfScentNoteResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfStockAdjustmentResponse':
          return BaseResponseOfStockAdjustmentResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfStockResponse':
          return BaseResponseOfStockResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfSupplierResponse':
          return BaseResponseOfSupplierResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfSwapDamagedStockResponse':
          return BaseResponseOfSwapDamagedStockResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfTokenResponse':
          return BaseResponseOfTokenResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfUserCredentialsResponse':
          return BaseResponseOfUserCredentialsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfUserOrderResponse':
          return BaseResponseOfUserOrderResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfVoucherResponse':
          return BaseResponseOfVoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfboolean':
          return BaseResponseOfboolean.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BaseResponseOfstring':
          return BaseResponseOfstring.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BatchDetailResponse':
          return BatchDetailResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BatchLookupResponse':
          return BatchLookupResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BatchResponse':
          return BatchResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BrandLookupItem':
          return BrandLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BrandResponse':
          return BrandResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BulkActionError':
          return BulkActionError.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BulkActionMetadata':
          return BulkActionMetadata.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BulkActionResultOfGuid':
          return BulkActionResultOfGuid.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BulkActionResultOfListOfTemporaryMediaResponse':
          return BulkActionResultOfListOfTemporaryMediaResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BulkActionResultOfstring':
          return BulkActionResultOfstring.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'BulkOperationResult':
          return BulkOperationResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CampaignPromotionItemResponse':
          return CampaignPromotionItemResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CampaignResponse':
          return CampaignResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CampaignStatus':
          
          
        case 'CampaignType':
          
          
        case 'CancelRequestStatus':
          
          
        case 'CarrierName':
          
          
        case 'CategoriesLookupItem':
          return CategoriesLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CategoryResponse':
          return CategoryResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConcentrationLookupDto':
          return ConcentrationLookupDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConcentrationResponse':
          return ConcentrationResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ConfirmPaymentRequest':
          return ConfirmPaymentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateAddressRequest':
          return CreateAddressRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateAttributeRequest':
          return CreateAttributeRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateAttributeValueRequest':
          return CreateAttributeValueRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateBatchRequest':
          return CreateBatchRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateBrandRequest':
          return CreateBrandRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateCampaignPromotionItemRequest':
          return CreateCampaignPromotionItemRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateCampaignRequest':
          return CreateCampaignRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateCampaignVoucherRequest':
          return CreateCampaignVoucherRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateCartItemRequest':
          return CreateCartItemRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateCategoryRequest':
          return CreateCategoryRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateConcentrationRequest':
          return CreateConcentrationRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateImportDetailRequest':
          return CreateImportDetailRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateImportTicketRequest':
          return CreateImportTicketRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateInStoreOrderRequest':
          return CreateInStoreOrderRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateOlfactoryFamilyRequest':
          return CreateOlfactoryFamilyRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateOrderDetailRequest':
          return CreateOrderDetailRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateOrderRequest':
          return CreateOrderRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateProductRequest':
          return CreateProductRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateReturnRequestDetailDto':
          return CreateReturnRequestDetailDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateReturnRequestDto':
          return CreateReturnRequestDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateReviewRequest':
          return CreateReviewRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateScentNoteRequest':
          return CreateScentNoteRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateStockAdjustmentDetailRequest':
          return CreateStockAdjustmentDetailRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateStockAdjustmentRequest':
          return CreateStockAdjustmentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateSupplierRequest':
          return CreateSupplierRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateVariantRequest':
          return CreateVariantRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CreateVoucherRequest':
          return CreateVoucherRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CustomerAttributePreferenceResponse':
          return CustomerAttributePreferenceResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CustomerFamilyPreferenceRespone':
          return CustomerFamilyPreferenceRespone.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'CustomerNotePreferenceResponse':
          return CustomerNotePreferenceResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'DeliveryMethod':
          
          
        case 'DiscountType':
          
          
        case 'DistrictResponse':
          return DistrictResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'EntityTagHeaderValue':
          return EntityTagHeaderValue.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ExcelTemplateResponse':
          return ExcelTemplateResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'FileContentResult':
          return FileContentResult.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ForgotPasswordRequest':
          return ForgotPasswordRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'FulfillOrderItemRequest':
          return FulfillOrderItemRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'FulfillOrderRequest':
          return FulfillOrderRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'Gender':
          
          
        case 'GetCartItemResponse':
          return GetCartItemResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetCartItemsResponse':
          return GetCartItemsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GetCartTotalResponse':
          return GetCartTotalResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'GoogleLoginRequest':
          return GoogleLoginRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImportDetailResponse':
          return ImportDetailResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImportStatus':
          
          
        case 'ImportTicketListItem':
          return ImportTicketListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ImportTicketResponse':
          return ImportTicketResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventoryLevelsResponse':
          return InventoryLevelsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'InventorySummaryResponse':
          return InventorySummaryResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LoginRequest':
          return LoginRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LoyaltyTransactionHistoryItemResponse':
          return LoyaltyTransactionHistoryItemResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LoyaltyTransactionTotalsResponse':
          return LoyaltyTransactionTotalsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'LoyaltyTransactionType':
          
          
        case 'ManualChangeRequest':
          return ManualChangeRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'MediaResponse':
          return MediaResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'NoteType':
          
          
        case 'OlfactoryFamilyResponse':
          return OlfactoryFamilyResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OlfactoryLookupResponse':
          return OlfactoryLookupResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OrderCancelRequestResponse':
          return OrderCancelRequestResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OrderDetailListItems':
          return OrderDetailListItems.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OrderDetailResponse':
          return OrderDetailResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OrderListItem':
          return OrderListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OrderResponse':
          return OrderResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'OrderStatus':
          
          
        case 'OrderType':
          
          
        case 'PagedResultOfAvailableVoucherResponse':
          return PagedResultOfAvailableVoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfBatchDetailResponse':
          return PagedResultOfBatchDetailResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfCampaignResponse':
          return PagedResultOfCampaignResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfImportTicketListItem':
          return PagedResultOfImportTicketListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfLoyaltyTransactionHistoryItemResponse':
          return PagedResultOfLoyaltyTransactionHistoryItemResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfOrderCancelRequestResponse':
          return PagedResultOfOrderCancelRequestResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfOrderListItem':
          return PagedResultOfOrderListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfProductListItem':
          return PagedResultOfProductListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfProductListItemWithVariants':
          return PagedResultOfProductListItemWithVariants.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfReviewListItem':
          return PagedResultOfReviewListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfStockAdjustmentListItem':
          return PagedResultOfStockAdjustmentListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfStockResponse':
          return PagedResultOfStockResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfUserVoucherResponse':
          return PagedResultOfUserVoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfVariantPagedItem':
          return PagedResultOfVariantPagedItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PagedResultOfVoucherResponse':
          return PagedResultOfVoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaymentInfoResponse':
          return PaymentInfoResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaymentInformation':
          return PaymentInformation.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PaymentMethod':
          
          
        case 'PaymentStatus':
          
          
        case 'PickListBatchInfo':
          return PickListBatchInfo.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PickListItemResponse':
          return PickListItemResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PickListResponse':
          return PickListResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PreviewOrderResponse':
          return PreviewOrderResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProblemDetails':
          return ProblemDetails.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProcessCancelRequest':
          return ProcessCancelRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProcessInitialReturnDto':
          return ProcessInitialReturnDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductAttributeDto':
          return ProductAttributeDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductAttributeResponse':
          return ProductAttributeResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductDailySaleFigureResponse':
          return ProductDailySaleFigureResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductFastLookResponse':
          return ProductFastLookResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductImageUploadItem':
          return ProductImageUploadItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductInforResponse':
          return ProductInforResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductListItem':
          return ProductListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductListItemWithVariants':
          return ProductListItemWithVariants.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductLookupItem':
          return ProductLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductOlfactoryFamilyResponse':
          return ProductOlfactoryFamilyResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductResponse':
          return ProductResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductScentNoteResponse':
          return ProductScentNoteResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProductVariantResponse':
          return ProductVariantResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ProfileResponse':
          return ProfileResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'PromotionType':
          
          
        case 'ProvinceResponse':
          return ProvinceResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReceiptItemDto':
          return ReceiptItemDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReceiptResponse':
          return ReceiptResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RecipientInfoResponse':
          return RecipientInfoResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RecipientInformation':
          return RecipientInformation.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RecordInspectionDetailDto':
          return RecordInspectionDetailDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RecordInspectionDto':
          return RecordInspectionDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RedeemVoucherRequest':
          return RedeemVoucherRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RedeemableVoucherResponse':
          return RedeemableVoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RegisterRequest':
          return RegisterRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RejectInspectionDto':
          return RejectInspectionDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReservedBatchResponse':
          return ReservedBatchResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ResetPasswordRequest':
          return ResetPasswordRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'RevenueSummaryResponse':
          return RevenueSummaryResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReviewDetailResponse':
          return ReviewDetailResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReviewListItem':
          return ReviewListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReviewResponse':
          return ReviewResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ReviewStatisticsResponse':
          return ReviewStatisticsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScentNoteDto':
          return ScentNoteDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScentNoteLookupResponse':
          return ScentNoteLookupResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ScentNoteResponse':
          return ScentNoteResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'ShippingInfoResponse':
          return ShippingInfoResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StaffLookupItem':
          return StaffLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StartInspectionDto':
          return StartInspectionDto.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StockAdjustmentDetailResponse':
          return StockAdjustmentDetailResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StockAdjustmentListItem':
          return StockAdjustmentListItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StockAdjustmentReason':
          
          
        case 'StockAdjustmentResponse':
          return StockAdjustmentResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StockAdjustmentStatus':
          
          
        case 'StockResponse':
          return StockResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'StockStatus':
          
          
        case 'StringSegment':
          return StringSegment.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SupplierLookupItem':
          return SupplierLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SupplierResponse':
          return SupplierResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SwapDamagedStockRequest':
          return SwapDamagedStockRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'SwapDamagedStockResponse':
          return SwapDamagedStockResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TemporaryMediaResponse':
          return TemporaryMediaResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TokenResponse':
          return TokenResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TopProductResponse':
          return TopProductResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'TransactionStatus':
          
          
        case 'UpdateAddressRequest':
          return UpdateAddressRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateAttributeRequest':
          return UpdateAttributeRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateAttributeValueRequest':
          return UpdateAttributeValueRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateBrandRequest':
          return UpdateBrandRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateCampaignPromotionItemRequest':
          return UpdateCampaignPromotionItemRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateCampaignRequest':
          return UpdateCampaignRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateCampaignStatusRequest':
          return UpdateCampaignStatusRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateCampaignVoucherRequest':
          return UpdateCampaignVoucherRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateCartItemRequest':
          return UpdateCartItemRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateCategoryRequest':
          return UpdateCategoryRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateConcentrationRequest':
          return UpdateConcentrationRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateImportDetailRequest':
          return UpdateImportDetailRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateImportRequest':
          return UpdateImportRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateImportStatusRequest':
          return UpdateImportStatusRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateNotePreferenceRequest':
          return UpdateNotePreferenceRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateOlfactoryFamilyRequest':
          return UpdateOlfactoryFamilyRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateOrderAddressRequest':
          return UpdateOrderAddressRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateOrderStatusRequest':
          return UpdateOrderStatusRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateProductRequest':
          return UpdateProductRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateProfileRequest':
          return UpdateProfileRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateScentNoteRequest':
          return UpdateScentNoteRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateStockAdjustmentStatusRequest':
          return UpdateStockAdjustmentStatusRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateSupplierRequest':
          return UpdateSupplierRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateVariantRequest':
          return UpdateVariantRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UpdateVoucherRequest':
          return UpdateVoucherRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserCancelOrderRequest':
          return UserCancelOrderRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserCredentialsResponse':
          return UserCredentialsResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserOrderResponse':
          return UserOrderResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'UserRole':
          
          
        case 'UserVoucherResponse':
          return UserVoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VariantDailySaleFigure':
          return VariantDailySaleFigure.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VariantFastLookResponse':
          return VariantFastLookResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VariantImageUploadItem':
          return VariantImageUploadItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VariantLookupItem':
          return VariantLookupItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VariantPagedItem':
          return VariantPagedItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VariantStatus':
          
          
        case 'VariantSummaryItem':
          return VariantSummaryItem.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VariantType':
          
          
        case 'VerifyImportDetailRequest':
          return VerifyImportDetailRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VerifyImportTicketRequest':
          return VerifyImportTicketRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VerifyStockAdjustmentDetailRequest':
          return VerifyStockAdjustmentDetailRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VerifyStockAdjustmentRequest':
          return VerifyStockAdjustmentRequest.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VoucherResponse':
          return VoucherResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
        case 'VoucherType':
          
          
        case 'WardResponse':
          return WardResponse.fromJson(value as Map<String, dynamic>) as ReturnType;
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