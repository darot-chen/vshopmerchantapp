import 'package:vtenhappmerchant/networks/interceptors/token_interceptor.dart';
import 'package:vtenhappmerchant/storages/user_token_storage.dart';

class UserTokenInterceptor extends TokenInterceptor {
  Future<String> getToken() async {
    var userTokenStorage = UserTokenStorage();
    var token = await userTokenStorage.read();

    return token == null ? null : token['access_token'];
  }
}
