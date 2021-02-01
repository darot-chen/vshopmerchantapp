import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/widgets/scale_down_on_tap.dart';
import 'package:vtenhappmerchant/widgets/vt_textfield.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    Key key,
    this.value,
    this.onSaved,
    this.labelText,
    this.errorText,
  }) : super(key: key);

  final String value;
  final Function onSaved;
  final String labelText;
  final String errorText;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return VTTextField(
      labelText: widget.labelText,
      value: widget.value,
      errorText: widget.errorText,
      onSave: (val) {
        widget.onSaved(val);
      },
      suffix: ScaleDownOnTab(
        onTap: () {
          setState(() {
            obscureText = !obscureText;
          });
        },
        child: Icon(
          obscureText ? Icons.visibility_off : Icons.visibility,
          color: Theme.of(context).textTheme.bodyText1.color,
        ),
      ),
      obscureText: obscureText,
    );
  }
}
