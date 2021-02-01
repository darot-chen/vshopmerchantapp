import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';
import 'package:vtenhappmerchant/mixins/toast.dart';
import 'package:vtenhappmerchant/models/account_model.dart';
import 'package:vtenhappmerchant/notifiers/authentication/session_notifier.dart';
import 'package:vtenhappmerchant/screens/authentication/social_signin.dart';
import 'package:vtenhappmerchant/screens/sessions/components/auth_app_bar.dart';
import 'package:vtenhappmerchant/screens/sessions/components/custom_text_btn.dart';
import 'package:vtenhappmerchant/screens/sessions/components/password_field.dart';
import 'package:vtenhappmerchant/screens/sessions/session_auto_signIn_screen.dart';
import 'package:vtenhappmerchant/services/apis/account_api/account_api.dart';
import 'package:vtenhappmerchant/services/authenticators/user_password_authenticator.dart';
import 'package:vtenhappmerchant/services/password_message_generator_service.dart';
import 'package:vtenhappmerchant/widgets/horizontal_text_Line.dart';
import 'package:vtenhappmerchant/widgets/main_action_button.dart';

class SessionStep2 extends StatelessWidget with Toast {
  @override
  Widget build(BuildContext context) {
    var notifier = context.read(sessionNotifier);
    return WillPopScope(
      onWillPop: () async {
        notifier.setLogin(login: notifier.login, type: notifier.type);
        Navigator.pop(context);
        return false;
      },
      child: buildScaffold(context),
    );
  }

  Future<dynamic> onSubmit({BuildContext context}) async {
    var _notifier = context.read(sessionNotifier);
    _notifier.validationPassword();

    if (_notifier.passwordError != null) {
      showError(context: context, title: tr("error"), subtitle: _notifier.passwordError);
      return;
    }

    var account = AccountModel(
      password: _notifier.password,
      passwordConfirmation: _notifier.password,
    );

    // print("email: ${_notifier.login}, password: ${_notifier.password}, passwordConfirmation: ${_notifier.password}");
    var accountApi = AccountApi();
    var userPasswordAuthenticator = UserPasswordAuthenticator();

    var isAccountExisted = _notifier.isAccountExisted;
    if (!isAccountExisted) {
      account.email = _notifier.login;
      await accountApi.create(account);
    } else {
      await userPasswordAuthenticator.exec(
        clientId: ApiConstant.clientId,
        clientSecret: ApiConstant.clientSecret,
        username: _notifier.login,
        password: _notifier.password,
      );
      if (!userPasswordAuthenticator.success()) {
        showError(
          context: context,
          title: tr("error"),
          subtitle: userPasswordAuthenticator.errorMessage() ?? tr("we_cannot_sign_you_with_this_credential"),
        );
        return;
      }
    }

    if (userPasswordAuthenticator.success()) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SessionAutoSigninScreen(
            login: _notifier.login,
            password: _notifier.password,
            sessionType: _notifier.type,
          ),
        ),
      );
    } else {
      _notifier.setError(tr("we_cannot_sign_you_with_this_credential"));
      _notifier.fadePage();
    }
  }

  SizedBox buildSizedBox() => const SizedBox(height: ConfigConstant.margin2);

  Scaffold buildScaffold(BuildContext context) {
    var _messages = getMessage(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: ConfigConstant.objectHeight1 / 2),
        children: [
          AuthAppBarWithTexts(
            title: tr(_messages.titleKey),
            subtitle: tr(_messages.subtitleKey),
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
          const SizedBox(height: ConfigConstant.objectHeight1 / 2),
          Consumer(
            builder: (context, watch, child) {
              var _notifier = watch(sessionNotifier);
              return PasswordField(
                labelText: tr("password"),
                value: _notifier.password ?? "",
                errorText: _notifier.passwordError,
                onSaved: (val) {
                  _notifier.setPassword(val);
                },
              );
            },
          ),
          buildSizedBox(),
          MainActionButton(
            title: tr(_messages.buttonTextKey),
            onPressed: () async {
              onSubmit(context: context);
            },
            filled: true,
          ),
          Consumer(
            child: CustomTextButton(
              label: tr("forgot_password"),
              buttonLabel: tr("reset"),
              onPressed: () {},
            ),
            builder: (context, watch, forgetPassword) {
              var _notifier = watch(sessionNotifier);
              return Column(
                children: [
                  if (_notifier.isAccountExisted) forgetPassword,
                  if (!_notifier.isAccountExisted) signUp,
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  PasswordMessageGeneratorService getMessage(BuildContext context) {
    var _notifier = context.read(sessionNotifier);
    var _messages = PasswordMessageGeneratorService.call(
      flowType: _notifier.flowType,
      isAccountExisted: _notifier.isAccountExisted,
    );
    return _messages;
  }

  Widget get signUp {
    return Column(
      children: [
        const SizedBox(height: ConfigConstant.margin1),
        HorizontalLine(text: tr("or_sign_in_with")),
        const SizedBox(height: ConfigConstant.margin1),
        SocialSignIn(),
      ],
    );
  }
}
