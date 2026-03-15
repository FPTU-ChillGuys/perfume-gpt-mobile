import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for CategoriesApi
void main() {
  final instance = PerfumegptApiClient().getCategoriesApi();

  group(CategoriesApi, () {
    //Future<BaseResponseOfListOfCategoryResponse> apiCategoriesGet() async
    test('test apiCategoriesGet', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiCategoriesIdDelete(int id) async
    test('test apiCategoriesIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfCategoryResponse> apiCategoriesIdGet(int id) async
    test('test apiCategoriesIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfCategoryResponse> apiCategoriesIdPut(int id, UpdateCategoryRequest updateCategoryRequest) async
    test('test apiCategoriesIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfCategoriesLookupItem> apiCategoriesLookupGet() async
    test('test apiCategoriesLookupGet', () async {
      // TODO
    });

    //Future<BaseResponseOfCategoryResponse> apiCategoriesPost(CreateCategoryRequest createCategoryRequest) async
    test('test apiCategoriesPost', () async {
      // TODO
    });

  });
}
