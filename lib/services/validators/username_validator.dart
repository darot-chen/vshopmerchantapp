import 'package:easy_localization/easy_localization.dart';
import 'package:vtenhappmerchant/constants/format_constant.dart';
import 'package:vtenhappmerchant/services/validators/base_validator.dart';

class UsernameValidator extends BaseValidator {
  UsernameValidator(Map<String, dynamic> fields) : super(fields: fields);
  call() async {
    String username = fields['username'] ?? "";
    super.error = false;

    if (!isEmpty(username)) {
      super.error = !FormatConstant.username.hasMatch(username);
      if (!super.success()) {
        String message = super.getErrorMessageKey(key: "username");
        super.setError(tr(message));
      }
    }
  }
}
