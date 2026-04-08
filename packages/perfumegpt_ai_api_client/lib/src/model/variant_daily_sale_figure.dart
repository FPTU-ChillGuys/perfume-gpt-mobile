//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'variant_daily_sale_figure.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VariantDailySaleFigure {
  /// Returns a new [VariantDailySaleFigure] instance.
  VariantDailySaleFigure({

     this.variantId,

    required  this.variantName,

     this.date,

     this.quantitySold,
  });

  @JsonKey(
    
    name: r'variantId',
    required: false,
    includeIfNull: false,
  )


  final String? variantId;



  @JsonKey(
    
    name: r'variantName',
    required: true,
    includeIfNull: false,
  )


  final String variantName;



  @JsonKey(
    
    name: r'date',
    required: false,
    includeIfNull: false,
  )


  final DateTime? date;



  @JsonKey(
    
    name: r'quantitySold',
    required: false,
    includeIfNull: false,
  )


  final int? quantitySold;





    @override
    bool operator ==(Object other) => identical(this, other) || other is VariantDailySaleFigure &&
      other.variantId == variantId &&
      other.variantName == variantName &&
      other.date == date &&
      other.quantitySold == quantitySold;

    @override
    int get hashCode =>
        variantId.hashCode +
        variantName.hashCode +
        date.hashCode +
        quantitySold.hashCode;

  factory VariantDailySaleFigure.fromJson(Map<String, dynamic> json) => _$VariantDailySaleFigureFromJson(json);

  Map<String, dynamic> toJson() => _$VariantDailySaleFigureToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

