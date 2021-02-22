import 'package:vtenhappmerchant/fixtures/accounts/account_fixtures.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class AccountCreateIntercepter extends InterceptorsWrapper {
  BaseNetwork network;
  AccountCreateIntercepter(this.network);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var response = AccountFixtures().create();
    var result = await this.network.http.resolve(response);
    result.statusCode = 200;
    return result;
  }
}
