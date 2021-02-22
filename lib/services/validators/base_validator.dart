import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

abstract class BaseValidator {
  bool error = false;
  String errorMessage;
  Map<String, dynamic> fields;
  BaseValidator({@required this.fields});

  success() {
    return this.error == false;
  }

  isEmpty(String value) {
    if (value == null || value.isEmpty) {
      this.error = true;
      String message = getErrorMessageKey(key: 'required');
      setError(tr(message));
      return true;
    } else {
      this.error = false;
      return false;
    }
  }

  getErrorMessageKey({String key}) {
    Map<String, String> errorMessage = {
      "required": "input_value",
      "email": "invalid_email_address",
      "number": "input_a_valid_number",
      "minLength": "should_at_least_8_digit",
      "maxLength": "should_not_bigger_than_15_digit",
      "username": "do_not_contain_special_character_or_start_with_a_number",
      "phone_number": "invalid_phone_number",
    };

    return errorMessage[key] ?? "";
  }

  setError(String message) {
    this.errorMessage = message;
    this.error = true;
  }

  call();
}
