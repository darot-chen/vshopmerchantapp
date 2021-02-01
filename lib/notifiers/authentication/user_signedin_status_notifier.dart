import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/services/sign_in_checker_service.dart';

class UserSignedinStatusNotifier extends ChangeNotifier {
  bool _isSignedin;

  load() async {
    var value = await SignInCheckerService.call();
    setIsSignedin(value);
  }

  setIsSignedin(bool value) {
    if (this._isSignedin == value) {
      return;
    }
    this._isSignedin = value;
    notifyListeners();
  }

  bool get isSignedin => _isSignedin;
}

final userSignedinStatusNotifier = ChangeNotifierProvider<UserSignedinStatusNotifier>((ref) {
  return UserSignedinStatusNotifier()..load();
});
