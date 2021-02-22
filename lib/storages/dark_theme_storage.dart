import 'package:vtenhappmerchant/storages/bool_preference_storage.dart';

class DarkThemeStorage extends BoolPreferenceStorage {
  String key() {
    return 'themeDarkMode';
  }
}
