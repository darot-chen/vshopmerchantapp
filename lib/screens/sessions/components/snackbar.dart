import 'package:flutter/material.dart';

showSnackBar({BuildContext context, String message}) {
  return Scaffold.of(context)
      .showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Theme.of(context).errorColor,
        ),
      )
      .closed
      .then(
    (value) {
      Scaffold.of(context).removeCurrentSnackBar();
      return false;
    },
  );
}
