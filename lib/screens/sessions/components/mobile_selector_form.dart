import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:vtenhappmerchant/widgets/vt_textfield.dart';

class MobilePhoneSelectorForm extends StatelessWidget {
  const MobilePhoneSelectorForm({Key key, @required this.number, @required this.onInputChanged, this.errorText})
      : super(key: key);
  final PhoneNumber number;
  final Function onInputChanged;
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return InternationalPhoneNumberInput(
      onInputChanged: (PhoneNumber number) => onInputChanged(number),
      // onFieldSubmitted: (number) => onInputChanged(PhoneNumber(phoneNumber: number)),
      selectorButtonOnErrorPadding: 0,
      selectorConfig: SelectorConfig(selectorType: PhoneInputSelectorType.DIALOG),
      ignoreBlank: false,
      autoFocusSearch: true,
      countrySelectorScrollControlled: true,
      selectorTextStyle: TextStyle(color: Colors.black),
      initialValue: number,
      formatInput: false,
      textStyle: Theme.of(context).textTheme.bodyText2,
      inputDecoration: buildVTInputDecoration(
        labelText: tr("mobile_phone"),
        context: context,
        errorText: errorText,
      ),
      searchBoxDecoration: InputDecoration(
        labelText: tr("search_country_name_or_code"),
        labelStyle: Theme.of(context).textTheme.bodyText1,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
