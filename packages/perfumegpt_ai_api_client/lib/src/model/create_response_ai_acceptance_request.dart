//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'create_response_ai_acceptance_request.g.dart';

@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateResponseAIAcceptanceRequest {
  /// Returns a new [CreateResponseAIAcceptanceRequest] instance.
  CreateResponseAIAcceptanceRequest({
    required this.contextType,

    this.sourceRefId,

    this.productIds,

    this.visibleInHours = 24,

    this.metadata,
  });

  /// Ngữ cảnh phát sinh AI acceptance
  @JsonKey(name: r'contextType', required: true, includeIfNull: false)
  final CreateResponseAIAcceptanceRequestContextTypeEnum contextType;

  /// Mã tham chiếu nguồn (conversationId/surveyId/...)
  @JsonKey(name: r'sourceRefId', required: false, includeIfNull: false)
  final String? sourceRefId;

  /// Danh sách id sản phẩm trong response
  @JsonKey(name: r'productIds', required: false, includeIfNull: false)
  final List<String>? productIds;

  /// Số giờ delay trước khi false được xem là no-click
  @JsonKey(
    defaultValue: 24,
    name: r'visibleInHours',
    required: false,
    includeIfNull: false,
  )
  final num? visibleInHours;

  /// Metadata mở rộng
  @JsonKey(name: r'metadata', required: false, includeIfNull: false)
  final Object? metadata;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CreateResponseAIAcceptanceRequest &&
          other.contextType == contextType &&
          other.sourceRefId == sourceRefId &&
          other.productIds == productIds &&
          other.visibleInHours == visibleInHours &&
          other.metadata == metadata;

  @override
  int get hashCode =>
      contextType.hashCode +
      sourceRefId.hashCode +
      productIds.hashCode +
      visibleInHours.hashCode +
      metadata.hashCode;

  factory CreateResponseAIAcceptanceRequest.fromJson(
    Map<String, dynamic> json,
  ) => _$CreateResponseAIAcceptanceRequestFromJson(json);

  Map<String, dynamic> toJson() =>
      _$CreateResponseAIAcceptanceRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

/// Ngữ cảnh phát sinh AI acceptance
enum CreateResponseAIAcceptanceRequestContextTypeEnum {
  /// Ngữ cảnh phát sinh AI acceptance
  @JsonValue(r'cart_legacy')
  cartLegacy(r'cart_legacy'),

  /// Ngữ cảnh phát sinh AI acceptance
  @JsonValue(r'chatbot')
  chatbot(r'chatbot'),

  /// Ngữ cảnh phát sinh AI acceptance
  @JsonValue(r'survey')
  survey(r'survey'),

  /// Ngữ cảnh phát sinh AI acceptance
  @JsonValue(r'trend')
  trend(r'trend'),

  /// Ngữ cảnh phát sinh AI acceptance
  @JsonValue(r'recommendation')
  recommendation(r'recommendation'),

  /// Ngữ cảnh phát sinh AI acceptance
  @JsonValue(r'repurchase')
  repurchase(r'repurchase');

  const CreateResponseAIAcceptanceRequestContextTypeEnum(this.value);

  final String value;

  @override
  String toString() => value;
}
