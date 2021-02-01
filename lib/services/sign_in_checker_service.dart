import 'package:vtenhappmerchant/storages/user_token_storage.dart';

class SignInCheckerService {
  static Future<bool> call() async {
    var userStorage = UserTokenStorage();
    var accessToken = await userStorage.read();
    return accessToken != null;
  }
}
