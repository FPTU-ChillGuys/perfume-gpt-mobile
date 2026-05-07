//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ai_acceptance_response.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AIAcceptanceResponse {
  /// Returns a new [AIAcceptanceResponse] instance.
  AIAcceptanceResponse({
    required this.id,

    required this.createdAt,

    required this.updatedAt,

    required this.isActive,

    this.responseId,

    this.contextType,

    this.sourceRefId,

    this.productIdsJson,

    this.metadataJson,

    this.visibleAfterAt,

    this.clickedAt,

    this.isAccepted,

    required this.status,
  });

  @JsonKey(name: r'id', required: true, includeIfNull: false)
  final String id;

  @JsonKey(name: r'createdAt', required: true, includeIfNull: false)
  final DateTime createdAt;

  @JsonKey(name: r'updatedAt', required: true, includeIfNull: false)
  final DateTime updatedAt;

  @JsonKey(name: r'isActive', required: true, includeIfNull: false)
  final bool isActive;

  @JsonKey(name: r'responseId', required: false, includeIfNull: false)
  final Object? responseId;

  @JsonKey(name: r'contextType', required: false, includeIfNull: false)
  final Object? contextType;

  @JsonKey(name: r'sourceRefId', required: false, includeIfNull: false)
  final Object? sourceRefId;

  @JsonKey(name: r'productIdsJson', required: false, includeIfNull: false)
  final Object? productIdsJson;

  @JsonKey(name: r'metadataJson', required: false, includeIfNull: false)
  final Object? metadataJson;

  @JsonKey(name: r'visibleAfterAt', required: false, includeIfNull: false)
  final Object? visibleAfterAt;

  @JsonKey(name: r'clickedAt', required: false, includeIfNull: false)
  final Object? clickedAt;

  @JsonKey(name: r'isAccepted', required: false, includeIfNull: false)
  final bool? isAccepted;

  /// Trạng thái computed: accepted | rejected | pending
  @JsonKey(name: r'status', required: true, includeIfNull: false)
  final String status;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AIAcceptanceResponse &&
          other.id == id &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.isActive == isActive &&
          other.responseId == responseId &&
          other.contextType == contextType &&
          other.sourceRefId == sourceRefId &&
          other.productIdsJson == productIdsJson &&
          other.metadataJson == metadataJson &&
          other.visibleAfterAt == visibleAfterAt &&
          other.clickedAt == clickedAt &&
          other.isAccepted == isAccepted &&
          other.status == status;

  @override
  int get hashCode =>
      id.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      isActive.hashCode +
      (responseId == null ? 0 : responseId.hashCode) +
      (contextType == null ? 0 : contextType.hashCode) +
      (sourceRefId == null ? 0 : sourceRefId.hashCode) +
      (productIdsJson == null ? 0 : productIdsJson.hashCode) +
      (metadataJson == null ? 0 : metadataJson.hashCode) +
      (visibleAfterAt == null ? 0 : visibleAfterAt.hashCode) +
      (clickedAt == null ? 0 : clickedAt.hashCode) +
      isAccepted.hashCode +
      status.hashCode;

  factory AIAcceptanceResponse.fromJson(Map<String, dynamic> json) =>
      _$AIAcceptanceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AIAcceptanceResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
