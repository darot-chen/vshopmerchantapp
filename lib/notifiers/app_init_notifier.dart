import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:vtenhappmerchant/networks/response_status.dart';
import 'package:vtenhappmerchant/services/authenticators/app_authenticator.dart';
import 'package:vtenhappmerchant/storages/main_screen_storage.dart';
import 'package:vtenhappmerchant/types/loading_progress_type.dart';

class AppInitNotifier extends ChangeNotifier {
  LoadingProgressType progressType;
  AppAuthenticator appAuthenticator;
  ResponseStatus authStatus;

  MainScreenStorage storage;
  bool isMainScreen;

  AppInitNotifier() {
    progressType = LoadingProgressType.loading;

    appAuthenticator = AppAuthenticator(
        network: BaseNetwork(
      baseUrl: ApiConstant.baseUrl,
    ));

    storage = MainScreenStorage();
  }

  setMainScreen(bool isOn) {
    if (isOn == isMainScreen) return;
    isMainScreen = isOn;
    notifyListeners();
  }

  toggleScreen() {
    setMainScreen(!isMainScreen);
  }

  load() async {
    print('trigger load');
    print('app authentication');
    authStatus = await appAuthenticator.exec(
      clientId: ApiConstant.clientId,
      clientSecret: ApiConstant.clientSecret,
    );
    print('trigger main screen storage');
    bool isOn = await storage.on;
    progressType = LoadingProgressType.loaded;
    setMainScreen(isOn);
  }

  setAuthProgressType(LoadingProgressType value) {
    if (value == progressType) return;
    progressType = value;
    print('notify change status: $value');
    notifyListeners();
  }
}

final appInitNotifier = ChangeNotifierProvider<AppInitNotifier>((ref) {
  final notifier = AppInitNotifier();
  notifier.load();
  return notifier;
});
