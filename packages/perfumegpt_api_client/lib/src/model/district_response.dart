//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'district_response.g.dart';

/// DistrictResponse
///
/// Properties:
/// * [districtID] 
/// * [provinceID] 
/// * [districtName] 
/// * [code] 
/// * [type] 
/// * [supportType] 
/// * [nameExtension] 
/// * [isEnable] 
/// * [canUpdateCOD] 
/// * [status] 
/// * [createdDate] 
/// * [updatedDate] 
@BuiltValue()
abstract class DistrictResponse implements Built<DistrictResponse, DistrictResponseBuilder> {
  @BuiltValueField(wireName: r'DistrictID')
  int? get districtID;

  @BuiltValueField(wireName: r'ProvinceID')
  int? get provinceID;

  @BuiltValueField(wireName: r'DistrictName')
  String get districtName;

  @BuiltValueField(wireName: r'Code')
  int? get code;

  @BuiltValueField(wireName: r'Type')
  int? get type;

  @BuiltValueField(wireName: r'SupportType')
  int? get supportType;

  @BuiltValueField(wireName: r'NameExtension')
  BuiltList<String> get nameExtension;

  @BuiltValueField(wireName: r'IsEnable')
  int? get isEnable;

  @BuiltValueField(wireName: r'CanUpdateCOD')
  bool? get canUpdateCOD;

  @BuiltValueField(wireName: r'Status')
  int? get status;

  @BuiltValueField(wireName: r'CreatedDate')
  String? get createdDate;

  @BuiltValueField(wireName: r'UpdatedDate')
  String get updatedDate;

  DistrictResponse._();

  factory DistrictResponse([void updates(DistrictResponseBuilder b)]) = _$DistrictResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DistrictResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DistrictResponse> get serializer => _$DistrictResponseSerializer();
}

class _$DistrictResponseSerializer implements PrimitiveSerializer<DistrictResponse> {
  @override
  final Iterable<Type> types = const [DistrictResponse, _$DistrictResponse];

  @override
  final String wireName = r'DistrictResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DistrictResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.districtID != null) {
      yield r'DistrictID';
      yield serializers.serialize(
        object.districtID,
        specifiedType: const FullType(int),
      );
    }
    if (object.provinceID != null) {
      yield r'ProvinceID';
      yield serializers.serialize(
        object.provinceID,
        specifiedType: const FullType(int),
      );
    }
    yield r'DistrictName';
    yield serializers.serialize(
      object.districtName,
      specifiedType: const FullType(String),
    );
    if (object.code != null) {
      yield r'Code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'Type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(int),
      );
    }
    if (object.supportType != null) {
      yield r'SupportType';
      yield serializers.serialize(
        object.supportType,
        specifiedType: const FullType(int),
      );
    }
    yield r'NameExtension';
    yield serializers.serialize(
      object.nameExtension,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.isEnable != null) {
      yield r'IsEnable';
      yield serializers.serialize(
        object.isEnable,
        specifiedType: const FullType(int),
      );
    }
    if (object.canUpdateCOD != null) {
      yield r'CanUpdateCOD';
      yield serializers.serialize(
        object.canUpdateCOD,
        specifiedType: const FullType(bool),
      );
    }
    if (object.status != null) {
      yield r'Status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdDate != null) {
      yield r'CreatedDate';
      yield serializers.serialize(
        object.createdDate,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'UpdatedDate';
    yield serializers.serialize(
      object.updatedDate,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DistrictResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DistrictResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'DistrictID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.districtID = valueDes;
          break;
        case r'ProvinceID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.provinceID = valueDes;
          break;
        case r'DistrictName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.districtName = valueDes;
          break;
        case r'Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.code = valueDes;
          break;
        case r'Type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.type = valueDes;
          break;
        case r'SupportType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.supportType = valueDes;
          break;
        case r'NameExtension':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.nameExtension.replace(valueDes);
          break;
        case r'IsEnable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.isEnable = valueDes;
          break;
        case r'CanUpdateCOD':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.canUpdateCOD = valueDes;
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
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
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
  DistrictResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DistrictResponseBuilder();
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

