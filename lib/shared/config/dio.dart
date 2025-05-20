import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:testapp/shared/constants/api_endpoints.dart';

class DioConfig {
  late final Dio dio;

  DioConfig() {
    dio = Dio();

    Map<String, String> headers = <String, String>{
      'accept': '*/*',
      'Content-Type': 'application/json',
    };

    dio.options = BaseOptions(
      baseUrl: ApiEndpoints.baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: headers,
      validateStatus: (int? status) => status != null && status < 500,
    );


    // // Add connectivity interceptor
    // dio.interceptors.add(ConnectivityInterceptor(dio, navigatorKey));

  }
}

final dio = GetIt.instance<DioConfig>().dio;
