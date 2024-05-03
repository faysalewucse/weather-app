import 'package:dio/dio.dart';
import 'package:weather_app_steadfastit/api/api_urls.dart';

class Api {
  Dio dio = Dio();

  Api() {
    dio = Dio(
      BaseOptions(
        baseUrl: ROOT_API_URL,
        headers: {
          'Content-Type': 'application/json',
        },
        receiveTimeout: const Duration(seconds: 10000),
        connectTimeout: const Duration(seconds: 10000),
        sendTimeout: const Duration(seconds: 10000),
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print("${options.method} : ${options.uri}");
          return handler.next(options);
        },
        onResponse: (response, handler) {
          return handler.next(response);
        },
        onError: (DioException error, handler) {
          return handler.next(error);
        },
      ),
    );
  }
}
