//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:perfumegpt_api_client/src/model/date.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'variant_daily_sale_figure.g.dart';

/// VariantDailySaleFigure
///
/// Properties:
/// * [variantId] 
/// * [variantName] 
/// * [date] 
/// * [quantitySold] 
@BuiltValue()
abstract class VariantDailySaleFigure implements Built<VariantDailySaleFigure, VariantDailySaleFigureBuilder> {
  @BuiltValueField(wireName: r'variantId')
  String? get variantId;

  @BuiltValueField(wireName: r'variantName')
  String get variantName;

  @BuiltValueField(wireName: r'date')
  Date? get date;

  @BuiltValueField(wireName: r'quantitySold')
  int? get quantitySold;

  VariantDailySaleFigure._();

  factory VariantDailySaleFigure([void updates(VariantDailySaleFigureBuilder b)]) = _$VariantDailySaleFigure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VariantDailySaleFigureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VariantDailySaleFigure> get serializer => _$VariantDailySaleFigureSerializer();
}

class _$VariantDailySaleFigureSerializer implements PrimitiveSerializer<VariantDailySaleFigure> {
  @override
  final Iterable<Type> types = const [VariantDailySaleFigure, _$VariantDailySaleFigure];

  @override
  final String wireName = r'VariantDailySaleFigure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VariantDailySaleFigure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.variantId != null) {
      yield r'variantId';
      yield serializers.serialize(
        object.variantId,
        specifiedType: const FullType(String),
      );
    }
    yield r'variantName';
    yield serializers.serialize(
      object.variantName,
      specifiedType: const FullType(String),
    );
    if (object.date != null) {
      yield r'date';
      yield serializers.serialize(
        object.date,
        specifiedType: const FullType(Date),
      );
    }
    if (object.quantitySold != null) {
      yield r'quantitySold';
      yield serializers.serialize(
        object.quantitySold,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VariantDailySaleFigure object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VariantDailySaleFigureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'variantId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantId = valueDes;
          break;
        case r'variantName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.variantName = valueDes;
          break;
        case r'date':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Date),
          ) as Date;
          result.date = valueDes;
          break;
        case r'quantitySold':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantitySold = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VariantDailySaleFigure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VariantDailySaleFigureBuilder();
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

