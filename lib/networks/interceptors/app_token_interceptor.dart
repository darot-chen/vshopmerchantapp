import 'package:vtenhappmerchant/networks/interceptors/token_interceptor.dart';
import 'package:vtenhappmerchant/storages/app_token_storage.dart';

class AppTokenInterceptor extends TokenInterceptor {
  Future<String> getToken() async {
    var appTokenStorage = AppTokenStorage();
    var token = await appTokenStorage.read();
    return token == null ? null : token['access_token'];
  }
}
