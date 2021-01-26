import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:vtenhappmerchant/networks/interceptors/app_re_authenticate_interceptor.dart';
import 'package:vtenhappmerchant/networks/interceptors/app_token_interceptor.dart';
import 'package:flutter/foundation.dart';

class AppTokenNetwork extends BaseNetwork {
  AppTokenNetwork({@required baseUrl}) : super(baseUrl: baseUrl) {
    this.addInterceptor(AppTokenInterceptor());
    this.addInterceptor(AppReAuthenticateInterceptor(network: this));
  }
}
