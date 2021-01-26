import 'package:vtenhappmerchant/fixtures/country_fixture.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class CountryUpdateInterceptorFixture extends InterceptorsWrapper {
  BaseNetwork network;
  CountryUpdateInterceptorFixture(this.network);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var response = CountryFixture().update();
    var result = await this.network.http.resolve(response);
    result.statusCode = 200;
    return result;
  }
}
