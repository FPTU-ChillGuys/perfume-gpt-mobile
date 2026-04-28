//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_ai_api_client/src/model/gender_normalizer_output.dart';
import 'package:perfumegpt_ai_api_client/src/model/year_normalizer_output.dart';
import 'package:perfumegpt_ai_api_client/src/model/price_normalizer_output.dart';
import 'package:perfumegpt_ai_api_client/src/model/origin_normalizer_output.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'normalized_query_filters.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class NormalizedQueryFilters {
  /// Returns a new [NormalizedQueryFilters] instance.
  NormalizedQueryFilters({

     this.price,

     this.gender,

     this.year,

     this.origin,
  });

  @JsonKey(
    
    name: r'price',
    required: false,
    includeIfNull: false,
  )


  final PriceNormalizerOutput? price;



  @JsonKey(
    
    name: r'gender',
    required: false,
    includeIfNull: false,
  )


  final GenderNormalizerOutput? gender;



  @JsonKey(
    
    name: r'year',
    required: false,
    includeIfNull: false,
  )


  final YearNormalizerOutput? year;



  @JsonKey(
    
    name: r'origin',
    required: false,
    includeIfNull: false,
  )


  final OriginNormalizerOutput? origin;





    @override
    bool operator ==(Object other) => identical(this, other) || other is NormalizedQueryFilters &&
      other.price == price &&
      other.gender == gender &&
      other.year == year &&
      other.origin == origin;

    @override
    int get hashCode =>
        price.hashCode +
        gender.hashCode +
        year.hashCode +
        origin.hashCode;

  factory NormalizedQueryFilters.fromJson(Map<String, dynamic> json) => _$NormalizedQueryFiltersFromJson(json);

  Map<String, dynamic> toJson() => _$NormalizedQueryFiltersToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

