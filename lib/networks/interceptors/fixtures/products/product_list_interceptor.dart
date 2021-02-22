import 'package:vtenhappmerchant/fixtures/product/product_fixture.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class ProductListIntercepter extends InterceptorsWrapper {
  BaseNetwork network;
  ProductListIntercepter(this.network);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var response = ProductFixture().fetchAll();
    // var response = ProductFixture().fetchAllNoData();
    var result = await this.network.http.resolve(response);
    result.statusCode = 200;
    return result;
  }
}
