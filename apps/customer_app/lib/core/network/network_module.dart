import 'package:customer_app/core/network/main/main_client.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../constaints/api_constants.dart';

@module
abstract class NetworkModule {
  @lazySingleton
  Dio dio() {
    return Dio(
      BaseOptions(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );
  }

  @lazySingleton
  MainClient mainClient(Dio dio) {
    return MainClient(dio, baseUrl: ApiConstants.mainBaseUrl);
  }
  

}
