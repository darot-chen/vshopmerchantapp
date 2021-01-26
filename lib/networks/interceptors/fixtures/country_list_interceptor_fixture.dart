import 'package:vtenhappmerchant/fixtures/country_list_fixture.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class CountryListInterceptorFixture extends InterceptorsWrapper {
  BaseNetwork network;
  CountryListInterceptorFixture(this.network);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var response = CountryListFixture().exec();
    return this.network.http.resolve(response);
  }
}
