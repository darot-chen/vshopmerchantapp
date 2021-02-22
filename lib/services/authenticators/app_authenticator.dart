import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:vtenhappmerchant/networks/interceptors/fixtures/app_token_interceptor_fixture.dart';
import 'package:vtenhappmerchant/networks/response_status.dart';
import 'package:vtenhappmerchant/storages/app_token_storage.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

class AppAuthenticator {
  BaseNetwork network;
  bool authenticated;

  AppAuthenticator({@required this.network});

  Future<ResponseStatus> exec({@required String clientId, @required String clientSecret}) async {
    if (await isAuthenticated()) {
      return ResponseStatus(status: authenticated);
    }
    ResponseStatus responseStatus = await authRequestHandler(clientId: clientId, clientSecret: clientSecret);
    return responseStatus;
  }

  Future<ResponseStatus> authRequestHandler({@required String clientId, @required String clientSecret}) async {
    try {
      var response = await authRequest(clientId: clientId, clientSecret: clientSecret);
      await saveToStorage(response.data);
      authenticated = true;
      return ResponseStatus(status: authenticated); // ResponseStatus(status: authenticated, errorMessage: )
    } on DioError catch (e) {
      authenticated = false;
      return ResponseStatus(status: authenticated, message: e.response?.data);
    }
  }

  Future<Response> authRequest({@required String clientId, @required String clientSecret}) async {
    var data = {'client_id': clientId, 'client_secret': clientSecret, 'grant_type': 'client_credentials'};
    if (ApiConstant.useFixture) {
      var appTokenInterceptorFixture = AppTokenInterceptorFixture(this.network);
      this.network.http.interceptors.add(appTokenInterceptorFixture);
    }
    Response response = await this.network.http.post(ApiConstant.authPath, data: data);
    return response;
  }

  saveToStorage(Map<String, dynamic> data) async {
    var appTokenStorage = AppTokenStorage();
    await appTokenStorage.write(data);
  }

  Future<bool> isAuthenticated() async {
    if (authenticated == true) {
      return authenticated;
    }
    var appToken = await getTokenFromStorage();
    if (appToken != null) {
      authenticated = true;
    } else {
      authenticated = false;
    }
    return authenticated;
  }

  Future<Map<String, dynamic>> getTokenFromStorage() async {
    var appTokenStorage = AppTokenStorage();
    var appToken = await appTokenStorage.read();
    return appToken;
  }
}
