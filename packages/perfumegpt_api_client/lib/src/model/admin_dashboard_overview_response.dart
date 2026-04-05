//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/inventory_levels_response.dart';
import 'package:perfumegpt_api_client/src/model/revenue_summary_response.dart';
import 'package:perfumegpt_api_client/src/model/top_product_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'admin_dashboard_overview_response.g.dart';

/// AdminDashboardOverviewResponse
///
/// Properties:
/// * [revenue] 
/// * [inventoryLevels] 
/// * [topProducts] 
@BuiltValue()
abstract class AdminDashboardOverviewResponse implements Built<AdminDashboardOverviewResponse, AdminDashboardOverviewResponseBuilder> {
  @BuiltValueField(wireName: r'revenue')
  RevenueSummaryResponse? get revenue;

  @BuiltValueField(wireName: r'inventoryLevels')
  InventoryLevelsResponse? get inventoryLevels;

  @BuiltValueField(wireName: r'topProducts')
  BuiltList<TopProductResponse> get topProducts;

  AdminDashboardOverviewResponse._();

  factory AdminDashboardOverviewResponse([void updates(AdminDashboardOverviewResponseBuilder b)]) = _$AdminDashboardOverviewResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AdminDashboardOverviewResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AdminDashboardOverviewResponse> get serializer => _$AdminDashboardOverviewResponseSerializer();
}

class _$AdminDashboardOverviewResponseSerializer implements PrimitiveSerializer<AdminDashboardOverviewResponse> {
  @override
  final Iterable<Type> types = const [AdminDashboardOverviewResponse, _$AdminDashboardOverviewResponse];

  @override
  final String wireName = r'AdminDashboardOverviewResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AdminDashboardOverviewResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.revenue != null) {
      yield r'revenue';
      yield serializers.serialize(
        object.revenue,
        specifiedType: const FullType(RevenueSummaryResponse),
      );
    }
    if (object.inventoryLevels != null) {
      yield r'inventoryLevels';
      yield serializers.serialize(
        object.inventoryLevels,
        specifiedType: const FullType(InventoryLevelsResponse),
      );
    }
    yield r'topProducts';
    yield serializers.serialize(
      object.topProducts,
      specifiedType: const FullType(BuiltList, [FullType(TopProductResponse)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    AdminDashboardOverviewResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AdminDashboardOverviewResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'revenue':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(RevenueSummaryResponse),
          ) as RevenueSummaryResponse;
          result.revenue.replace(valueDes);
          break;
        case r'inventoryLevels':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(InventoryLevelsResponse),
          ) as InventoryLevelsResponse;
          result.inventoryLevels.replace(valueDes);
          break;
        case r'topProducts':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TopProductResponse)]),
          ) as BuiltList<TopProductResponse>;
          result.topProducts.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AdminDashboardOverviewResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AdminDashboardOverviewResponseBuilder();
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

