//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'string_segment.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StringSegment {
  /// Returns a new [StringSegment] instance.
  StringSegment({

     this.buffer,

     this.offset,

     this.length,

     this.value,

     this.hasValue,
  });

  @JsonKey(
    
    name: r'buffer',
    required: false,
    includeIfNull: false,
  )


  final String? buffer;



  @JsonKey(
    
    name: r'offset',
    required: false,
    includeIfNull: false,
  )


  final int? offset;



  @JsonKey(
    
    name: r'length',
    required: false,
    includeIfNull: false,
  )


  final int? length;



  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false,
  )


  final String? value;



  @JsonKey(
    
    name: r'hasValue',
    required: false,
    includeIfNull: false,
  )


  final bool? hasValue;





    @override
    bool operator ==(Object other) => identical(this, other) || other is StringSegment &&
      other.buffer == buffer &&
      other.offset == offset &&
      other.length == length &&
      other.value == value &&
      other.hasValue == hasValue;

    @override
    int get hashCode =>
        (buffer == null ? 0 : buffer.hashCode) +
        offset.hashCode +
        length.hashCode +
        (value == null ? 0 : value.hashCode) +
        hasValue.hashCode;

  factory StringSegment.fromJson(Map<String, dynamic> json) => _$StringSegmentFromJson(json);

  Map<String, dynamic> toJson() => _$StringSegmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

