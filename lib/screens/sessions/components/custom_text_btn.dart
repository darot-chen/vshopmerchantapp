import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key key,
    @required this.onPressed,
    @required this.label,
    @required this.buttonLabel,
  }) : super(key: key);

  final Function onPressed;
  final String label;
  final String buttonLabel;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          Text(
            " " + buttonLabel,
            style: Theme.of(context).textTheme.bodyText2.copyWith(
                  color: Theme.of(context).accentColor,
                ),
          ),
        ],
      ),
    );
  }
}
