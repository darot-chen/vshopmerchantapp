import 'package:easy_localization/easy_localization.dart';
import 'dart:async';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';
import 'package:vtenhappmerchant/mixins/toast.dart';
import 'package:vtenhappmerchant/notifiers/authentication/session_notifier.dart';
import 'package:vtenhappmerchant/screens/authentication/social_signin.dart';
import 'package:vtenhappmerchant/screens/sessions/components/auth_app_bar.dart';
import 'package:vtenhappmerchant/screens/sessions/components/mobile_selector_form.dart';
import 'package:vtenhappmerchant/screens/sessions/components/password_field.dart';
import 'package:vtenhappmerchant/screens/sessions/session_step2.dart';
import 'package:vtenhappmerchant/types/session_flow_type.dart';
import 'package:vtenhappmerchant/types/session_type.dart';
import 'package:vtenhappmerchant/widgets/horizontal_text_Line.dart';
import 'package:vtenhappmerchant/widgets/main_action_button.dart';
import 'package:vtenhappmerchant/widgets/vt_textfield.dart';

class SessionSignIn extends StatelessWidget with Toast {
  final SessionFlowType flowType;
  SessionSignIn({@required this.flowType});

  Future<dynamic> onSubmit(BuildContext context) async {
    var _notifier = context.read(sessionNotifier);
    _notifier.validation();
    if (_notifier.error == null) {
      //this check account is just tmp
      await _notifier.checkAccount(true);
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SessionStep2()),
      );
    } else {
      showError(context: context, title: tr("error"), subtitle: _notifier.error);
    }
  }

  final GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    var _notifier = context.read(sessionNotifier);
    _notifier.setFlowType(flowType);
    return buildScaffold(context);
  }

  Scaffold buildScaffold(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: ConfigConstant.objectHeight1 / 2),
        children: [
          buildVTLogo(context),
          buildSizedBox(),
          buildFlipCard(context),
          HorizontalLine(text: tr("or_sign_in_with")),
          buildSocialSignIn(context),
        ],
      ),
    );
  }

  Widget buildSocialSignIn(BuildContext context) {
    var _notifier = context.read(sessionNotifier);
    return SocialSignIn(
      onTypeChange: () {
        _notifier.setPasswordError(null);
        _notifier.setSlideMessage(message: null);
        cardKey.currentState.toggleCard();
        Timer(
          ConfigConstant.fadeDuration * 2.5,
          () {
            if (cardKey.currentState.isFront) {
              _notifier.setType(SessionType.email);
            } else {
              _notifier.setType(SessionType.phoneNumber);
            }
          },
        );
      },
    );
  }

  Widget buildFlipCard(BuildContext context) {
    return FlipCard(
      key: cardKey,
      direction: FlipDirection.HORIZONTAL,
      front: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildAuthAppBarWithTexts(
            context: context,
            title: tr("continue_with_email"),
            subtitle: tr("enter_your_email_address"),
          ),
          buildSizedBox(),
          emailFormCard(context),
        ],
      ),
      back: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildAuthAppBarWithTexts(
            context: context,
            title: tr("continue_with_mobile_phone"),
            subtitle: tr("enter_your_phone_number"),
          ),
          buildSizedBox(),
          mobilePhoneFormCard(context),
        ],
      ),
      flipOnTouch: false,
      onFlipDone: (isFront) {
        var notifier = context.read(sessionNotifier);
        if (isFront) {
          notifier.setLogin(
            type: SessionType.email,
            changeType: true,
          );
        } else {
          notifier.setLogin(
            type: SessionType.phoneNumber,
            changeType: true,
          );
        }
      },
    );
  }

  SizedBox buildSizedBox() => const SizedBox(height: ConfigConstant.margin2);

  Widget mobilePhoneFormCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ConfigConstant.margin2),
      decoration: boxCardDecoration(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // buildSizedBox(),
          buildMobilePhoneInput(),
          // buildSlideToVerify(context, "slide_to_verify_phone_number".locale()),
          // buildPasswordForms(),
          // buildErrorText(context),
          buildSizedBox(),

          MainActionButton(
            title: tr("continue"),
            filled: true,
            onPressed: () async {
              await onSubmit(context);
            },
          ),
        ],
      ),
    );
  }

  Widget emailFormCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(ConfigConstant.margin2),
      decoration: boxCardDecoration(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildEmailInput(),
          buildSizedBox(),
          MainActionButton(
            title: tr("continue"),
            filled: true,
            onPressed: () async {
              await onSubmit(context);
            },
          ),
          // buildSizedBox(),
        ],
      ),
    );
  }

  Widget buildErrorText(BuildContext context) {
    return Consumer(
      builder: (context, watch, child) {
        var notifier = watch(sessionNotifier);
        return AnimatedOpacity(
          duration: const Duration(milliseconds: 400),
          opacity: notifier.fadeOpacity,
          child: Container(
            height: ConfigConstant.margin1 + ConfigConstant.margin1,
            alignment: Alignment.centerRight,
            child: Text(
              notifier.passwordError ?? "",
              style: Theme.of(context).textTheme.caption.copyWith(color: Theme.of(context).errorColor),
            ),
          ),
        );
      },
    );
  }

  Decoration boxCardDecoration(BuildContext context) {
    return BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(ConfigConstant.radius),
      boxShadow: [
        BoxShadow(
          blurRadius: 5.0,
          color: Colors.black.withOpacity(0.1),
        )
      ],
    );
  }

  Container buildVTLogo(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      child: Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Image.asset('assets/images/product/iphone.png', width: 50),
          Text(
            ' ' + tr("vtenh", namedArgs: {'year': '2020'}),
            style: Theme.of(context).textTheme.headline5.copyWith(color: Theme.of(context).accentColor),
          )
        ],
      ),
    );
  }

  Widget buildEmailInput() {
    return Consumer(
      builder: (context, reader, child) {
        var notifier = reader(sessionNotifier);
        return VTTextField(
          labelText: tr("email"),
          value: notifier.login ?? null,
          keyboardType: TextInputType.emailAddress,
          onSave: (val) {
            notifier.setLogin(login: val, type: SessionType.email);
          },
          onChanged: (val) {
            notifier.setLogin(login: val, type: SessionType.email);
          },
          errorText: notifier.error,
        );
      },
    );
  }

  Widget buildMobilePhoneInput() {
    return Consumer(
      builder: (context, reader, child) {
        var notifier = reader(sessionNotifier);
        return MobilePhoneSelectorForm(
          number: notifier.phoneNumber,
          errorText: notifier.error,
          onInputChanged: (PhoneNumber val) {
            notifier.setPhoneNumber(val);
          },
        );
      },
    );
  }

  Widget buildPasswordForms() {
    return Consumer(
      builder: (context, reader, child) {
        var notifier = reader(sessionNotifier);
        return PasswordField(
          labelText: tr("password"),
          value: notifier.password ?? "",
          errorText: notifier.passwordError,
          onSaved: (val) {
            notifier.setPassword(val);
          },
        );
      },
    );
  }

  Widget buildAuthAppBarWithTexts({BuildContext context, String title, String subtitle}) {
    return AuthAppBarWithTexts(
      title: title,
      subtitle: subtitle,
      currentIndex: 0,
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          Theme.of(context).errorColor,
          Theme.of(context).accentColor,
        ],
      ),
    );
  }
}
