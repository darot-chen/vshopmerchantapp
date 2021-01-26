import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/networks/app_token_network.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:vtenhappmerchant/services/apis/base_api.dart';

abstract class BaseAppApi extends BaseApi {
  @override
  BaseNetwork buildNetwork() {
    return AppTokenNetwork(baseUrl: ApiConstant.baseUrl);
  }
}
