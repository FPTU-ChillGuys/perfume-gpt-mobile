//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'year_normalizer_output.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class YearNormalizerOutput {
  /// Returns a new [YearNormalizerOutput] instance.
  YearNormalizerOutput({

     this.year,

     this.operator_,
  });

      /// Năm ra mắt
  @JsonKey(
    
    name: r'year',
    required: false,
    includeIfNull: false,
  )


  final num? year;



      /// Toán tử so sánh
  @JsonKey(
    
    name: r'operator',
    required: false,
    includeIfNull: false,
  )


  final YearNormalizerOutputOperator_Enum? operator_;





    @override
    bool operator ==(Object other) => identical(this, other) || other is YearNormalizerOutput &&
      other.year == year &&
      other.operator_ == operator_;

    @override
    int get hashCode =>
        year.hashCode +
        operator_.hashCode;

  factory YearNormalizerOutput.fromJson(Map<String, dynamic> json) => _$YearNormalizerOutputFromJson(json);

  Map<String, dynamic> toJson() => _$YearNormalizerOutputToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// Toán tử so sánh
enum YearNormalizerOutputOperator_Enum {
    /// Toán tử so sánh
@JsonValue(r'eq')
eq(r'eq'),
    /// Toán tử so sánh
@JsonValue(r'gte')
gte(r'gte'),
    /// Toán tử so sánh
@JsonValue(r'lte')
lte(r'lte'),
    /// Toán tử so sánh
@JsonValue(r'newer')
newer(r'newer'),
    /// Toán tử so sánh
@JsonValue(r'older')
older(r'older');

const YearNormalizerOutputOperator_Enum(this.value);

final String value;

@override
String toString() => value;
}


