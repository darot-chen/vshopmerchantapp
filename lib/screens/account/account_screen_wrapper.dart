import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/notifiers/authentication/user_signedin_status_notifier.dart';
import 'package:vtenhappmerchant/screens/account/account_setting_screen.dart';
import 'package:vtenhappmerchant/screens/sessions/session_step1.dart';
import 'package:vtenhappmerchant/types/session_flow_type.dart';
import 'package:vtenhappmerchant/widgets/loading.dart';

class AccountScreenWrapper extends ConsumerWidget {
  @override
  Widget build(BuildContext context, reader) {
    print("rebuild");
    var notifier = reader(userSignedinStatusNotifier);
    if (notifier.isSignedin == null) {
      return Scaffold(body: Loading(isLoading: true));
    }
    if (notifier.isSignedin == false) {
      return SessionSignIn(flowType: SessionFlowType.signin);
    } else {
      return AccountSettingScreen(onSignoutPressed: () {
        notifier.setIsSignedin(false);
      });
    }
  }
}
