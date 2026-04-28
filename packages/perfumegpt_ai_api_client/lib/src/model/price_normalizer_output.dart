//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'price_normalizer_output.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PriceNormalizerOutput {
  /// Returns a new [PriceNormalizerOutput] instance.
  PriceNormalizerOutput({

     this.min,

     this.max,

     this.operator_,
  });

      /// Giá tối thiểu (VND)
  @JsonKey(
    
    name: r'min',
    required: false,
    includeIfNull: false,
  )


  final num? min;



      /// Giá tối đa (VND)
  @JsonKey(
    
    name: r'max',
    required: false,
    includeIfNull: false,
  )


  final num? max;



      /// Toán tử so sánh
  @JsonKey(
    
    name: r'operator',
    required: false,
    includeIfNull: false,
  )


  final PriceNormalizerOutputOperator_Enum? operator_;





    @override
    bool operator ==(Object other) => identical(this, other) || other is PriceNormalizerOutput &&
      other.min == min &&
      other.max == max &&
      other.operator_ == operator_;

    @override
    int get hashCode =>
        min.hashCode +
        max.hashCode +
        operator_.hashCode;

  factory PriceNormalizerOutput.fromJson(Map<String, dynamic> json) => _$PriceNormalizerOutputFromJson(json);

  Map<String, dynamic> toJson() => _$PriceNormalizerOutputToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Toán tử so sánh
enum PriceNormalizerOutputOperator_Enum {
    /// Toán tử so sánh
@JsonValue(r'lt')
lt(r'lt'),
    /// Toán tử so sánh
@JsonValue(r'lte')
lte(r'lte'),
    /// Toán tử so sánh
@JsonValue(r'gt')
gt(r'gt'),
    /// Toán tử so sánh
@JsonValue(r'gte')
gte(r'gte'),
    /// Toán tử so sánh
@JsonValue(r'between')
between(r'between');

const PriceNormalizerOutputOperator_Enum(this.value);

final String value;

@override
String toString() => value;
}


