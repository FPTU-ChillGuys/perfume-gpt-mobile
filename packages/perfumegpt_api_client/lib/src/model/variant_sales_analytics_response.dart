//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/daily_sales_record.dart';
import 'package:perfumegpt_api_client/src/model/sales_metrics.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variant_sales_analytics_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VariantSalesAnalyticsResponse {
  /// Returns a new [VariantSalesAnalyticsResponse] instance.
  VariantSalesAnalyticsResponse({

    required  this.variantId,

    required  this.sku,

    required  this.productName,

    required  this.volumeMl,

    required  this.type,

    required  this.basePrice,

    required  this.status,

    required  this.concentrationName,

    required  this.dailySalesData,

    required  this.totalQuantitySold,

    required  this.totalRevenue,

    required  this.averageDailySales,

    required  this.periodStartDate,

    required  this.periodEndDate,

    required  this.daysWithSalesCount,

    required  this.salesMetrics,
  });

      /// ID variant
  @JsonKey(
    
    name: r'variantId',
    required: true,
    includeIfNull: false,
  )


  final String variantId;



      /// SKU của variant
  @JsonKey(
    
    name: r'sku',
    required: true,
    includeIfNull: false,
  )


  final String sku;



      /// Tên sản phẩm
  @JsonKey(
    
    name: r'productName',
    required: true,
    includeIfNull: false,
  )


  final String productName;



      /// Dung tích (ml)
  @JsonKey(
    
    name: r'volumeMl',
    required: true,
    includeIfNull: false,
  )


  final num volumeMl;



      /// Loại variant
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  )


  final String type;



      /// Giá gốc
  @JsonKey(
    
    name: r'basePrice',
    required: true,
    includeIfNull: false,
  )


  final num basePrice;



      /// Trạng thái
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final String status;



      /// Tên nồng độ
  @JsonKey(
    
    name: r'concentrationName',
    required: true,
    includeIfNull: true,
  )


  final Object? concentrationName;



      /// Dữ liệu bán hàng theo ngày
  @JsonKey(
    
    name: r'dailySalesData',
    required: true,
    includeIfNull: false,
  )


  final List<DailySalesRecord> dailySalesData;



      /// Tổng số lượng bán trong 2 tháng
  @JsonKey(
    
    name: r'totalQuantitySold',
    required: true,
    includeIfNull: false,
  )


  final num totalQuantitySold;



      /// Tổng doanh thu trong 2 tháng
  @JsonKey(
    
    name: r'totalRevenue',
    required: true,
    includeIfNull: false,
  )


  final num totalRevenue;



      /// Trung bình số lượng bán mỗi ngày
  @JsonKey(
    
    name: r'averageDailySales',
    required: true,
    includeIfNull: false,
  )


  final num averageDailySales;



      /// Ngày bắt đầu phân tích
  @JsonKey(
    
    name: r'periodStartDate',
    required: true,
    includeIfNull: false,
  )


  final String periodStartDate;



      /// Ngày kết thúc phân tích
  @JsonKey(
    
    name: r'periodEndDate',
    required: true,
    includeIfNull: false,
  )


  final String periodEndDate;



      /// Số ngày có dữ liệu bán hàng
  @JsonKey(
    
    name: r'daysWithSalesCount',
    required: true,
    includeIfNull: false,
  )


  final num daysWithSalesCount;



      /// Metrics tối ưu cho LLM dự đoán restock
  @JsonKey(
    
    name: r'salesMetrics',
    required: true,
    includeIfNull: false,
  )


  final SalesMetrics salesMetrics;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VariantSalesAnalyticsResponse &&
      other.variantId == variantId &&
      other.sku == sku &&
      other.productName == productName &&
      other.volumeMl == volumeMl &&
      other.type == type &&
      other.basePrice == basePrice &&
      other.status == status &&
      other.concentrationName == concentrationName &&
      other.dailySalesData == dailySalesData &&
      other.totalQuantitySold == totalQuantitySold &&
      other.totalRevenue == totalRevenue &&
      other.averageDailySales == averageDailySales &&
      other.periodStartDate == periodStartDate &&
      other.periodEndDate == periodEndDate &&
      other.daysWithSalesCount == daysWithSalesCount &&
      other.salesMetrics == salesMetrics;

    @override
    int get hashCode =>
        variantId.hashCode +
        sku.hashCode +
        productName.hashCode +
        volumeMl.hashCode +
        type.hashCode +
        basePrice.hashCode +
        status.hashCode +
        (concentrationName == null ? 0 : concentrationName.hashCode) +
        dailySalesData.hashCode +
        totalQuantitySold.hashCode +
        totalRevenue.hashCode +
        averageDailySales.hashCode +
        periodStartDate.hashCode +
        periodEndDate.hashCode +
        daysWithSalesCount.hashCode +
        salesMetrics.hashCode;

  factory VariantSalesAnalyticsResponse.fromJson(Map<String, dynamic> json) => _$VariantSalesAnalyticsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VariantSalesAnalyticsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

