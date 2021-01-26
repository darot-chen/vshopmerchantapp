import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class CountryCreateErrorInterceptorFixture extends InterceptorsWrapper {
  BaseNetwork network;
  CountryCreateErrorInterceptorFixture(this.network);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var responseBody = '{"error": "Fake error messsage", "errors": {"email": "Invalid"}}';
    var response = Response(data: responseBody, statusCode: 422);
    throw DioError(response: response);
  }
}
