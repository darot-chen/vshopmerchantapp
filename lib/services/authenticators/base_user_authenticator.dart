import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:vtenhappmerchant/networks/response_status.dart';
import 'package:vtenhappmerchant/storages/user_token_storage.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

class BaseUserAuthenticator {
  BaseNetwork network;
  Response response;

  BaseUserAuthenticator() {
    this.network = BaseNetwork(baseUrl: ApiConstant.baseUrl);
  }

  Map<String, dynamic> getDefaultRequestParams({
    @required String clientId,
    @required String clientSecret,
  }) {
    var data = {
      'client_id': clientId,
      'client_secret': clientSecret,
      'grant_type': 'password',
    };
    return data;
  }

  Future<void> saveToStorage(Map<String, dynamic> data) async {
    var userTokenStorage = UserTokenStorage();
    await userTokenStorage.write(data);
  }

  Future<ResponseStatus> reAuthenticate({
    @required String clientId,
    @required String clientSecret,
    String refreshToken,
  }) async {
    var data = {
      "client_id": clientId,
      "client_secret": clientSecret,
      'grant_type': "refresh_token",
      "refresh_token": refreshToken,
    };
    Response response = await this.network.http.post(
          ApiConstant.authPath,
          data: data,
        );
    this.saveToStorage(response.data);
    bool authenticated = response.statusCode == 200;
    return ResponseStatus(status: authenticated, message: response.data);
  }
}
