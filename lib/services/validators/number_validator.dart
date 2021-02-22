import 'package:easy_localization/easy_localization.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:vtenhappmerchant/services/validators/base_validator.dart';

class NumberValidator extends BaseValidator {
  NumberValidator(Map<String, dynamic> fields) : super(fields: fields);
  call() async {
    String _number = fields['number'] ?? "";
    super.error = false;

    if (!super.isEmpty(_number)) {
      final form = FormControl(
        value: _number,
        validators: [
          Validators.required,
          Validators.number,
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
