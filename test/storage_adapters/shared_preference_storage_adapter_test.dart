import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vtenhappmerchant/storage_adapters/shared_preference_storage_adapter.dart';

void main() {
  SharedPreferences.setMockInitialValues({});
  group("SharePreferenceStorageAdapter#readString", () {
    test("it returns value from the storage if key exist", () async {
      var storage = SharedPreferenceStorageAdapter();
      await storage.writeString(key: 'mykey', value: 'myvalue');
      var value = await storage.readString(key: 'mykey');
      expect(value, 'myvalue');

      await storage.delete(key: 'mykey');
    });

    test("it returns null if key does not exist", () async {
      var storage = SharedPreferenceStorageAdapter();
      var value = await storage.readString(key: 'mykey');
      expect(value, null);
    });
  });

  group("SharePreferenceStorageAdapter#writeString", () {
    test("it writes value string to storage", () async {
      var storage = SharedPreferenceStorageAdapter();

      await storage.writeString(key: 'mykey', value: 'myvalue');
      var value = await storage.readString(key: 'mykey');
      expect(value, 'myvalue');

      await storage.delete(key: 'mykey');
    });
  });

  group("SharePreferenceStorageAdapter#delete", () {
    test("it delete key from the storage", () async {
      var storage = SharedPreferenceStorageAdapter();

      await storage.writeString(key: 'mykey', value: 'myvalue');
      var value = await storage.readString(key: 'mykey');
      expect(value, 'myvalue');

      await storage.delete(key: 'mykey');

      value = await storage.readString(key: 'mykey');
      expect(value, null);
    });

    test("it does nothing is key does not exist in the storage", () async {
      var storage = SharedPreferenceStorageAdapter();
      await storage.delete(key: 'strange_key');
    });
  });
}
