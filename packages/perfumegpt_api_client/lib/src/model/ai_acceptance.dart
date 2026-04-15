//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';

part 'ai_acceptance.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AIAcceptance {
  /// Returns a new [AIAcceptance] instance.
  AIAcceptance({

    required  this.id,

    required  this.createdAt,

    required  this.updatedAt,

    required  this.isActive,

    required  this.userId,

    required  this.cartItemId,

    required  this.responseId,

    required  this.contextType,

    required  this.sourceRefId,

    required  this.productIdsJson,

    required  this.metadataJson,

    required  this.visibleAfterAt,

    required  this.clickedAt,

    required  this.isAccepted,
  });

      /// ID duy nhất (UUID)
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// Ngày tạo bản ghi
  @JsonKey(
    
    name: r'createdAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime createdAt;



      /// Ngày cập nhật gần nhất
  @JsonKey(
    
    name: r'updatedAt',
    required: true,
    includeIfNull: false,
  )


  final DateTime updatedAt;



      /// Trạng thái hoạt động
  @JsonKey(
    
    name: r'isActive',
    required: true,
    includeIfNull: false,
  )


  final bool isActive;



      /// ID người dùng
  @JsonKey(
    
    name: r'userId',
    required: true,
    includeIfNull: false,
  )


  final Object userId;



      /// Id của cart item nếu có liên quan
  @JsonKey(
    
    name: r'cartItemId',
    required: true,
    includeIfNull: true,
  )


  final Object? cartItemId;



      /// ID acceptance cho một response (dùng để nhóm theo lần phản hồi)
  @JsonKey(
    
    name: r'responseId',
    required: true,
    includeIfNull: true,
  )


  final Object? responseId;



      /// Ngữ cảnh phát sinh acceptance (chatbot/survey/trend/recommendation/repurchase/cart_legacy)
  @JsonKey(
    
    name: r'contextType',
    required: true,
    includeIfNull: true,
  )


  final Object? contextType;



      /// Mã tham chiếu nguồn (conversationId, surveyId, ...) nếu có
  @JsonKey(
    
    name: r'sourceRefId',
    required: true,
    includeIfNull: true,
  )


  final Object? sourceRefId;



      /// Danh sách product id dưới dạng JSON string
  @JsonKey(
    
    name: r'productIdsJson',
    required: true,
    includeIfNull: true,
  )


  final Object? productIdsJson;



      /// Metadata mở rộng dưới dạng JSON string
  @JsonKey(
    
    name: r'metadataJson',
    required: true,
    includeIfNull: true,
  )


  final Object? metadataJson;



      /// Thời điểm false no-click được phép hiển thị
  @JsonKey(
    
    name: r'visibleAfterAt',
    required: true,
    includeIfNull: true,
  )


  final Object? visibleAfterAt;



      /// Thời điểm người dùng click chấp nhận
  @JsonKey(
    
    name: r'clickedAt',
    required: true,
    includeIfNull: true,
  )


  final Object? clickedAt;



      /// Trạng thái chấp nhận AI
  @JsonKey(
    
    name: r'isAccepted',
    required: true,
    includeIfNull: false,
  )


  final bool isAccepted;





    @override
    bool operator ==(Object other) => identical(this, other) || other is AIAcceptance &&
      other.id == id &&
      other.createdAt == createdAt &&
      other.updatedAt == updatedAt &&
      other.isActive == isActive &&
      other.userId == userId &&
      other.cartItemId == cartItemId &&
      other.responseId == responseId &&
      other.contextType == contextType &&
      other.sourceRefId == sourceRefId &&
      other.productIdsJson == productIdsJson &&
      other.metadataJson == metadataJson &&
      other.visibleAfterAt == visibleAfterAt &&
      other.clickedAt == clickedAt &&
      other.isAccepted == isAccepted;

    @override
    int get hashCode =>
        id.hashCode +
        createdAt.hashCode +
        updatedAt.hashCode +
        isActive.hashCode +
        userId.hashCode +
        (cartItemId == null ? 0 : cartItemId.hashCode) +
        (responseId == null ? 0 : responseId.hashCode) +
        (contextType == null ? 0 : contextType.hashCode) +
        (sourceRefId == null ? 0 : sourceRefId.hashCode) +
        (productIdsJson == null ? 0 : productIdsJson.hashCode) +
        (metadataJson == null ? 0 : metadataJson.hashCode) +
        (visibleAfterAt == null ? 0 : visibleAfterAt.hashCode) +
        (clickedAt == null ? 0 : clickedAt.hashCode) +
        isAccepted.hashCode;

  factory AIAcceptance.fromJson(Map<String, dynamic> json) => _$AIAcceptanceFromJson(json);

  Map<String, dynamic> toJson() => _$AIAcceptanceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

