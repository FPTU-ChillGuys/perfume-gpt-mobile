//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_level4_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AddressLevel4Response {
  /// Returns a new [AddressLevel4Response] instance.
  AddressLevel4Response({

    required  this.data,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final List<String> data;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AddressLevel4Response &&
      other.data == data;

    @override
    int get hashCode =>
        data.hashCode;

  factory AddressLevel4Response.fromJson(Map<String, dynamic> json) => _$AddressLevel4ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddressLevel4ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

