import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/notifiers/social_signin_notifier.dart';
import 'package:vtenhappmerchant/widgets/scale_down_on_tap.dart';

class SocialSignIn extends ConsumerWidget {
  @override
  Widget build(BuildContext context, reader) {
    var notifier = reader(socialSigninNotifier);
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
    var signinOptions = [googleSignIn, facebookSignIn];
    if (Platform.isIOS) {
      if (!signinOptions.contains(apple)) {
        signinOptions.add(apple);
      }
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(signinOptions.length, (index) {
        return ScaleDownOnTab(
          onTap: signinOptions[index]['onPressed'],
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            height: 48,
            width: 48,
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
      }),
    );
  }
}
