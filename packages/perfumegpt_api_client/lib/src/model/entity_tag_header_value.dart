//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/string_segment.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'entity_tag_header_value.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class EntityTagHeaderValue {
  /// Returns a new [EntityTagHeaderValue] instance.
  EntityTagHeaderValue({

     this.tag,

     this.isWeak,
  });

  @JsonKey(
    
    name: r'tag',
    required: false,
    includeIfNull: false,
  )


  final StringSegment? tag;



  @JsonKey(
    
    name: r'isWeak',
    required: false,
    includeIfNull: false,
  )


  final bool? isWeak;





    @override
    bool operator ==(Object other) => identical(this, other) || other is EntityTagHeaderValue &&
      other.tag == tag &&
      other.isWeak == isWeak;

    @override
    int get hashCode =>
        tag.hashCode +
        isWeak.hashCode;

  factory EntityTagHeaderValue.fromJson(Map<String, dynamic> json) => _$EntityTagHeaderValueFromJson(json);

  Map<String, dynamic> toJson() => _$EntityTagHeaderValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

