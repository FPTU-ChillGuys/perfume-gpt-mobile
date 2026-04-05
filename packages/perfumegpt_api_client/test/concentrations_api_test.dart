import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for ConcentrationsApi
void main() {
  final instance = PerfumegptApiClient().getConcentrationsApi();

  group(ConcentrationsApi, () {
    //Future<BaseResponseOfListOfConcentrationResponse> apiConcentrationsGet() async
    test('test apiConcentrationsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiConcentrationsIdDelete(int id) async
    test('test apiConcentrationsIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfConcentrationResponse> apiConcentrationsIdGet(int id) async
    test('test apiConcentrationsIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfConcentrationResponse> apiConcentrationsIdPut(int id, UpdateConcentrationRequest updateConcentrationRequest) async
    test('test apiConcentrationsIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfConcentrationLookupDto> apiConcentrationsLookupGet() async
    test('test apiConcentrationsLookupGet', () async {
      // TODO
    });

    //Future<BaseResponseOfConcentrationResponse> apiConcentrationsPost(CreateConcentrationRequest createConcentrationRequest) async
    test('test apiConcentrationsPost', () async {
      // TODO
    });
  });
}
