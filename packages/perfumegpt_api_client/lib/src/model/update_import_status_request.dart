//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/import_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_import_status_request.g.dart';

/// UpdateImportStatusRequest
///
/// Properties:
/// * [status] 
@BuiltValue()
abstract class UpdateImportStatusRequest implements Built<UpdateImportStatusRequest, UpdateImportStatusRequestBuilder> {
  @BuiltValueField(wireName: r'status')
  ImportStatus? get status;
  // enum statusEnum {  Pending,  InProgress,  Completed,  Cancelled,  };

  UpdateImportStatusRequest._();

  factory UpdateImportStatusRequest([void updates(UpdateImportStatusRequestBuilder b)]) = _$UpdateImportStatusRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateImportStatusRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateImportStatusRequest> get serializer => _$UpdateImportStatusRequestSerializer();
}

class _$UpdateImportStatusRequestSerializer implements PrimitiveSerializer<UpdateImportStatusRequest> {
  @override
  final Iterable<Type> types = const [UpdateImportStatusRequest, _$UpdateImportStatusRequest];

  @override
  final String wireName = r'UpdateImportStatusRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateImportStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(ImportStatus),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateImportStatusRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateImportStatusRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImportStatus),
          ) as ImportStatus;
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
  UpdateImportStatusRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateImportStatusRequestBuilder();
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

