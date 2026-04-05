//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/import_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'import_ticket_list_item.g.dart';

/// ImportTicketListItem
///
/// Properties:
/// * [id] 
/// * [createdByName] 
/// * [verifiedByName] 
/// * [supplierName] 
/// * [expectedArrivalDate] 
/// * [actualImportDate] 
/// * [totalCost] 
/// * [status] 
/// * [totalItems] 
/// * [createdAt] 
@BuiltValue()
abstract class ImportTicketListItem implements Built<ImportTicketListItem, ImportTicketListItemBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'createdByName')
  String get createdByName;

  @BuiltValueField(wireName: r'verifiedByName')
  String? get verifiedByName;

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

  @BuiltValueField(wireName: r'totalItems')
  int? get totalItems;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  ImportTicketListItem._();

  factory ImportTicketListItem([void updates(ImportTicketListItemBuilder b)]) = _$ImportTicketListItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ImportTicketListItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ImportTicketListItem> get serializer => _$ImportTicketListItemSerializer();
}

class _$ImportTicketListItemSerializer implements PrimitiveSerializer<ImportTicketListItem> {
  @override
  final Iterable<Type> types = const [ImportTicketListItem, _$ImportTicketListItem];

  @override
  final String wireName = r'ImportTicketListItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ImportTicketListItem object, {
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
        specifiedType: const FullType(DateTime),
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
    if (object.totalItems != null) {
      yield r'totalItems';
      yield serializers.serialize(
        object.totalItems,
        specifiedType: const FullType(int),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ImportTicketListItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ImportTicketListItemBuilder result,
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
            specifiedType: const FullType(DateTime),
          ) as DateTime;
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
        case r'totalItems':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalItems = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ImportTicketListItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ImportTicketListItemBuilder();
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

