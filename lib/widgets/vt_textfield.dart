import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';

class VTTextField extends StatefulWidget {
  final String hintText, labelText;
  final Function onSubmit;
  final Function onSave;
  final String value;
  final Function onChanged;
  final String errorText;
  final Widget suffix;
  final bool obscureText;
  final TextInputType keyboardType;
  final bool ignoring;
  const VTTextField({
    Key key,
    this.hintText = "",
    this.onSubmit,
    this.onSave,
    this.labelText,
    this.errorText,
    this.value,
    this.onChanged,
    this.suffix,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.ignoring = false,
  }) : super(key: key);
  @override
  _VTenhTextFieldState createState() => _VTenhTextFieldState();
}

class _VTenhTextFieldState extends State<VTTextField> {
  TextEditingController _controller;
  FocusNode _focusNode = FocusNode();
  bool isFocus = false;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.ignoring,
      child: FocusScope(
        child: Focus(
          focusNode: _focusNode,
          onFocusChange: (val) {
            if (val) setState(() => isFocus = true);
            if (!val) setState(() => isFocus = false);
          },
          child: TextFormField(
            controller: _controller,
            onTap: () {},
            style: Theme.of(context).textTheme.bodyText2,
            keyboardType: widget.keyboardType,
            maxLines: widget.obscureText ? 1 : null,
            decoration: buildVTInputDecoration(
              context: context,
              labelText: widget.labelText,
              errorText: widget.errorText,
              suffix: widget.suffix,
            ),
            obscureText: widget.obscureText,
            onChanged: (value) {
              widget.onSave(value);
            },
          ),
        ),
      ),
    );
  }
}

InputDecoration buildVTInputDecoration({
  BuildContext context,
  @required String labelText,
  String errorText,
  String hintText,
  Widget suffix = const SizedBox(height: 48),
}) {
  return InputDecoration(
    labelText: labelText,
    contentPadding: EdgeInsets.symmetric(horizontal: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(ConfigConstant.radius),
      borderSide: BorderSide(color: Theme.of(context).textTheme.bodyText1.color),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(ConfigConstant.radius),
      borderSide: BorderSide(color: Theme.of(context).textTheme.bodyText1.color),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(ConfigConstant.radius),
      borderSide: BorderSide(color: Theme.of(context).primaryColor),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(ConfigConstant.radius),
      borderSide: BorderSide(color: Theme.of(context).errorColor),
    ),
    fillColor: Theme.of(context).textTheme.bodyText1.color.withOpacity(.1),
    filled: true,
    suffixIcon: suffix,
    labelStyle: Theme.of(context).textTheme.bodyText2.copyWith(color: Colors.grey),
    errorText: errorText,
    hintText: hintText,
    errorStyle: TextStyle(fontSize: 0, height: 0),
  );
}
