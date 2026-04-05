//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bulk_action_error.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BulkActionError {
  /// Returns a new [BulkActionError] instance.
  BulkActionError({this.id, required this.errorMessage});

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'errorMessage', required: true, includeIfNull: false)
  final String errorMessage;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BulkActionError &&
          other.id == id &&
          other.errorMessage == errorMessage;

  @override
  int get hashCode => id.hashCode + errorMessage.hashCode;

  factory BulkActionError.fromJson(Map<String, dynamic> json) =>
      _$BulkActionErrorFromJson(json);

  Map<String, dynamic> toJson() => _$BulkActionErrorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
