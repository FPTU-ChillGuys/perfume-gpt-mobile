//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sales_metrics.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SalesMetrics {
  /// Returns a new [SalesMetrics] instance.
  SalesMetrics({

    required  this.last7DaysSales,

    required  this.last30DaysSales,

    required  this.trend,

    required  this.volatility,

    required  this.encodedData,
  });

      /// Tổng bán trong 7 ngày gần nhất
  @JsonKey(
    
    name: r'last7DaysSales',
    required: true,
    includeIfNull: false,
  )


  final num last7DaysSales;



      /// Tổng bán trong 30 ngày gần nhất
  @JsonKey(
    
    name: r'last30DaysSales',
    required: true,
    includeIfNull: false,
  )


  final num last30DaysSales;



      /// Xu hướng bán hàng
  @JsonKey(
    
    name: r'trend',
    required: true,
    includeIfNull: false,
  )


  final SalesMetricsTrendEnum trend;



      /// Độ biến động của doanh số
  @JsonKey(
    
    name: r'volatility',
    required: true,
    includeIfNull: false,
  )


  final SalesMetricsVolatilityEnum volatility;



      /// Dữ liệu bán hàng được encode (TOON format)
  @JsonKey(
    
    name: r'encodedData',
    required: true,
    includeIfNull: true,
  )


  final String? encodedData;





    @override
    bool operator ==(Object other) => identical(this, other) || other is SalesMetrics &&
      other.last7DaysSales == last7DaysSales &&
      other.last30DaysSales == last30DaysSales &&
      other.trend == trend &&
      other.volatility == volatility &&
      other.encodedData == encodedData;

    @override
    int get hashCode =>
        last7DaysSales.hashCode +
        last30DaysSales.hashCode +
        trend.hashCode +
        volatility.hashCode +
        (encodedData == null ? 0 : encodedData.hashCode);

  factory SalesMetrics.fromJson(Map<String, dynamic> json) => _$SalesMetricsFromJson(json);

  Map<String, dynamic> toJson() => _$SalesMetricsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Xu hướng bán hàng
enum SalesMetricsTrendEnum {
    /// Xu hướng bán hàng
@JsonValue(r'INCREASING')
INCREASING(r'INCREASING'),
    /// Xu hướng bán hàng
@JsonValue(r'STABLE')
STABLE(r'STABLE'),
    /// Xu hướng bán hàng
@JsonValue(r'DECLINING')
DECLINING(r'DECLINING');

const SalesMetricsTrendEnum(this.value);

final String value;

@override
String toString() => value;
}


/// Độ biến động của doanh số
enum SalesMetricsVolatilityEnum {
    /// Độ biến động của doanh số
@JsonValue(r'LOW')
LOW(r'LOW'),
    /// Độ biến động của doanh số
@JsonValue(r'MEDIUM')
MEDIUM(r'MEDIUM'),
    /// Độ biến động của doanh số
@JsonValue(r'HIGH')
HIGH(r'HIGH');

const SalesMetricsVolatilityEnum(this.value);

final String value;

@override
String toString() => value;
}


