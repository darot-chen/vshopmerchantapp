import 'package:vtenhappmerchant/models/account_model.dart';
import 'package:vtenhappmerchant/models/base_model.dart';
// import 'package:vtenhappmerchant/networks/interceptors/fixtures/account/account_create_intercepter.dart';
// import 'package:vtenhappmerchant/networks/interceptors/fixtures/user_token/user_token_interceptor_fixture.dart';
import 'package:vtenhappmerchant/services/apis/base_resource_owner_api.dart';

class AccountApi extends BaseResourceOwnerApi {
  AccountModel objectTransformer(Map<String, dynamic> json) {
    return AccountModel.fromJson(json);
  }

  create(BaseModel record, {Map<String, dynamic> options}) async {
    // var interceptor = AccountCreateIntercepter(this.network);
    // this.network.addInterceptor(interceptor);
    var result = await super.create(record, options: options);
    return result;
  }

  String nameInUrl() {
    return 'account';
  }

  String nameInParams() {
    return 'user';
  }
}
