import 'package:flutter_test/flutter_test.dart';
import 'package:vtenhappmerchant/storages/storages.dart';

class FakeStorageAdapter extends MemoryStorageAdapter {}

void main() {
  group("BaseStorageAdapter#writeObject", () {
    test("it write object to storage", () async {
      var storage = FakeStorageAdapter();
      var release = {"name": "VTenh", "version": 1.0};
      await storage.writeObject(key: 'release', value: release);
      var result = await storage.readObject(key: 'release');

      expect(result['name'], "VTenh");
      expect(result['version'], 1.0);

      await storage.delete(key: 'release');
    });
  });

  group("BaseStorageAdapter#readObject", () {
    test("it return object from the storage if key exists", () async {
      var storage = FakeStorageAdapter();
      var release = {"name": "VTenh", "version": 1.0};

      await storage.writeObject(key: 'release', value: release);
      var result = await storage.readObject(key: 'release');

      expect(result['name'], "VTenh");
      expect(result['version'], 1.0);

      await storage.delete(key: 'release');
    });

    test("it return null if key exists", () async {
      var storage = FakeStorageAdapter();
      var result = await storage.readObject(key: 'unkown');

      expect(result, null);
    });
  });
}
