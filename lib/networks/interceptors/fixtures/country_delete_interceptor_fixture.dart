import 'package:vtenhappmerchant/fixtures/country_fixture.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class CountryDeleteInterceptorFixture extends InterceptorsWrapper {
  BaseNetwork network;
  CountryDeleteInterceptorFixture(this.network);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var response = CountryFixture().delete();
    var result = await this.network.http.resolve(response);
    result.statusCode = 200;
    return result;
  }
}
