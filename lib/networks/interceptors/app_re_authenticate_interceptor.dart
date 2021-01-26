import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:vtenhappmerchant/networks/interceptors/re_authenticate_interceptor.dart';
import 'package:vtenhappmerchant/networks/response_status.dart';
import 'package:vtenhappmerchant/services/authenticators/app_authenticator.dart';

class AppReAuthenticateInterceptor extends ReAuthenticateInterceptor {
  AppReAuthenticateInterceptor({@required BaseNetwork network}) : super(network: network);

  Future<ResponseStatus> call() async {
    ResponseStatus result = ResponseStatus(status: false, message: 'reauthenticate');

    // var network = BaseNetwork(baseUrl: ApiConstant.baseUrl);
    var appAuth = AppAuthenticator(
      network: network,
    );
    result = await appAuth.exec(
      clientId: ApiConstant.clientId,
      clientSecret: ApiConstant.clientSecret,
    );
    return result;
  }
}
