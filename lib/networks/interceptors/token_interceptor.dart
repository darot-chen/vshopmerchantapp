import 'package:dio/dio.dart';

abstract class TokenInterceptor extends InterceptorsWrapper {
  @override
  Future<dynamic> onRequest(RequestOptions options) async {
    options = await setBearerToken(options);
    return super.onRequest(options);
  }

  Future<RequestOptions> setBearerToken(RequestOptions options) async {
    var authorization = options.headers['authorization'];
    var accessToken = await getToken();
    if (authorization == null) {
      options.headers['authorization'] = 'Bearer $accessToken';
    }
    return options;
  }

  Future<String> getToken();
}
