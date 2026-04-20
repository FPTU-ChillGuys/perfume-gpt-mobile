//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_text_log_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SearchTextLogRequest {
  /// Returns a new [SearchTextLogRequest] instance.
  SearchTextLogRequest({this.userId, required this.searchText});

  /// UUID của user cần gắn log (optional, dùng khi request không có Bearer token)
  @JsonKey(name: r'userId', required: false, includeIfNull: false)
  final String? userId;

  /// Từ khóa tìm kiếm cần ghi log
  @JsonKey(name: r'searchText', required: true, includeIfNull: false)
  final String searchText;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SearchTextLogRequest &&
          other.userId == userId &&
          other.searchText == searchText;

  @override
  int get hashCode =>
      (userId == null ? 0 : userId.hashCode) + searchText.hashCode;

  factory SearchTextLogRequest.fromJson(Map<String, dynamic> json) =>
      _$SearchTextLogRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SearchTextLogRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
