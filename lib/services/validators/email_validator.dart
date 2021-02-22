import 'package:easy_localization/easy_localization.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:vtenhappmerchant/services/validators/base_validator.dart';

class EmailValidator extends BaseValidator {
  EmailValidator(Map<String, dynamic> fields) : super(fields: fields);
  call() async {
    String _email = fields['email'] ?? "";
    super.error = false;

    if (!super.isEmpty(_email)) {
      final form = FormControl(
        value: _email,
        validators: [
          Validators.email,
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
