import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:vtenhappmerchant/networks/user_token_network.dart';
import 'package:vtenhappmerchant/services/apis/base_api.dart';

abstract class BaseResourceOwnerApi extends BaseApi {
  @override
  BaseNetwork buildNetwork() {
    return UserTokenNetwork(baseUrl: ApiConstant.baseUrl);
  }
}
