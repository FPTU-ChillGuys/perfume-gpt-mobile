//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/import_status.dart';
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/import_detail_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_ticket_response.g.dart';

/// ImportTicketResponse
///
/// Properties:
/// * [id] 
/// * [createdByName] 
/// * [verifiedByName] 
/// * [supplierId] 
/// * [supplierName] 
/// * [expectedArrivalDate] 
/// * [actualImportDate] 
/// * [totalCost] 
/// * [status] 
/// * [createdAt] 
/// * [importDetails] 
@BuiltValue()
abstract class ImportTicketResponse implements Built<ImportTicketResponse, ImportTicketResponseBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'createdByName')
  String get createdByName;

  @BuiltValueField(wireName: r'verifiedByName')
  String? get verifiedByName;

  @BuiltValueField(wireName: r'supplierId')
  int? get supplierId;

  @BuiltValueField(wireName: r'supplierName')
  String get supplierName;

  @BuiltValueField(wireName: r'expectedArrivalDate')
  DateTime? get expectedArrivalDate;

  @BuiltValueField(wireName: r'actualImportDate')
  DateTime? get actualImportDate;

  @BuiltValueField(wireName: r'totalCost')
  num? get totalCost;

  @BuiltValueField(wireName: r'status')
  ImportStatus? get status;
  // enum statusEnum {  Pending,  InProgress,  Completed,  Cancelled,  };

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'importDetails')
  BuiltList<ImportDetailResponse> get importDetails;

  ImportTicketResponse._();

  factory ImportTicketResponse([void updates(ImportTicketResponseBuilder b)]) = _$ImportTicketResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportTicketResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportTicketResponse> get serializer => _$ImportTicketResponseSerializer();
}

class _$ImportTicketResponseSerializer implements PrimitiveSerializer<ImportTicketResponse> {
  @override
  final Iterable<Type> types = const [ImportTicketResponse, _$ImportTicketResponse];

  @override
  final String wireName = r'ImportTicketResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportTicketResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    yield r'createdByName';
    yield serializers.serialize(
      object.createdByName,
      specifiedType: const FullType(String),
    );
    if (object.verifiedByName != null) {
      yield r'verifiedByName';
      yield serializers.serialize(
        object.verifiedByName,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.supplierId != null) {
      yield r'supplierId';
      yield serializers.serialize(
        object.supplierId,
        specifiedType: const FullType(int),
      );
    }
    yield r'supplierName';
    yield serializers.serialize(
      object.supplierName,
      specifiedType: const FullType(String),
    );
    if (object.expectedArrivalDate != null) {
      yield r'expectedArrivalDate';
      yield serializers.serialize(
        object.expectedArrivalDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.actualImportDate != null) {
      yield r'actualImportDate';
      yield serializers.serialize(
        object.actualImportDate,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.totalCost != null) {
      yield r'totalCost';
      yield serializers.serialize(
        object.totalCost,
        specifiedType: const FullType(num),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(ImportStatus),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'importDetails';
    yield serializers.serialize(
      object.importDetails,
      specifiedType: const FullType(BuiltList, [FullType(ImportDetailResponse)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportTicketResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ImportTicketResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'createdByName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdByName = valueDes;
          break;
        case r'verifiedByName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.verifiedByName = valueDes;
          break;
        case r'supplierId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.supplierId = valueDes;
          break;
        case r'supplierName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.supplierName = valueDes;
          break;
        case r'expectedArrivalDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expectedArrivalDate = valueDes;
          break;
        case r'actualImportDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.actualImportDate = valueDes;
          break;
        case r'totalCost':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.totalCost = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ImportStatus),
          ) as ImportStatus;
          result.status = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'importDetails':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ImportDetailResponse)]),
          ) as BuiltList<ImportDetailResponse>;
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
  ImportTicketResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportTicketResponseBuilder();
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

