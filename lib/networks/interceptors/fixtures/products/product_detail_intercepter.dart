import 'package:vtenhappmerchant/fixtures/product/product_fixture.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class ProductDetailIntercepter extends InterceptorsWrapper {
  BaseNetwork network;
  ProductDetailIntercepter(this.network);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var response = ProductFixture().fetchOne();
    // var response = ProductFixture().fetchAllNoData();
    var result = await this.network.http.resolve(response);
    result.statusCode = 200;
    return result;
  }
}
