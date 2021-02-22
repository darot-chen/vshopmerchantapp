import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';
import 'package:vtenhappmerchant/services/validators/validators_export.dart';
import 'package:vtenhappmerchant/types/session_flow_type.dart';
import 'package:vtenhappmerchant/types/session_type.dart';

class SessionNotifier extends ChangeNotifier {
  String _login = "";
  String _password = "";
  String _idToken;
  SessionType _type = SessionType.email;
  SessionFlowType _flowType;
  bool _isAccountExisted = false;
  bool _isLoading = false;
  double _fadeOpacity = 1;
  String _error, _passwordError, _slideMessage;
  PhoneNumber _phoneNumber = PhoneNumber(dialCode: "+855", isoCode: "KH", phoneNumber: "");
  SessionNotifier();

  checkAccount(bool testValue) async {
    // var accountChecker = AccountCheckerApi();
    // if (isCheckable()) {
    //   await accountChecker.check(idToken: this._idToken, login: this._login);
    //   if (accountChecker.success()) {
    //     _isAccountExisted = true;
    //   } else {
    //     _isAccountExisted = false;
    //   }
    //   print("_isAccountExisted $_isAccountExisted");
    // }
    _isAccountExisted = testValue;
    notifyListeners();
  }

  isCheckable() {
    return this._login != null || this._idToken != null;
  }

  void setPasswordError(String error) {
    this._passwordError = error;
    fadePage();
  }

  void validationPassword() {
    this._passwordError = null;
    notifyListeners();
    BaseValidator validator;

    validator = PasswordValidator({'password': this.password});
    validator.call();

    if (!validator.success()) {
      if (this._passwordError == validator.errorMessage) return;
      this._passwordError = validator.errorMessage;
      fadePage();
    }
  }

  void validation() {
    setError(null);
    BaseValidator validator;

    print(this.type);

    //validate phone number
    if (this._type == SessionType.phoneNumber) {
      print(this._phoneNumber.phoneNumber);
      validator = PhoneNumberValidator({'phone_number': this._phoneNumber.phoneNumber});
      validator.call();
    }

    //validate email
    else if (this._type == SessionType.email) {
      validator = EmailValidator({"email": this._login});
      validator.call();
    }

    if (!validator.success()) {
      setError(validator.errorMessage);
      fadePage();
    }
  }

  setLogin({String login = "", SessionType type, bool changeType = false}) {
    this._login = login;
    this._error = null;
    if (changeType) setType(type);
  }

  setFlowType(SessionFlowType value) {
    this._flowType = value;
  }

  setType(SessionType value) {
    if (type != value) {
      this._type = value;
      fadePage();
    }
  }

  setError(String err) {
    if (this._error == err) return;
    this._error = err;
  }

  setPhoneNumber(PhoneNumber number) {
    var phoneNumberString = number.phoneNumber.replaceAll(number.dialCode, "");
    this._phoneNumber = PhoneNumber(
      phoneNumber: phoneNumberString,
      dialCode: number.dialCode,
      isoCode: number.isoCode,
    );
  }

  setPassword(String value) {
    this._password = value;
  }

  fadePage() {
    this._fadeOpacity = 0;
    notifyListeners();
    Timer(ConfigConstant.fadeDuration, () {
      this._fadeOpacity = 1;
      notifyListeners();
    });
  }

  setSlideMessage({String message}) {
    setError(null);
    this._slideMessage = message;
    fadePage();
  }

  String get slideMessage => this._slideMessage;
  bool get isAccountExisted => _isAccountExisted;
  bool get isLoading => _isLoading;
  String get login => _login;
  String get password => _password;
  String get error => _error;
  String get passwordError => _passwordError;
  double get fadeOpacity => _fadeOpacity;
  PhoneNumber get phoneNumber => _phoneNumber;
  SessionType get type => _type;
  SessionFlowType get flowType => _flowType;

  bool get isPhone => _type == SessionType.phoneNumber;
  bool get isEmail => _type == SessionType.email;
  // bool get isLogin => _type == SessionType.username;
}

final sessionNotifier = ChangeNotifierProvider<SessionNotifier>(
  (ref) {
    return SessionNotifier();
  },
);
