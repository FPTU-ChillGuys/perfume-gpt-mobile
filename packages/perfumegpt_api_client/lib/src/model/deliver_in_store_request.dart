//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deliver_in_store_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeliverInStoreRequest {
  /// Returns a new [DeliverInStoreRequest] instance.
  DeliverInStoreRequest({this.posSessionId});

  @JsonKey(name: r'posSessionId', required: false, includeIfNull: false)
  final String? posSessionId;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeliverInStoreRequest && other.posSessionId == posSessionId;

  @override
  int get hashCode => (posSessionId == null ? 0 : posSessionId.hashCode);

  factory DeliverInStoreRequest.fromJson(Map<String, dynamic> json) =>
      _$DeliverInStoreRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DeliverInStoreRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
