import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for ScentNotesApi
void main() {
  final instance = PerfumegptApiClient().getScentNotesApi();

  group(ScentNotesApi, () {
    //Future<BaseResponseOfListOfScentNoteResponse> apiScentnotesGet() async
    test('test apiScentnotesGet', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiScentnotesIdDelete(int id) async
    test('test apiScentnotesIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfScentNoteResponse> apiScentnotesIdGet(int id) async
    test('test apiScentnotesIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfScentNoteResponse> apiScentnotesIdPut(int id, UpdateScentNoteRequest updateScentNoteRequest) async
    test('test apiScentnotesIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfScentNoteLookupResponse> apiScentnotesLookupGet() async
    test('test apiScentnotesLookupGet', () async {
      // TODO
    });

    //Future<BaseResponseOfScentNoteResponse> apiScentnotesPost(CreateScentNoteRequest createScentNoteRequest) async
    test('test apiScentnotesPost', () async {
      // TODO
    });

  });
}
