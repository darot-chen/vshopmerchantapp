import 'package:vtenhappmerchant/fixtures/country_fixture.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class BaseApiInterceptorFixture extends InterceptorsWrapper {
  BaseNetwork network;
  BaseApiInterceptorFixture(this.network);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var response = CountryFixture().fetchOne();
    return this.network.http.resolve(response);
  }
}
