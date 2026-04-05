//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/update_import_detail_request.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_import_request.g.dart';

/// UpdateImportRequest
///
/// Properties:
/// * [importDetails] 
/// * [supplierId] 
/// * [expectedArrivalDate] 
@BuiltValue()
abstract class UpdateImportRequest implements Built<UpdateImportRequest, UpdateImportRequestBuilder> {
  @BuiltValueField(wireName: r'importDetails')
  BuiltList<UpdateImportDetailRequest> get importDetails;

  @BuiltValueField(wireName: r'supplierId')
  int? get supplierId;

  @BuiltValueField(wireName: r'expectedArrivalDate')
  DateTime get expectedArrivalDate;

  UpdateImportRequest._();

  factory UpdateImportRequest([void updates(UpdateImportRequestBuilder b)]) = _$UpdateImportRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateImportRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateImportRequest> get serializer => _$UpdateImportRequestSerializer();
}

class _$UpdateImportRequestSerializer implements PrimitiveSerializer<UpdateImportRequest> {
  @override
  final Iterable<Type> types = const [UpdateImportRequest, _$UpdateImportRequest];

  @override
  final String wireName = r'UpdateImportRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateImportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'importDetails';
    yield serializers.serialize(
      object.importDetails,
      specifiedType: const FullType(BuiltList, [FullType(UpdateImportDetailRequest)]),
    );
    if (object.supplierId != null) {
      yield r'supplierId';
      yield serializers.serialize(
        object.supplierId,
        specifiedType: const FullType(int),
      );
    }
    yield r'expectedArrivalDate';
    yield serializers.serialize(
      object.expectedArrivalDate,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateImportRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateImportRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'importDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UpdateImportDetailRequest)]),
          ) as BuiltList<UpdateImportDetailRequest>;
          result.importDetails.replace(valueDes);
          break;
        case r'supplierId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.supplierId = valueDes;
          break;
        case r'expectedArrivalDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expectedArrivalDate = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateImportRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateImportRequestBuilder();
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

