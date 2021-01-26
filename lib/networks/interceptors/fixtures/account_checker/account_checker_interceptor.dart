import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class AccountCheckerInterceptor extends InterceptorsWrapper {
  BaseNetwork network;
  AccountCheckerInterceptor(this.network);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var response = '';
    var result = await this.network.http.resolve(response);
    result.statusCode = 200;
    return result;
  }
}
