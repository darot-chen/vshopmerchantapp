import 'package:vtenhappmerchant/models/account_model.dart';
import 'package:vtenhappmerchant/networks/interceptors/fixtures/account_checker/account_checkers.dart';
import 'package:vtenhappmerchant/services/apis/base_app_api.dart';

class AccountCheckerApi extends BaseAppApi {
  AccountModel objectTransformer(Map<String, dynamic> json) {
    return AccountModel.fromJson(json);
  }

  check({String login, String idToken}) async {
    var interceptorTest = AccountCheckerErrorInterceptor(this.network);
    this.network.addInterceptor(interceptorTest);

    var options = {
      "login": login,
      "id_token": idToken,
    };
    return await fetchOne(options: options, collection: false);
  }

  String nameInUrl() {
    return 'account_checkers';
  }

  String nameInParams() {
    return '';
  }
}
