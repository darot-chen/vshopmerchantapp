import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vtenhappmerchant/storages/bool_preference_storage.dart';

class FakeBoolStorage extends BoolPreferenceStorage {
  String key() {
    return 'fakeBool';
  }
}

void main() {
  SharedPreferences.setMockInitialValues({});
  var storage = FakeBoolStorage();
  group('FakeBoolStorage', () {
    test('return false if it has not set', () async {
      storage.reset();
      bool result = await storage.on;
      expect(result, false);
    });

    test('return true if it set value', () async {
      await storage.setOn();
      bool result = await storage.on;
      expect(result, true);
    });

    test('return false after resting', () async {
      await storage.setOn();
      await storage.reset();
      bool result = await storage.on;
      expect(result, false);
    });
  });
}
