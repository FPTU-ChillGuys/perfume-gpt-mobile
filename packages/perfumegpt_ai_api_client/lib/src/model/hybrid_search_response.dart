//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/product_with_variants_response.dart';
import 'package:perfumegpt_ai_api_client/src/model/normalized_query_filters.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'hybrid_search_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HybridSearchResponse {
  /// Returns a new [HybridSearchResponse] instance.
  HybridSearchResponse({
    required this.items,

    required this.pageNumber,

    required this.pageSize,

    required this.totalCount,

    required this.totalPages,

    this.queryFilters,

    required this.vectorSimilarity,
  });

  /// Danh sách bản ghi
  @JsonKey(name: r'items', required: true, includeIfNull: false)
  final List<ProductWithVariantsResponse> items;

  /// Số trang hiện tại
  @JsonKey(name: r'pageNumber', required: true, includeIfNull: false)
  final num pageNumber;

  /// Số bản ghi mỗi trang
  @JsonKey(name: r'pageSize', required: true, includeIfNull: false)
  final num pageSize;

  /// Tổng số bản ghi
  @JsonKey(name: r'totalCount', required: true, includeIfNull: false)
  final num totalCount;

  /// Tổng số trang
  @JsonKey(name: r'totalPages', required: true, includeIfNull: false)
  final num totalPages;

  /// Filters found in query
  @JsonKey(name: r'queryFilters', required: false, includeIfNull: false)
  final NormalizedQueryFilters? queryFilters;

  /// Whether vector similarity was used
  @JsonKey(name: r'vectorSimilarity', required: true, includeIfNull: false)
  final bool vectorSimilarity;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HybridSearchResponse &&
          other.items == items &&
          other.pageNumber == pageNumber &&
          other.pageSize == pageSize &&
          other.totalCount == totalCount &&
          other.totalPages == totalPages &&
          other.queryFilters == queryFilters &&
          other.vectorSimilarity == vectorSimilarity;

  @override
  int get hashCode =>
      items.hashCode +
      pageNumber.hashCode +
      pageSize.hashCode +
      totalCount.hashCode +
      totalPages.hashCode +
      (queryFilters == null ? 0 : queryFilters.hashCode) +
      vectorSimilarity.hashCode;

  factory HybridSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$HybridSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$HybridSearchResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
