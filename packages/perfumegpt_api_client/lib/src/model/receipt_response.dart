//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/receipt_item_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'receipt_response.g.dart';

/// ReceiptResponse
///
/// Properties:
/// * [orderId] 
/// * [code] 
/// * [orderDate] 
/// * [orderStatus] 
/// * [staffName] 
/// * [customerName] 
/// * [recipientPhone] 
/// * [recipientAddress] 
/// * [items] 
/// * [subtotal] 
/// * [discount] 
/// * [tax] 
/// * [total] 
/// * [paymentMethod] 
/// * [note] 
@BuiltValue()
abstract class ReceiptResponse implements Built<ReceiptResponse, ReceiptResponseBuilder> {
  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  @BuiltValueField(wireName: r'code')
  String get code;

  @BuiltValueField(wireName: r'orderDate')
  DateTime? get orderDate;

  @BuiltValueField(wireName: r'orderStatus')
  String get orderStatus;

  @BuiltValueField(wireName: r'staffName')
  String get staffName;

  @BuiltValueField(wireName: r'customerName')
  String get customerName;

  @BuiltValueField(wireName: r'recipientPhone')
  String get recipientPhone;

  @BuiltValueField(wireName: r'recipientAddress')
  String get recipientAddress;

  @BuiltValueField(wireName: r'items')
  BuiltList<ReceiptItemDto> get items;

  @BuiltValueField(wireName: r'subtotal')
  num? get subtotal;

  @BuiltValueField(wireName: r'discount')
  num? get discount;

  @BuiltValueField(wireName: r'tax')
  num? get tax;

  @BuiltValueField(wireName: r'total')
  num? get total;

  @BuiltValueField(wireName: r'paymentMethod')
  String get paymentMethod;

  @BuiltValueField(wireName: r'note')
  String? get note;

  ReceiptResponse._();

  factory ReceiptResponse([void updates(ReceiptResponseBuilder b)]) = _$ReceiptResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ReceiptResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ReceiptResponse> get serializer => _$ReceiptResponseSerializer();
}

class _$ReceiptResponseSerializer implements PrimitiveSerializer<ReceiptResponse> {
  @override
  final Iterable<Type> types = const [ReceiptResponse, _$ReceiptResponse];

  @override
  final String wireName = r'ReceiptResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ReceiptResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.orderId != null) {
      yield r'orderId';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    if (object.orderDate != null) {
      yield r'orderDate';
      yield serializers.serialize(
        object.orderDate,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'orderStatus';
    yield serializers.serialize(
      object.orderStatus,
      specifiedType: const FullType(String),
    );
    yield r'staffName';
    yield serializers.serialize(
      object.staffName,
      specifiedType: const FullType(String),
    );
    yield r'customerName';
    yield serializers.serialize(
      object.customerName,
      specifiedType: const FullType(String),
    );
    yield r'recipientPhone';
    yield serializers.serialize(
      object.recipientPhone,
      specifiedType: const FullType(String),
    );
    yield r'recipientAddress';
    yield serializers.serialize(
      object.recipientAddress,
      specifiedType: const FullType(String),
    );
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(ReceiptItemDto)]),
    );
    if (object.subtotal != null) {
      yield r'subtotal';
      yield serializers.serialize(
        object.subtotal,
        specifiedType: const FullType(num),
      );
    }
    if (object.discount != null) {
      yield r'discount';
      yield serializers.serialize(
        object.discount,
        specifiedType: const FullType(num),
      );
    }
    if (object.tax != null) {
      yield r'tax';
      yield serializers.serialize(
        object.tax,
        specifiedType: const FullType(num),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(num),
      );
    }
    yield r'paymentMethod';
    yield serializers.serialize(
      object.paymentMethod,
      specifiedType: const FullType(String),
    );
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ReceiptResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ReceiptResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'orderDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.orderDate = valueDes;
          break;
        case r'orderStatus':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderStatus = valueDes;
          break;
        case r'staffName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.staffName = valueDes;
          break;
        case r'customerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerName = valueDes;
          break;
        case r'recipientPhone':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipientPhone = valueDes;
          break;
        case r'recipientAddress':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.recipientAddress = valueDes;
          break;
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ReceiptItemDto)]),
          ) as BuiltList<ReceiptItemDto>;
          result.items.replace(valueDes);
          break;
        case r'subtotal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.subtotal = valueDes;
          break;
        case r'discount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.discount = valueDes;
          break;
        case r'tax':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.tax = valueDes;
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.total = valueDes;
          break;
        case r'paymentMethod':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentMethod = valueDes;
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.note = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ReceiptResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ReceiptResponseBuilder();
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

