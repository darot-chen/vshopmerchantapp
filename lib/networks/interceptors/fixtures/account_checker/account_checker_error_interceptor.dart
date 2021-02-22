import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class AccountCheckerErrorInterceptor extends InterceptorsWrapper {
  BaseNetwork network;
  AccountCheckerErrorInterceptor(this.network);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var responseBody = '{"error": "Fake error messsage"}';
    var response = Response(data: responseBody, statusCode: 422);
    throw DioError(response: response);
  }
}
