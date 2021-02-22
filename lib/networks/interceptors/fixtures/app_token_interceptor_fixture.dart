import 'package:vtenhappmerchant/fixtures/app_token_fixture.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class AppTokenInterceptorFixture extends InterceptorsWrapper {
  BaseNetwork network;
  AppTokenInterceptorFixture(this.network);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var appTokenFixture = AppTokenFixture().exec();
    return this.network.http.resolve(appTokenFixture);
  }
}
