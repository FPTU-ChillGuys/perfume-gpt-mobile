//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/paged_result_of_loyalty_transaction_history_item_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_response_of_paged_result_of_loyalty_transaction_history_item_response.g.dart';

/// BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse
///
/// Properties:
/// * [payload] 
/// * [success] 
/// * [message] 
/// * [errors] 
/// * [errorType] 
@BuiltValue()
abstract class BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse implements Built<BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse, BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  PagedResultOfLoyaltyTransactionHistoryItemResponse? get payload;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'errors')
  BuiltList<String>? get errors;

  @BuiltValueField(wireName: r'errorType')
  int? get errorType;

  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse._();

  factory BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse([void updates(BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseBuilder b)]) = _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse> get serializer => _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseSerializer();
}

class _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseSerializer implements PrimitiveSerializer<BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse> {
  @override
  final Iterable<Type> types = const [BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse, _$BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse];

  @override
  final String wireName = r'BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType.nullable(PagedResultOfLoyaltyTransactionHistoryItemResponse),
      );
    }
    if (object.success != null) {
      yield r'success';
      yield serializers.serialize(
        object.success,
        specifiedType: const FullType(bool),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.errors != null) {
      yield r'errors';
      yield serializers.serialize(
        object.errors,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.errorType != null) {
      yield r'errorType';
      yield serializers.serialize(
        object.errorType,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PagedResultOfLoyaltyTransactionHistoryItemResponse),
          ) as PagedResultOfLoyaltyTransactionHistoryItemResponse?;
          if (valueDes == null) continue;
          result.payload.replace(valueDes);
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'errors':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.errors.replace(valueDes);
          break;
        case r'errorType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.errorType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseResponseOfPagedResultOfLoyaltyTransactionHistoryItemResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

