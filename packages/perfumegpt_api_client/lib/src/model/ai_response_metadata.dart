//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ai_response_metadata.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AIResponseMetadata {
  /// Returns a new [AIResponseMetadata] instance.
  AIResponseMetadata({

    required  this.processingTimeMs,

     this.inputTokenEstimate,
  });

      /// Thời gian xử lý (milli giây)
  @JsonKey(
    
    name: r'processingTimeMs',
    required: true,
    includeIfNull: false,
  )


  final num processingTimeMs;



      /// Ước tính số token đầu vào
  @JsonKey(
    
    name: r'inputTokenEstimate',
    required: false,
    includeIfNull: false,
  )


  final num? inputTokenEstimate;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AIResponseMetadata &&
      other.processingTimeMs == processingTimeMs &&
      other.inputTokenEstimate == inputTokenEstimate;

    @override
    int get hashCode =>
        processingTimeMs.hashCode +
        inputTokenEstimate.hashCode;

  factory AIResponseMetadata.fromJson(Map<String, dynamic> json) => _$AIResponseMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$AIResponseMetadataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

