//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/gender.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'product_infor_response.g.dart';

/// ProductInforResponse
///
/// Properties:
/// * [productCode] 
/// * [brandName] 
/// * [origin] 
/// * [releaseYear] 
/// * [gender] 
/// * [scentGroup] 
/// * [style] 
/// * [topNotes] 
/// * [heartNotes] 
/// * [baseNotes] 
/// * [description] 
@BuiltValue()
abstract class ProductInforResponse implements Built<ProductInforResponse, ProductInforResponseBuilder> {
  @BuiltValueField(wireName: r'productCode')
  String get productCode;

  @BuiltValueField(wireName: r'brandName')
  String get brandName;

  @BuiltValueField(wireName: r'origin')
  String get origin;

  @BuiltValueField(wireName: r'releaseYear')
  int? get releaseYear;

  @BuiltValueField(wireName: r'gender')
  Gender? get gender;
  // enum genderEnum {  Male,  Female,  Unisex,  };

  @BuiltValueField(wireName: r'scentGroup')
  String get scentGroup;

  @BuiltValueField(wireName: r'style')
  String get style;

  @BuiltValueField(wireName: r'topNotes')
  String get topNotes;

  @BuiltValueField(wireName: r'heartNotes')
  String get heartNotes;

  @BuiltValueField(wireName: r'baseNotes')
  String get baseNotes;

  @BuiltValueField(wireName: r'description')
  String get description;

  ProductInforResponse._();

  factory ProductInforResponse([void updates(ProductInforResponseBuilder b)]) = _$ProductInforResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProductInforResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProductInforResponse> get serializer => _$ProductInforResponseSerializer();
}

class _$ProductInforResponseSerializer implements PrimitiveSerializer<ProductInforResponse> {
  @override
  final Iterable<Type> types = const [ProductInforResponse, _$ProductInforResponse];

  @override
  final String wireName = r'ProductInforResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProductInforResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'productCode';
    yield serializers.serialize(
      object.productCode,
      specifiedType: const FullType(String),
    );
    yield r'brandName';
    yield serializers.serialize(
      object.brandName,
      specifiedType: const FullType(String),
    );
    yield r'origin';
    yield serializers.serialize(
      object.origin,
      specifiedType: const FullType(String),
    );
    if (object.releaseYear != null) {
      yield r'releaseYear';
      yield serializers.serialize(
        object.releaseYear,
        specifiedType: const FullType(int),
      );
    }
    if (object.gender != null) {
      yield r'gender';
      yield serializers.serialize(
        object.gender,
        specifiedType: const FullType(Gender),
      );
    }
    yield r'scentGroup';
    yield serializers.serialize(
      object.scentGroup,
      specifiedType: const FullType(String),
    );
    yield r'style';
    yield serializers.serialize(
      object.style,
      specifiedType: const FullType(String),
    );
    yield r'topNotes';
    yield serializers.serialize(
      object.topNotes,
      specifiedType: const FullType(String),
    );
    yield r'heartNotes';
    yield serializers.serialize(
      object.heartNotes,
      specifiedType: const FullType(String),
    );
    yield r'baseNotes';
    yield serializers.serialize(
      object.baseNotes,
      specifiedType: const FullType(String),
    );
    yield r'description';
    yield serializers.serialize(
      object.description,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ProductInforResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProductInforResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'productCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.productCode = valueDes;
          break;
        case r'brandName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.brandName = valueDes;
          break;
        case r'origin':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.origin = valueDes;
          break;
        case r'releaseYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.releaseYear = valueDes;
          break;
        case r'gender':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Gender),
          ) as Gender;
          result.gender = valueDes;
          break;
        case r'scentGroup':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scentGroup = valueDes;
          break;
        case r'style':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.style = valueDes;
          break;
        case r'topNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.topNotes = valueDes;
          break;
        case r'heartNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.heartNotes = valueDes;
          break;
        case r'baseNotes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.baseNotes = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProductInforResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProductInforResponseBuilder();
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

