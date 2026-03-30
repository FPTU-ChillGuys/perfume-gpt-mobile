//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_brand_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateBrandRequest {
  /// Returns a new [UpdateBrandRequest] instance.
  UpdateBrandRequest({

     this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
  )


  final String? name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is UpdateBrandRequest &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory UpdateBrandRequest.fromJson(Map<String, dynamic> json) => _$UpdateBrandRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateBrandRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

