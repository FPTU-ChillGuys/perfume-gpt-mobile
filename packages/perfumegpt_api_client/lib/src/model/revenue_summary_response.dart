//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'revenue_summary_response.g.dart';

/// RevenueSummaryResponse
///
/// Properties:
/// * [fromDate] 
/// * [toDate] 
/// * [grossRevenue] 
/// * [refundedAmount] 
/// * [netRevenue] 
/// * [successfulTransactionsCount] 
/// * [paidOrdersCount] 
@BuiltValue()
abstract class RevenueSummaryResponse implements Built<RevenueSummaryResponse, RevenueSummaryResponseBuilder> {
  @BuiltValueField(wireName: r'fromDate')
  DateTime? get fromDate;

  @BuiltValueField(wireName: r'toDate')
  DateTime? get toDate;

  @BuiltValueField(wireName: r'grossRevenue')
  num? get grossRevenue;

  @BuiltValueField(wireName: r'refundedAmount')
  num? get refundedAmount;

  @BuiltValueField(wireName: r'netRevenue')
  num? get netRevenue;

  @BuiltValueField(wireName: r'successfulTransactionsCount')
  int? get successfulTransactionsCount;

  @BuiltValueField(wireName: r'paidOrdersCount')
  int? get paidOrdersCount;

  RevenueSummaryResponse._();

  factory RevenueSummaryResponse([void updates(RevenueSummaryResponseBuilder b)]) = _$RevenueSummaryResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(RevenueSummaryResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<RevenueSummaryResponse> get serializer => _$RevenueSummaryResponseSerializer();
}

class _$RevenueSummaryResponseSerializer implements PrimitiveSerializer<RevenueSummaryResponse> {
  @override
  final Iterable<Type> types = const [RevenueSummaryResponse, _$RevenueSummaryResponse];

  @override
  final String wireName = r'RevenueSummaryResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    RevenueSummaryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.fromDate != null) {
      yield r'fromDate';
      yield serializers.serialize(
        object.fromDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.toDate != null) {
      yield r'toDate';
      yield serializers.serialize(
        object.toDate,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.grossRevenue != null) {
      yield r'grossRevenue';
      yield serializers.serialize(
        object.grossRevenue,
        specifiedType: const FullType(num),
      );
    }
    if (object.refundedAmount != null) {
      yield r'refundedAmount';
      yield serializers.serialize(
        object.refundedAmount,
        specifiedType: const FullType(num),
      );
    }
    if (object.netRevenue != null) {
      yield r'netRevenue';
      yield serializers.serialize(
        object.netRevenue,
        specifiedType: const FullType(num),
      );
    }
    if (object.successfulTransactionsCount != null) {
      yield r'successfulTransactionsCount';
      yield serializers.serialize(
        object.successfulTransactionsCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.paidOrdersCount != null) {
      yield r'paidOrdersCount';
      yield serializers.serialize(
        object.paidOrdersCount,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    RevenueSummaryResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required RevenueSummaryResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'fromDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.fromDate = valueDes;
          break;
        case r'toDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.toDate = valueDes;
          break;
        case r'grossRevenue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.grossRevenue = valueDes;
          break;
        case r'refundedAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.refundedAmount = valueDes;
          break;
        case r'netRevenue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.netRevenue = valueDes;
          break;
        case r'successfulTransactionsCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.successfulTransactionsCount = valueDes;
          break;
        case r'paidOrdersCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.paidOrdersCount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  RevenueSummaryResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = RevenueSummaryResponseBuilder();
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

