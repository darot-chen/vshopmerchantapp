import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';

mixin Toast {
  showError({BuildContext context, String title, String subtitle, Function onClose}) {
    BotToast.showNotification(
      leading: (_) => Container(
        height: double.infinity,
        width: ConfigConstant.margin,
        alignment: Alignment.center,
        child: Icon(Icons.error),
      ),
      title: (_) => Text(
        title,
        style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
      ),
      backgroundColor: Theme.of(context).errorColor,
      subtitle: (_) => Text(
        subtitle,
        style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white),
      ),
      onClose: onClose,
    );
  }

  showSuccess({BuildContext context, String title, String subtitle, Function onClose}) {
    BotToast.showNotification(
      leading: (_) => Container(
        height: double.infinity,
        width: ConfigConstant.margin,
        alignment: Alignment.center,
        child: Icon(Icons.verified),
      ),
      title: (_) => Text(
        title,
        style: Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.white),
      ),
      backgroundColor: Theme.of(context).accentColor,
      subtitle: (_) => Text(
        subtitle,
        style: Theme.of(context).textTheme.caption.copyWith(color: Colors.white),
      ),
      onClose: onClose,
    );
  }
}
