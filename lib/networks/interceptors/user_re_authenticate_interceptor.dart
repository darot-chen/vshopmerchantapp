import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:vtenhappmerchant/networks/interceptors/re_authenticate_interceptor.dart';
import 'package:vtenhappmerchant/networks/response_status.dart';
import 'package:vtenhappmerchant/services/authenticators/base_user_authenticator.dart';
import 'package:vtenhappmerchant/storages/user_token_storage.dart';

class UserReAuthenticateInterceptor extends ReAuthenticateInterceptor {
  UserReAuthenticateInterceptor({@required BaseNetwork network}) : super(network: network);

  Future<ResponseStatus> call() async {
    ResponseStatus result = ResponseStatus(status: false, message: 'reauthenticate');

    var userTokenStorage = UserTokenStorage();
    var accessToken = await userTokenStorage.read();
    var refreshToken = accessToken['refresh_token'];

    var userAuth = BaseUserAuthenticator();

    result = await userAuth.reAuthenticate(
      clientId: ApiConstant.clientId,
      clientSecret: ApiConstant.clientSecret,
      refreshToken: refreshToken,
    );
    return result;
  }
}
