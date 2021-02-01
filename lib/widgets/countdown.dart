import 'package:flutter/material.dart';
import 'package:touchable_opacity/touchable_opacity.dart';

// ignore: must_be_immutable
class Countdown extends AnimatedWidget {
  Countdown({Key key, this.animation}) : super(key: key, listenable: animation);
  final Animation<int> animation;
  String timerText;
  int minute;
  int second;

  @override
  build(BuildContext context) {
    Duration clockTimer = Duration(seconds: animation.value);

    timerText =
        '${clockTimer.inMinutes.remainder(60).toString()}m : ${clockTimer.inSeconds.remainder(60).toString().padLeft(2, '0')}s';
    minute = clockTimer.inMinutes.remainder(60);
    second = clockTimer.inSeconds.remainder(60);

    return resendWidget();
  }

  Widget resendWidget() {
    if (minute == 0 && second == 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Didn't receive pin code",
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            width: 10,
          ),
          TouchableOpacity(
            child: Text(
              "Resend",
              style: TextStyle(color: Color(0xFFFF7F4A)),
            ),
          ),
        ],
      );
    } else {
      return Text(
        "Resent in time",
        style: TextStyle(
          color: Colors.grey,
        ),
      );
    }
  }
}
