import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for OlfactoryFamiliesApi
void main() {
  final instance = PerfumegptApiClient().getOlfactoryFamiliesApi();

  group(OlfactoryFamiliesApi, () {
    //Future<BaseResponseOfListOfOlfactoryFamilyResponse> apiOlfactoryfamiliesGet() async
    test('test apiOlfactoryfamiliesGet', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiOlfactoryfamiliesIdDelete(int id) async
    test('test apiOlfactoryfamiliesIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfOlfactoryFamilyResponse> apiOlfactoryfamiliesIdGet(int id) async
    test('test apiOlfactoryfamiliesIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfOlfactoryFamilyResponse> apiOlfactoryfamiliesIdPut(int id, UpdateOlfactoryFamilyRequest updateOlfactoryFamilyRequest) async
    test('test apiOlfactoryfamiliesIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfOlfactoryLookupResponse> apiOlfactoryfamiliesLookupGet() async
    test('test apiOlfactoryfamiliesLookupGet', () async {
      // TODO
    });

    //Future<BaseResponseOfOlfactoryFamilyResponse> apiOlfactoryfamiliesPost(CreateOlfactoryFamilyRequest createOlfactoryFamilyRequest) async
    test('test apiOlfactoryfamiliesPost', () async {
      // TODO
    });
  });
}
