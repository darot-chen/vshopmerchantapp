import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';

class VTListTile extends StatelessWidget {
  const VTListTile(
      {Key key,
      this.subtitleText,
      @required this.titleText,
      this.leadingIcon,
      this.trailing,
      this.isRotate = true,
      this.onTap})
      : super(key: key);

  final String subtitleText;
  final String titleText;
  final IconData leadingIcon;
  final Widget trailing;
  final bool isRotate;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    String title = titleText;
    String subtitle = subtitleText;
    TextStyle subtitleStyle, subtitleStyleTMP;

    subtitleStyle = subtitleStyle = Theme.of(context).textTheme.subtitle2;
    TextStyle titleStyle, titleStyleTMP;

    titleStyle = titleStyleTMP = Theme.of(context).textTheme.bodyText1.copyWith(
          color: Theme.of(context).textTheme.headline1.color,
        );

    bool isRotateAndSubtitleNull = isRotate && subtitle == null;

    title = isRotate ? subtitle ?? titleText : titleText;
    subtitle = isRotateAndSubtitleNull
        ? subtitleText
        : !isRotate
            ? subtitleText
            : titleText;
    titleStyle = isRotate ? subtitleStyleTMP : titleStyleTMP;
    subtitleStyle = isRotate ? titleStyleTMP : subtitleStyleTMP;

    var subtitleWidget = subtitle != null
        ? Text(
            subtitle,
            style: subtitleStyle,
          )
        : null;
    var titleWidget = title != null
        ? Text(
            title,
            style: subtitleText == null ? titleStyleTMP : titleStyle,
          )
        : null;

    return ListTile(
      leading: leadingIcon != null
          ? Container(width: ConfigConstant.objectHeight1, height: double.infinity, child: Icon(leadingIcon))
          : null,
      onTap: onTap,
      title: titleWidget,
      subtitle: subtitleWidget,
      trailing: trailing,
    );
  }
}
