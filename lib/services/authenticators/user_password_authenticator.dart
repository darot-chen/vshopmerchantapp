import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/services/authenticators/base_user_authenticator.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

class UserPasswordAuthenticator extends BaseUserAuthenticator {
  UserPasswordAuthenticator() : super();

  String errorMessage() {
    return "Error";
  }

  bool success() {
    var result = this.response.statusCode == 200;
    return result;
  }

  Future<void> exec({
    @required String clientId,
    @required String clientSecret,
    @required String username,
    @required String password,
  }) async {
    response = null;
    response = await _authRequest(
      clientId: clientId,
      clientSecret: clientSecret,
      username: username,
      password: password,
    );

    if (success()) {
      await this.saveToStorage(response.data);
    }
  }

  Future<Response> _authRequest({
    @required String clientId,
    @required String clientSecret,
    String username,
    String password,
  }) async {
    var usernamePassword = {
      'username': username,
      'password': password,
    };
    var data = getDefaultRequestParams(
      clientId: clientId,
      clientSecret: clientSecret,
    );
    data.addAll(usernamePassword);
    Response result = await this.network.http.post(
          ApiConstant.authPath,
          data: data,
        );
    return result;
  }
}
