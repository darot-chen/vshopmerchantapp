import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:vtenhappmerchant/networks/interceptors/user_re_authenticate_interceptor.dart';
import 'package:vtenhappmerchant/networks/interceptors/user_token_interceptor.dart';
import 'package:flutter/foundation.dart';

class UserTokenNetwork extends BaseNetwork {
  UserTokenNetwork({@required baseUrl}) : super(baseUrl: baseUrl) {
    this.addInterceptor(UserTokenInterceptor());
    this.addInterceptor(UserReAuthenticateInterceptor(network: this));
  }
}
