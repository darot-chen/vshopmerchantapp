import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vtenhappmerchant/widgets/scale_down_on_tap.dart';

class SocialSignIn extends StatefulWidget {
  @override
  _SocialSignInState createState() => _SocialSignInState();
}

class _SocialSignInState extends State<SocialSignIn> {
  String errorMessage;

  Future<void> _loginWithFB() async {
    try {
      // by default the login method has the next permissions ['email','public_profile']
      AccessToken accessToken = await FacebookAuth.instance.login();
      print(accessToken.toJson());
      // get the user data
      final userData = await FacebookAuth.instance.getUserData();
      print(userData);
    } on FacebookAuthException catch (e) {
      switch (e.errorCode) {
        case FacebookAuthErrorCode.OPERATION_IN_PROGRESS:
          print("You have a previous login operation in progress");
          break;
        case FacebookAuthErrorCode.CANCELLED:
          print("login cancelled");
          break;
        case FacebookAuthErrorCode.FAILED:
          print("login failed");
          break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var apple = {
      'icon': FontAwesomeIcons.apple,
      'name': "Apple",
      'color': Color(0xFF010101),
      'onPressed': () async {},
    };
    var googleSignIn = {
      'icon': FontAwesomeIcons.google,
      'name': "Google",
      'color': Color(0xFFd9372d),
      'onPressed': () async {},
    };
    var facebookSignIn = {
      'icon': FontAwesomeIcons.facebook,
      'name': "Facebook",
      'color': Color(0xFF465ea3),
      'onPressed': () async {
        await _loginWithFB();
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
