//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paged_result.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PagedResult {
  /// Returns a new [PagedResult] instance.
  PagedResult({

    required  this.items,

    required  this.pageNumber,

    required  this.pageSize,

    required  this.totalCount,

    required  this.totalPages,
  });

      /// Danh sách bản ghi
  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false,
  )


  final List<String> items;



      /// Số trang hiện tại
  @JsonKey(
    
    name: r'pageNumber',
    required: true,
    includeIfNull: false,
  )


  final num pageNumber;



      /// Số bản ghi mỗi trang
  @JsonKey(
    
    name: r'pageSize',
    required: true,
    includeIfNull: false,
  )


  final num pageSize;



      /// Tổng số bản ghi
  @JsonKey(
    
    name: r'totalCount',
    required: true,
    includeIfNull: false,
  )


  final num totalCount;



      /// Tổng số trang
  @JsonKey(
    
    name: r'totalPages',
    required: true,
    includeIfNull: false,
  )


  final num totalPages;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PagedResult &&
      other.items == items &&
      other.pageNumber == pageNumber &&
      other.pageSize == pageSize &&
      other.totalCount == totalCount &&
      other.totalPages == totalPages;

    @override
    int get hashCode =>
        items.hashCode +
        pageNumber.hashCode +
        pageSize.hashCode +
        totalCount.hashCode +
        totalPages.hashCode;

  factory PagedResult.fromJson(Map<String, dynamic> json) => _$PagedResultFromJson(json);

  Map<String, dynamic> toJson() => _$PagedResultToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

