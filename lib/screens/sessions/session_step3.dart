import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/notifiers/authentication/session_notifier.dart';
import 'package:vtenhappmerchant/screens/authentication/auth_verification.dart';
import 'package:vtenhappmerchant/screens/sessions/components/auth_app_bar.dart';

class SessionStep3 extends ConsumerWidget {
  Future<dynamic> onSubmit(BuildContext context) async {
    // Navigator.push(context, MaterialPageRoute(builder: (context) => SessionStep1()));
  }

  @override
  Widget build(BuildContext context, reader) {
    var notifier = reader(sessionNotifier);
    print("ui build");

    if (notifier.isAccountExisted == true) {
      return accountExist(notifier);
    } else {
      return buildScaffold(context, notifier);
    }
  }

  accountExist(notifier) {
    return Text(tr("account_exist") + "${notifier.login}");
  }

  Scaffold buildScaffold(BuildContext context, SessionNotifier notifier) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AuthAppBarWithTexts(
                title: tr("enter_your_verification_code"),
                subtitle: tr("we_have_just_sent_a_pin_code_to", args: ['012 33 33 90']),
                currentIndex: 0,
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Theme.of(context).errorColor,
                    Theme.of(context).accentColor,
                  ],
                ),
              ),
              const SizedBox(height: 24),
              VerificationCodeScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
