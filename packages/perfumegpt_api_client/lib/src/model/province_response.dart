//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'province_response.g.dart';

/// ProvinceResponse
///
/// Properties:
/// * [provinceID] 
/// * [provinceName] 
/// * [countryID] 
/// * [code] 
/// * [nameExtension] 
/// * [isEnable] 
/// * [regionID] 
/// * [updatedBy] 
/// * [createdAt] 
/// * [updatedAt] 
/// * [canUpdateCOD] 
/// * [status] 
@BuiltValue()
abstract class ProvinceResponse implements Built<ProvinceResponse, ProvinceResponseBuilder> {
  @BuiltValueField(wireName: r'ProvinceID')
  int? get provinceID;

  @BuiltValueField(wireName: r'ProvinceName')
  String get provinceName;

  @BuiltValueField(wireName: r'CountryID')
  int? get countryID;

  @BuiltValueField(wireName: r'Code')
  int? get code;

  @BuiltValueField(wireName: r'NameExtension')
  BuiltList<String>? get nameExtension;

  @BuiltValueField(wireName: r'IsEnable')
  int? get isEnable;

  @BuiltValueField(wireName: r'RegionID')
  int? get regionID;

  @BuiltValueField(wireName: r'UpdatedBy')
  int? get updatedBy;

  @BuiltValueField(wireName: r'CreatedAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'UpdatedAt')
  String? get updatedAt;

  @BuiltValueField(wireName: r'CanUpdateCOD')
  bool? get canUpdateCOD;

  @BuiltValueField(wireName: r'Status')
  int? get status;

  ProvinceResponse._();

  factory ProvinceResponse([void updates(ProvinceResponseBuilder b)]) = _$ProvinceResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ProvinceResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ProvinceResponse> get serializer => _$ProvinceResponseSerializer();
}

class _$ProvinceResponseSerializer implements PrimitiveSerializer<ProvinceResponse> {
  @override
  final Iterable<Type> types = const [ProvinceResponse, _$ProvinceResponse];

  @override
  final String wireName = r'ProvinceResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ProvinceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.provinceID != null) {
      yield r'ProvinceID';
      yield serializers.serialize(
        object.provinceID,
        specifiedType: const FullType(int),
      );
    }
    yield r'ProvinceName';
    yield serializers.serialize(
      object.provinceName,
      specifiedType: const FullType(String),
    );
    if (object.countryID != null) {
      yield r'CountryID';
      yield serializers.serialize(
        object.countryID,
        specifiedType: const FullType(int),
      );
    }
    if (object.code != null) {
      yield r'Code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(int),
      );
    }
    if (object.nameExtension != null) {
      yield r'NameExtension';
      yield serializers.serialize(
        object.nameExtension,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.isEnable != null) {
      yield r'IsEnable';
      yield serializers.serialize(
        object.isEnable,
        specifiedType: const FullType(int),
      );
    }
    if (object.regionID != null) {
      yield r'RegionID';
      yield serializers.serialize(
        object.regionID,
        specifiedType: const FullType(int),
      );
    }
    if (object.updatedBy != null) {
      yield r'UpdatedBy';
      yield serializers.serialize(
        object.updatedBy,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'CreatedAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'UpdatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType.nullable(String),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ProvinceResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ProvinceResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'ProvinceID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.provinceID = valueDes;
          break;
        case r'ProvinceName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.provinceName = valueDes;
          break;
        case r'CountryID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.countryID = valueDes;
          break;
        case r'Code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.code = valueDes;
          break;
        case r'NameExtension':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.nameExtension.replace(valueDes);
          break;
        case r'IsEnable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.isEnable = valueDes;
          break;
        case r'RegionID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.regionID = valueDes;
          break;
        case r'UpdatedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.updatedBy = valueDes;
          break;
        case r'CreatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.createdAt = valueDes;
          break;
        case r'UpdatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.updatedAt = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ProvinceResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ProvinceResponseBuilder();
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

