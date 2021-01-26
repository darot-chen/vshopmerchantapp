import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/fixtures/user_token/user_token_fixture.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

class UserTokenInterceptorFixture extends InterceptorsWrapper {
  BaseNetwork network;
  UserTokenInterceptorFixture(this.network);

  @override
  Future<dynamic> onRequest(RequestOptions options) async {
    bool ok = options.path.contains(ApiConstant.authPath);
    if (ok) {
      var appTokenFixture = UserTokenFixture().create();
      var response = await this.network.http.resolve(appTokenFixture);
      response.statusCode = 200;
      return response;
    }
    return options;
  }
}
