import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';


/// tests for ImportTicketsApi
void main() {
  final instance = PerfumegptApiClient().getImportTicketsApi();

  group(ImportTicketsApi, () {
    //Future<BaseResponseOfCreateImportTicketRequest> apiImportticketsExcelParserPost({ MultipartFile excelFile, int supplierId, DateTime expectedArrivalDate }) async
    test('test apiImportticketsExcelParserPost', () async {
      // TODO
    });

    //Future<FileContentResult> apiImportticketsExcelTemplateGet() async
    test('test apiImportticketsExcelTemplateGet', () async {
      // TODO
    });

    //Future<BaseResponseOfPagedResultOfImportTicketListItem> apiImportticketsGet({ int supplierId, ImportStatus status, DateTime fromDate, DateTime toDate, String verifiedById, int pageNumber, int pageSize, String sortBy, String sortOrder, bool isDescending }) async
    test('test apiImportticketsGet', () async {
      // TODO
    });

    //Future<BaseResponseOfboolean> apiImportticketsIdDelete(String id) async
    test('test apiImportticketsIdDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfImportTicketResponse> apiImportticketsIdGet(String id) async
    test('test apiImportticketsIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiImportticketsIdPut(String id, UpdateImportRequest updateImportRequest) async
    test('test apiImportticketsIdPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiImportticketsIdStatusPut(String id, UpdateImportStatusRequest updateImportStatusRequest) async
    test('test apiImportticketsIdStatusPut', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiImportticketsPost(CreateImportTicketRequest createImportTicketRequest) async
    test('test apiImportticketsPost', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiImportticketsTicketIdVerifyPost(String ticketId, VerifyImportTicketRequest verifyImportTicketRequest) async
    test('test apiImportticketsTicketIdVerifyPost', () async {
      // TODO
    });

  });
}
