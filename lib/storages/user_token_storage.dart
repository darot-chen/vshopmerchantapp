import 'package:vtenhappmerchant/storages/base_storage.dart';

class UserTokenStorage extends BaseStorage {
  String key() {
    return "userToken";
  }
}
