//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:perfumegpt_api_client/src/model/campaign_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'paged_result_of_campaign_response.g.dart';

/// PagedResultOfCampaignResponse
///
/// Properties:
/// * [items] 
/// * [pageNumber] 
/// * [pageSize] 
/// * [totalCount] 
/// * [totalPages] 
/// * [hasPreviousPage] 
/// * [hasNextPage] 
@BuiltValue()
abstract class PagedResultOfCampaignResponse implements Built<PagedResultOfCampaignResponse, PagedResultOfCampaignResponseBuilder> {
  @BuiltValueField(wireName: r'items')
  BuiltList<CampaignResponse> get items;

  @BuiltValueField(wireName: r'pageNumber')
  int get pageNumber;

  @BuiltValueField(wireName: r'pageSize')
  int get pageSize;

  @BuiltValueField(wireName: r'totalCount')
  int get totalCount;

  @BuiltValueField(wireName: r'totalPages')
  int? get totalPages;

  @BuiltValueField(wireName: r'hasPreviousPage')
  bool? get hasPreviousPage;

  @BuiltValueField(wireName: r'hasNextPage')
  bool? get hasNextPage;

  PagedResultOfCampaignResponse._();

  factory PagedResultOfCampaignResponse([void updates(PagedResultOfCampaignResponseBuilder b)]) = _$PagedResultOfCampaignResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PagedResultOfCampaignResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PagedResultOfCampaignResponse> get serializer => _$PagedResultOfCampaignResponseSerializer();
}

class _$PagedResultOfCampaignResponseSerializer implements PrimitiveSerializer<PagedResultOfCampaignResponse> {
  @override
  final Iterable<Type> types = const [PagedResultOfCampaignResponse, _$PagedResultOfCampaignResponse];

  @override
  final String wireName = r'PagedResultOfCampaignResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PagedResultOfCampaignResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'items';
    yield serializers.serialize(
      object.items,
      specifiedType: const FullType(BuiltList, [FullType(CampaignResponse)]),
    );
    yield r'pageNumber';
    yield serializers.serialize(
      object.pageNumber,
      specifiedType: const FullType(int),
    );
    yield r'pageSize';
    yield serializers.serialize(
      object.pageSize,
      specifiedType: const FullType(int),
    );
    yield r'totalCount';
    yield serializers.serialize(
      object.totalCount,
      specifiedType: const FullType(int),
    );
    if (object.totalPages != null) {
      yield r'totalPages';
      yield serializers.serialize(
        object.totalPages,
        specifiedType: const FullType(int),
      );
    }
    if (object.hasPreviousPage != null) {
      yield r'hasPreviousPage';
      yield serializers.serialize(
        object.hasPreviousPage,
        specifiedType: const FullType(bool),
      );
    }
    if (object.hasNextPage != null) {
      yield r'hasNextPage';
      yield serializers.serialize(
        object.hasNextPage,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PagedResultOfCampaignResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PagedResultOfCampaignResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'items':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(CampaignResponse)]),
          ) as BuiltList<CampaignResponse>;
          result.items.replace(valueDes);
          break;
        case r'pageNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageNumber = valueDes;
          break;
        case r'pageSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.pageSize = valueDes;
          break;
        case r'totalCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalCount = valueDes;
          break;
        case r'totalPages':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalPages = valueDes;
          break;
        case r'hasPreviousPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasPreviousPage = valueDes;
          break;
        case r'hasNextPage':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hasNextPage = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PagedResultOfCampaignResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PagedResultOfCampaignResponseBuilder();
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

