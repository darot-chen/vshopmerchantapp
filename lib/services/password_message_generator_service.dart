import 'package:vtenhappmerchant/types/session_flow_type.dart';

class PasswordMessageGeneratorService {
  String titleKey, subtitleKey, buttonTextKey;

  PasswordMessageGeneratorService({this.titleKey, this.subtitleKey, this.buttonTextKey});
  static PasswordMessageGeneratorService call({SessionFlowType flowType, bool isAccountExisted}) {
    if (flowType == SessionFlowType.signin) {
      if (isAccountExisted) {
        return PasswordMessageGeneratorService(
          titleKey: "welcome_back",
          subtitleKey: "enter_your_password",
          buttonTextKey: "sign_in",
        );
      } else {
        return PasswordMessageGeneratorService(
          titleKey: "account_does_not_exist",
          subtitleKey: "enter_password_to_sign_up_new_account",
          buttonTextKey: "sign_up",
        );
      }
    }
    if (flowType == SessionFlowType.signup) {
      if (!isAccountExisted) {
        return PasswordMessageGeneratorService(
          titleKey: "welcome_to_vtenh",
          subtitleKey: "please_enter_your_password",
          buttonTextKey: "sign_up",
        );
      } else {
        return PasswordMessageGeneratorService(
          titleKey: "account_already_exist",
          subtitleKey: "enter_password_to_sign_in",
          buttonTextKey: "sign_in",
        );
      }
    }
    return PasswordMessageGeneratorService(
      titleKey: "",
      subtitleKey: "no_informations_provide",
      buttonTextKey: "error",
    );
  }
}
