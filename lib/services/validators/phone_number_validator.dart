import 'package:easy_localization/easy_localization.dart';
import 'package:vtenhappmerchant/constants/format_constant.dart';
import 'package:vtenhappmerchant/services/validators/base_validator.dart';

class PhoneNumberValidator extends BaseValidator {
  PhoneNumberValidator(Map<String, dynamic> fields) : super(fields: fields);
  call() async {
    String _phoneNumber = fields['phone_number'] ?? "";
    super.error = false;

    if (!isEmpty(_phoneNumber)) {
      super.error = !FormatConstant.phoneNumber.hasMatch(_phoneNumber);
      if (!super.success()) {
        String message = super.getErrorMessageKey(key: "phone_number");
        super.setError(tr(message));
      }
    }
  }
}
