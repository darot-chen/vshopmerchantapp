import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/notifiers/authentication/user_signedin_status_notifier.dart';
import 'package:vtenhappmerchant/screens/account/account_screen_wrapper.dart';
import 'package:vtenhappmerchant/screens/sessions/components/snackbar.dart';
import 'package:vtenhappmerchant/services/authenticators/user_password_authenticator.dart';
import 'package:vtenhappmerchant/types/session_type.dart';
import 'package:vtenhappmerchant/widgets/loading.dart';

class SessionAutoSigninScreen extends StatelessWidget {
  final String login;
  final String password;
  final SessionType sessionType;

  const SessionAutoSigninScreen({
    Key key,
    @required this.login,
    @required this.password,
    @required this.sessionType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var notifier = context.read(userSignedinStatusNotifier);
    loginChecker(context, notifier);

    return Scaffold(
      body: Container(
        child: Loading(isLoading: true),
      ),
    );
  }

  loginChecker(BuildContext context, UserSignedinStatusNotifier notifier) async {
    print("email: $login, password: $password, passwordConfirmation: $password");

    var auth = UserPasswordAuthenticator();

    // var interceptor = UserTokenInterceptorFixture(auth.network);
    // auth.network.addInterceptor(interceptor);

    await auth.exec(
      clientId: ApiConstant.clientId,
      clientSecret: ApiConstant.clientSecret,
      username: login,
      password: password,
    );

    if (auth.success()) {
      notifier.setIsSignedin(true);
      Navigator.of(context)
        ..pop()
        ..pushReplacement(
          MaterialPageRoute(
            builder: (context) => AccountScreenWrapper(),
          ),
        );
    } else {
      notifier.setIsSignedin(false);
      showSnackBar(context: context, message: auth.errorMessage());
    }
  }
}
