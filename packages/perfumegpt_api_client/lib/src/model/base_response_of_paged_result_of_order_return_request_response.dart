//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/paged_result_of_order_return_request_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_response_of_paged_result_of_order_return_request_response.g.dart';

/// BaseResponseOfPagedResultOfOrderReturnRequestResponse
///
/// Properties:
/// * [payload] 
/// * [success] 
/// * [message] 
/// * [errors] 
/// * [errorType] 
@BuiltValue()
abstract class BaseResponseOfPagedResultOfOrderReturnRequestResponse implements Built<BaseResponseOfPagedResultOfOrderReturnRequestResponse, BaseResponseOfPagedResultOfOrderReturnRequestResponseBuilder> {
  @BuiltValueField(wireName: r'payload')
  PagedResultOfOrderReturnRequestResponse? get payload;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'errors')
  BuiltList<String>? get errors;

  @BuiltValueField(wireName: r'errorType')
  int? get errorType;

  BaseResponseOfPagedResultOfOrderReturnRequestResponse._();

  factory BaseResponseOfPagedResultOfOrderReturnRequestResponse([void updates(BaseResponseOfPagedResultOfOrderReturnRequestResponseBuilder b)]) = _$BaseResponseOfPagedResultOfOrderReturnRequestResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseResponseOfPagedResultOfOrderReturnRequestResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseResponseOfPagedResultOfOrderReturnRequestResponse> get serializer => _$BaseResponseOfPagedResultOfOrderReturnRequestResponseSerializer();
}

class _$BaseResponseOfPagedResultOfOrderReturnRequestResponseSerializer implements PrimitiveSerializer<BaseResponseOfPagedResultOfOrderReturnRequestResponse> {
  @override
  final Iterable<Type> types = const [BaseResponseOfPagedResultOfOrderReturnRequestResponse, _$BaseResponseOfPagedResultOfOrderReturnRequestResponse];

  @override
  final String wireName = r'BaseResponseOfPagedResultOfOrderReturnRequestResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseResponseOfPagedResultOfOrderReturnRequestResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType.nullable(PagedResultOfOrderReturnRequestResponse),
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
    BaseResponseOfPagedResultOfOrderReturnRequestResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BaseResponseOfPagedResultOfOrderReturnRequestResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PagedResultOfOrderReturnRequestResponse),
          ) as PagedResultOfOrderReturnRequestResponse?;
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
  BaseResponseOfPagedResultOfOrderReturnRequestResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseResponseOfPagedResultOfOrderReturnRequestResponseBuilder();
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

