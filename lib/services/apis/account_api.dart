import 'package:vtenhappmerchant/models/account_model.dart';
import 'package:vtenhappmerchant/models/base_model.dart';
import 'package:vtenhappmerchant/networks/interceptors/fixtures/account/account_create_intercepter.dart';
import 'package:vtenhappmerchant/networks/interceptors/fixtures/user_token/user_token_interceptor_fixture.dart';
import 'package:vtenhappmerchant/services/apis/base_app_api.dart';

class AccountApi extends BaseAppApi {
  AccountModel objectTransformer(Map<String, dynamic> json) {
    return AccountModel.fromJson(json);
  }

  create(BaseModel record, {Map<String, dynamic> options}) async {
    var interceptor = AccountCreateIntercepter(this.network);

    this.network.addInterceptor(interceptor);
    var result = await super.create(record);
    return result;
  }

  login(BaseModel record) async {
    var interceptor = UserTokenInterceptorFixture(this.network);
    this.network.addInterceptor(interceptor);
  }

  String nameInUrl() {
    return 'account';
  }

  String nameInParams() {
    return 'user';
  }
}
