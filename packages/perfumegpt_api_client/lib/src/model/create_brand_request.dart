//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_brand_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateBrandRequest {
  /// Returns a new [CreateBrandRequest] instance.
  CreateBrandRequest({

    required  this.name,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;





    @override
    bool operator ==(Object other) => identical(this, other) || other is CreateBrandRequest &&
      other.name == name;

    @override
    int get hashCode =>
        name.hashCode;

  factory CreateBrandRequest.fromJson(Map<String, dynamic> json) => _$CreateBrandRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateBrandRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

