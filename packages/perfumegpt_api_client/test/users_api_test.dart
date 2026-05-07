import 'package:test/test.dart';
import 'package:perfumegpt_api_client/perfumegpt_api_client.dart';

/// tests for UsersApi
void main() {
  final instance = PerfumegptApiClient().getUsersApi();

  group(UsersApi, () {
    //Future<BaseResponseOfstring> apiUsersAvatarDelete() async
    test('test apiUsersAvatarDelete', () async {
      // TODO
    });

    //Future<BaseResponseOfMediaResponse> apiUsersAvatarGet() async
    test('test apiUsersAvatarGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiUsersAvatarPost({ MultipartFile avatar, String altText }) async
    test('test apiUsersAvatarPost', () async {
      // TODO
    });

    //Future<BaseResponseOfCustomerForPosResponse> apiUsersForPosGet({ String phoneOrEmail }) async
    test('test apiUsersForPosGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiUsersIdGet(String id) async
    test('test apiUsersIdGet', () async {
      // TODO
    });

    //Future<BaseResponseOfUserCredentialsResponse> apiUsersMeGet() async
    test('test apiUsersMeGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiUsersMePut(UpdateUserBasicInfoRequest updateUserBasicInfoRequest) async
    test('test apiUsersMePut', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfStaffLookupItem> apiUsersStaffLookupGet() async
    test('test apiUsersStaffLookupGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfStaffManageItem> apiUsersStaffManageGet() async
    test('test apiUsersStaffManageGet', () async {
      // TODO
    });

    //Future<BaseResponseOfListOfUserManageItem> apiUsersUserManageGet() async
    test('test apiUsersUserManageGet', () async {
      // TODO
    });

    //Future<BaseResponseOfstring> apiUsersUserUserIdInactivePut(String userId) async
    test('test apiUsersUserUserIdInactivePut', () async {
      // TODO
    });
  });
}
