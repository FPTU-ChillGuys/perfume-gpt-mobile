//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'ward_response.g.dart';

/// WardResponse
///
/// Properties:
/// * [wardCode] 
/// * [districtID] 
/// * [wardName] 
/// * [nameExtension] 
/// * [canUpdateCOD] 
/// * [supportType] 
/// * [status] 
/// * [createdDate] 
/// * [updatedDate] 
@BuiltValue()
abstract class WardResponse implements Built<WardResponse, WardResponseBuilder> {
  @BuiltValueField(wireName: r'WardCode')
  String get wardCode;

  @BuiltValueField(wireName: r'DistrictID')
  int? get districtID;

  @BuiltValueField(wireName: r'WardName')
  String get wardName;

  @BuiltValueField(wireName: r'NameExtension')
  BuiltList<String> get nameExtension;

  @BuiltValueField(wireName: r'CanUpdateCOD')
  bool? get canUpdateCOD;

  @BuiltValueField(wireName: r'SupportType')
  int? get supportType;

  @BuiltValueField(wireName: r'Status')
  int? get status;

  @BuiltValueField(wireName: r'CreatedDate')
  String get createdDate;

  @BuiltValueField(wireName: r'UpdatedDate')
  String get updatedDate;

  WardResponse._();

  factory WardResponse([void updates(WardResponseBuilder b)]) = _$WardResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WardResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WardResponse> get serializer => _$WardResponseSerializer();
}

class _$WardResponseSerializer implements PrimitiveSerializer<WardResponse> {
  @override
  final Iterable<Type> types = const [WardResponse, _$WardResponse];

  @override
  final String wireName = r'WardResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WardResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'WardCode';
    yield serializers.serialize(
      object.wardCode,
      specifiedType: const FullType(String),
    );
    if (object.districtID != null) {
      yield r'DistrictID';
      yield serializers.serialize(
        object.districtID,
        specifiedType: const FullType(int),
      );
    }
    yield r'WardName';
    yield serializers.serialize(
      object.wardName,
      specifiedType: const FullType(String),
    );
    yield r'NameExtension';
    yield serializers.serialize(
      object.nameExtension,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.canUpdateCOD != null) {
      yield r'CanUpdateCOD';
      yield serializers.serialize(
        object.canUpdateCOD,
        specifiedType: const FullType(bool),
      );
    }
    if (object.supportType != null) {
      yield r'SupportType';
      yield serializers.serialize(
        object.supportType,
        specifiedType: const FullType(int),
      );
    }
    if (object.status != null) {
      yield r'Status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
    yield r'CreatedDate';
    yield serializers.serialize(
      object.createdDate,
      specifiedType: const FullType(String),
    );
    yield r'UpdatedDate';
    yield serializers.serialize(
      object.updatedDate,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WardResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WardResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'WardCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wardCode = valueDes;
          break;
        case r'DistrictID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.districtID = valueDes;
          break;
        case r'WardName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.wardName = valueDes;
          break;
        case r'NameExtension':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.nameExtension.replace(valueDes);
          break;
        case r'CanUpdateCOD':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.canUpdateCOD = valueDes;
          break;
        case r'SupportType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.supportType = valueDes;
          break;
        case r'Status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.status = valueDes;
          break;
        case r'CreatedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdDate = valueDes;
          break;
        case r'UpdatedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WardResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WardResponseBuilder();
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

