import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';
import 'package:vtenhappmerchant/models/account_model.dart';
import 'package:vtenhappmerchant/services/apis/account_api/account_api.dart';

class UserDetailNotifier extends ChangeNotifier {
  AccountModel _accountModel;
  AccountApi _accountApi;
  double _fadeOpacity = 1;

  String defaultVariantID;
  bool requestStatus;

  UserDetailNotifier() {
    _accountApi = AccountApi();
  }

  load() async {
    // var userToken = "heURGKG53IO_wPGU9aYv3o4OUt5Zaty7SEyEHrgvePw";
    // var authorization = "Bearer $userToken";
    var result = await _accountApi.fetchOne(collection: false);
    if (_accountApi.success()) {
      this._accountModel = result;
      requestStatus = true;
      notifyListeners();
    } else {
      this._accountModel = AccountModel();
      requestStatus = false;
      notifyListeners();
    }
  }

  fadePage() {
    this._fadeOpacity = 0;
    notifyListeners();
    Timer(ConfigConstant.duration ~/ 3, () {
      this._fadeOpacity = 1;
      notifyListeners();
    });
  }

  double get fadeOpacity => _fadeOpacity;
  AccountModel get accountModel => _accountModel;
}

var userDetailNotifier = ChangeNotifierProvider<UserDetailNotifier>(
  (ref) {
    var notifier = UserDetailNotifier();
    notifier.load();
    return notifier;
  },
);
