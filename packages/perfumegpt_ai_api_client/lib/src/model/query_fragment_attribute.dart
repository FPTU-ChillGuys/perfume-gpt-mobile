//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'query_fragment_attribute.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QueryFragmentAttribute {
  /// Returns a new [QueryFragmentAttribute] instance.
  QueryFragmentAttribute({

    required  this.type,

    required  this.attributeName,

    required  this.match,
  });

  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  )


  final QueryFragmentAttributeTypeEnum type;



      /// Tên loại thuộc tính (ví dụ: Nồng độ, Độ lưu hương)
  @JsonKey(
    
    name: r'attributeName',
    required: true,
    includeIfNull: false,
  )


  final String attributeName;



      /// Giá trị thuộc tính cần khớp
  @JsonKey(
    
    name: r'match',
    required: true,
    includeIfNull: false,
  )


  final String match;





    @override
    bool operator ==(Object other) => identical(this, other) || other is QueryFragmentAttribute &&
      other.type == type &&
      other.attributeName == attributeName &&
      other.match == match;

    @override
    int get hashCode =>
        type.hashCode +
        attributeName.hashCode +
        match.hashCode;

  factory QueryFragmentAttribute.fromJson(Map<String, dynamic> json) => _$QueryFragmentAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$QueryFragmentAttributeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum QueryFragmentAttributeTypeEnum {
@JsonValue(r'attribute')
attribute(r'attribute');

const QueryFragmentAttributeTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


