import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for AttributesApi
void main() {
  final instance = PerfumegptApiClient().getAttributesApi();

  group(AttributesApi, () {
    //Future<BaseResponseOfstring> apiAttributesAttributeIdDelete(int attributeId) async
    test('test apiAttributesAttributeIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiAttributesAttributeIdPut(int attributeId, UpdateAttributeRequest updateAttributeRequest) async
    test('test apiAttributesAttributeIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfAttributeValueLookupItem> apiAttributesAttributeIdValuesLookupGet(int attributeId) async
    test('test apiAttributesAttributeIdValuesLookupGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiAttributesAttributeIdValuesPost(int attributeId, CreateAttributeValueRequest createAttributeValueRequest) async
    test('test apiAttributesAttributeIdValuesPost', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfAttributeLookupItem> apiAttributesLookupGet({ bool isVariantLevel }) async
    test('test apiAttributesLookupGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiAttributesPost(CreateAttributeRequest createAttributeRequest) async
    test('test apiAttributesPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiAttributesValuesValueIdDelete(int valueId) async
    test('test apiAttributesValuesValueIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiAttributesValuesValueIdPut(int valueId, UpdateAttributeValueRequest updateAttributeValueRequest) async
    test('test apiAttributesValuesValueIdPut', () async {
      // TODO
    });
  });
}
