//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'reorder_question_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReorderQuestionItem {
  /// Returns a new [ReorderQuestionItem] instance.
  ReorderQuestionItem({

    required  this.id,

    required  this.order,
  });

      /// ID câu hỏi
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Thứ tự mới
  @JsonKey(
    
    name: r'order',
    required: true,
    includeIfNull: false,
  )


  final num order;





    @override
    bool operator ==(Object other) => identical(this, other) || other is ReorderQuestionItem &&
      other.id == id &&
      other.order == order;

    @override
    int get hashCode =>
        id.hashCode +
        order.hashCode;

  factory ReorderQuestionItem.fromJson(Map<String, dynamic> json) => _$ReorderQuestionItemFromJson(json);

  Map<String, dynamic> toJson() => _$ReorderQuestionItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

