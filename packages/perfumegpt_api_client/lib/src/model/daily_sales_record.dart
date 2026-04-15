//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'daily_sales_record.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DailySalesRecord {
  /// Returns a new [DailySalesRecord] instance.
  DailySalesRecord({

    required  this.date,

    required  this.quantitySold,

    required  this.revenue,
  });

      /// Ngày bán hàng
  @JsonKey(
    
    name: r'date',
    required: true,
    includeIfNull: false,
  )


  final String date;



      /// Số lượng bán trong ngày
  @JsonKey(
    
    name: r'quantitySold',
    required: true,
    includeIfNull: false,
  )


  final num quantitySold;



      /// Doanh thu trong ngày
  @JsonKey(
    
    name: r'revenue',
    required: true,
    includeIfNull: false,
  )


  final num revenue;





    @override
    bool operator ==(Object other) => identical(this, other) || other is DailySalesRecord &&
      other.date == date &&
      other.quantitySold == quantitySold &&
      other.revenue == revenue;

    @override
    int get hashCode =>
        date.hashCode +
        quantitySold.hashCode +
        revenue.hashCode;

  factory DailySalesRecord.fromJson(Map<String, dynamic> json) => _$DailySalesRecordFromJson(json);

  Map<String, dynamic> toJson() => _$DailySalesRecordToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

