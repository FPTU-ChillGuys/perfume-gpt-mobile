//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/verify_import_detail_request.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_import_ticket_request.g.dart';

/// VerifyImportTicketRequest
///
/// Properties:
/// * [importDetails] 
@BuiltValue()
abstract class VerifyImportTicketRequest implements Built<VerifyImportTicketRequest, VerifyImportTicketRequestBuilder> {
  @BuiltValueField(wireName: r'importDetails')
  BuiltList<VerifyImportDetailRequest> get importDetails;

  VerifyImportTicketRequest._();

  factory VerifyImportTicketRequest([void updates(VerifyImportTicketRequestBuilder b)]) = _$VerifyImportTicketRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VerifyImportTicketRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VerifyImportTicketRequest> get serializer => _$VerifyImportTicketRequestSerializer();
}

class _$VerifyImportTicketRequestSerializer implements PrimitiveSerializer<VerifyImportTicketRequest> {
  @override
  final Iterable<Type> types = const [VerifyImportTicketRequest, _$VerifyImportTicketRequest];

  @override
  final String wireName = r'VerifyImportTicketRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VerifyImportTicketRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'importDetails';
    yield serializers.serialize(
      object.importDetails,
      specifiedType: const FullType(BuiltList, [FullType(VerifyImportDetailRequest)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VerifyImportTicketRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VerifyImportTicketRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'importDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(VerifyImportDetailRequest)]),
          ) as BuiltList<VerifyImportDetailRequest>;
          result.importDetails.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VerifyImportTicketRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VerifyImportTicketRequestBuilder();
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

