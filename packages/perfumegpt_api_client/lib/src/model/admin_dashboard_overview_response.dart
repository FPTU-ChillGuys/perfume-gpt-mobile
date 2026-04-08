//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/inventory_levels_response.dart';
import 'package:perfumegpt_api_client/src/model/revenue_summary_response.dart';
import 'package:perfumegpt_api_client/src/model/top_product_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'admin_dashboard_overview_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AdminDashboardOverviewResponse {
  /// Returns a new [AdminDashboardOverviewResponse] instance.
  AdminDashboardOverviewResponse({

     this.revenue,

     this.inventoryLevels,

    required  this.topProducts,
  });

  @JsonKey(
    
    name: r'revenue',
    required: false,
    includeIfNull: false,
  )


  final RevenueSummaryResponse? revenue;



  @JsonKey(
    
    name: r'inventoryLevels',
    required: false,
    includeIfNull: false,
  )


  final InventoryLevelsResponse? inventoryLevels;



  @JsonKey(
    
    name: r'topProducts',
    required: true,
    includeIfNull: false,
  )


  final List<TopProductResponse> topProducts;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AdminDashboardOverviewResponse &&
      other.revenue == revenue &&
      other.inventoryLevels == inventoryLevels &&
      other.topProducts == topProducts;

    @override
    int get hashCode =>
        revenue.hashCode +
        inventoryLevels.hashCode +
        topProducts.hashCode;

  factory AdminDashboardOverviewResponse.fromJson(Map<String, dynamic> json) => _$AdminDashboardOverviewResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdminDashboardOverviewResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

