import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';
import 'package:vtenhappmerchant/notifiers/authentication/session_notifier.dart';
import 'package:vtenhappmerchant/notifiers/authentication/social_signin_notifier.dart';
import 'package:vtenhappmerchant/types/session_type.dart';
import 'package:vtenhappmerchant/widgets/scale_down_on_tap.dart';

class SocialSignIn extends ConsumerWidget {
  final Function onTypeChange;

  SocialSignIn({this.onTypeChange});

  @override
  Widget build(BuildContext context, reader) {
    var notifier = reader(socialSigninNotifier);
    var sessionNotify = reader(sessionNotifier);
    var apple = {
      'icon': FontAwesomeIcons.apple,
      'name': "Apple",
      'color': Color(0xFF010101),
      'onPressed': () async {
        await notifier.logInWithApple(context);
      },
    };
    var googleSignIn = {
      'icon': FontAwesomeIcons.google,
      'name': "Google",
      'color': Color(0xFFd9372d),
      'onPressed': () async {
        await notifier.logInWithGoogle(context);
      },
    };
    var facebookSignIn = {
      'icon': FontAwesomeIcons.facebook,
      'name': "Facebook",
      'color': Color(0xFF465ea3),
      'onPressed': () async {
        await notifier.loginWithFB(context);
      },
    };

    bool isPhone = sessionNotify.type == SessionType.phoneNumber;
    var sessionTypeLogin = {
      'icon': !isPhone ? Icons.phone : Icons.email,
      'name': !isPhone ? "Mobile" : "Email",
      'color': Color(0xFF4e5d73),
      'onPressed': () async {
        if (onTypeChange != null) onTypeChange();
      },
    };

    var signinOptions = [googleSignIn, facebookSignIn];
    if (Platform.isIOS) {
      if (!signinOptions.contains(apple)) {
        signinOptions.add(apple);
      }
    }

    if (!signinOptions.contains(sessionTypeLogin)) {
      signinOptions.add(sessionTypeLogin);
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        signinOptions.length,
        (index) {
          return ScaleDownOnTab(
            onTap: signinOptions[index]['onPressed'],
            child: AnimatedContainer(
              duration: ConfigConstant.duration,
              margin: EdgeInsets.symmetric(horizontal: 5),
              height: ConfigConstant.objectHeight1,
              width: ConfigConstant.objectHeight1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: signinOptions[index]['color'],
              ),
              child: Center(
                child: FaIcon(
                  signinOptions[index]['icon'],
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
