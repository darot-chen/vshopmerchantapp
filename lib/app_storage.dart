import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/storage_adapters/shared_preference_storage_adapter.dart';
// import 'package:vtenhappmerchant/storage_adapters/shared_preference_storage_adapter.dart';
import 'package:vtenhappmerchant/storages/storages.dart';
import 'package:vtenhappmerchant/types/app_env_type.dart';

class AppStorage {
  static BaseStorageAdapter _preferenceAdapter;
  static BaseStorageAdapter _secureAdapter;

  static BaseStorageAdapter get preferenceAdapter {
    if (_preferenceAdapter != null) return _preferenceAdapter;
    _preferenceAdapter = SharedPreferenceStorageAdapter();
    // _preferenceAdapter = MemoryStorageAdapter();
    // _secureAdapter = SecureStorageAdapter();
    return _preferenceAdapter;
  }

  static set preferenceAdapter(BaseStorageAdapter storageAdapter) {
    _preferenceAdapter = storageAdapter;
  }

  static BaseStorageAdapter get secureAdapter {
    if (_secureAdapter != null) return _secureAdapter;
    if (ApiConstant.env != AppEnvType.production) {
      _secureAdapter = SharedPreferenceStorageAdapter();
      // _secureAdapter = MemoryStorageAdapter();
      // _secureAdapter = SecureStorageAdapter();
    } else {
      // _secureAdapter = MemoryStorageAdapter();
      _secureAdapter = SharedPreferenceStorageAdapter();
      // _secureAdapter = SecureStorageAdapter();
    }

    return _secureAdapter;
  }

  static set secureAdapter(BaseStorageAdapter storageAdapter) {
    _secureAdapter = storageAdapter;
  }
}
