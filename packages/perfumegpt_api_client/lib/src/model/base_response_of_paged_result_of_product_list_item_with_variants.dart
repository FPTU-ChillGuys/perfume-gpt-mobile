//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/paged_result_of_product_list_item_with_variants.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_response_of_paged_result_of_product_list_item_with_variants.g.dart';

/// BaseResponseOfPagedResultOfProductListItemWithVariants
///
/// Properties:
/// * [payload] 
/// * [success] 
/// * [message] 
/// * [errors] 
/// * [errorType] 
@BuiltValue()
abstract class BaseResponseOfPagedResultOfProductListItemWithVariants implements Built<BaseResponseOfPagedResultOfProductListItemWithVariants, BaseResponseOfPagedResultOfProductListItemWithVariantsBuilder> {
  @BuiltValueField(wireName: r'payload')
  PagedResultOfProductListItemWithVariants? get payload;

  @BuiltValueField(wireName: r'success')
  bool? get success;

  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'errors')
  BuiltList<String>? get errors;

  @BuiltValueField(wireName: r'errorType')
  int? get errorType;

  BaseResponseOfPagedResultOfProductListItemWithVariants._();

  factory BaseResponseOfPagedResultOfProductListItemWithVariants([void updates(BaseResponseOfPagedResultOfProductListItemWithVariantsBuilder b)]) = _$BaseResponseOfPagedResultOfProductListItemWithVariants;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BaseResponseOfPagedResultOfProductListItemWithVariantsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BaseResponseOfPagedResultOfProductListItemWithVariants> get serializer => _$BaseResponseOfPagedResultOfProductListItemWithVariantsSerializer();
}

class _$BaseResponseOfPagedResultOfProductListItemWithVariantsSerializer implements PrimitiveSerializer<BaseResponseOfPagedResultOfProductListItemWithVariants> {
  @override
  final Iterable<Type> types = const [BaseResponseOfPagedResultOfProductListItemWithVariants, _$BaseResponseOfPagedResultOfProductListItemWithVariants];

  @override
  final String wireName = r'BaseResponseOfPagedResultOfProductListItemWithVariants';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BaseResponseOfPagedResultOfProductListItemWithVariants object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.payload != null) {
      yield r'payload';
      yield serializers.serialize(
        object.payload,
        specifiedType: const FullType.nullable(PagedResultOfProductListItemWithVariants),
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
    BaseResponseOfPagedResultOfProductListItemWithVariants object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required BaseResponseOfPagedResultOfProductListItemWithVariantsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payload':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PagedResultOfProductListItemWithVariants),
          ) as PagedResultOfProductListItemWithVariants?;
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
  BaseResponseOfPagedResultOfProductListItemWithVariants deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BaseResponseOfPagedResultOfProductListItemWithVariantsBuilder();
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

