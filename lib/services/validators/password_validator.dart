import 'package:easy_localization/easy_localization.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:vtenhappmerchant/services/validators/base_validator.dart';

class PasswordValidator extends BaseValidator {
  PasswordValidator(Map<String, dynamic> fields) : super(fields: fields);

  call() async {
    String _password = fields['password'] ?? "";
    super.error = false;

    if (!super.isEmpty(_password)) {
      final form = FormControl(
        value: _password,
        validators: [
          Validators.minLength(8),
          Validators.maxLength(15),
        ],
      );
      if (form.invalid) {
        dynamic key = form.errors.keys.single;
        String message = super.getErrorMessageKey(key: key);
        super.setError(tr(message));
      }
    }
  }
}
