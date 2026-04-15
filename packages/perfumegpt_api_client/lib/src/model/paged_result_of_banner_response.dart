//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/banner_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paged_result_of_banner_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PagedResultOfBannerResponse {
  /// Returns a new [PagedResultOfBannerResponse] instance.
  PagedResultOfBannerResponse({

    required  this.items,

    required  this.pageNumber,

    required  this.pageSize,

    required  this.totalCount,

     this.totalPages,

     this.hasPreviousPage,

     this.hasNextPage,
  });

  @JsonKey(
    
    name: r'items',
    required: true,
    includeIfNull: false,
  )


  final List<BannerResponse> items;



  @JsonKey(
    
    name: r'pageNumber',
    required: true,
    includeIfNull: false,
  )


  final int pageNumber;



  @JsonKey(
    
    name: r'pageSize',
    required: true,
    includeIfNull: false,
  )


  final int pageSize;



  @JsonKey(
    
    name: r'totalCount',
    required: true,
    includeIfNull: false,
  )


  final int totalCount;



  @JsonKey(
    
    name: r'totalPages',
    required: false,
    includeIfNull: false,
  )


  final int? totalPages;



  @JsonKey(
    
    name: r'hasPreviousPage',
    required: false,
    includeIfNull: false,
  )


  final bool? hasPreviousPage;



  @JsonKey(
    
    name: r'hasNextPage',
    required: false,
    includeIfNull: false,
  )


  final bool? hasNextPage;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PagedResultOfBannerResponse &&
      other.items == items &&
      other.pageNumber == pageNumber &&
      other.pageSize == pageSize &&
      other.totalCount == totalCount &&
      other.totalPages == totalPages &&
      other.hasPreviousPage == hasPreviousPage &&
      other.hasNextPage == hasNextPage;

    @override
    int get hashCode =>
        items.hashCode +
        pageNumber.hashCode +
        pageSize.hashCode +
        totalCount.hashCode +
        totalPages.hashCode +
        hasPreviousPage.hashCode +
        hasNextPage.hashCode;

  factory PagedResultOfBannerResponse.fromJson(Map<String, dynamic> json) => _$PagedResultOfBannerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PagedResultOfBannerResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

