import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';
import 'package:vtenhappmerchant/widgets/scale_down_on_tap.dart';

class MainActionButton extends StatelessWidget {
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final double width;
  final String title;
  final Function onPressed;
  final bool filled;
  final double radius;

  const MainActionButton({
    Key key,
    this.margin,
    this.filled = true,
    this.padding,
    this.width,
    this.radius = ConfigConstant.radius,
    @required this.title,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleDownOnTab(
      onTap: onPressed,
      child: AnimatedContainer(
        margin: margin,
        duration: ConfigConstant.duration,
        width: width ?? double.infinity,
        child: FlatButton(
          onPressed: () {
            onPressed();
          },
          padding: EdgeInsets.all(0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Ink(
              decoration: BoxDecoration(
                gradient: filled
                    ? LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFFEF542F),
                          Color(0xFFd30e33),
                        ],
                      )
                    : null,
                borderRadius: BorderRadius.circular(radius),
              ),
              child: Container(
                width: width ?? double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: filled ? Colors.white : Colors.grey),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
