import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/models/object_url_model.dart';
import 'package:vtenhappmerchant/services/apis/base_app_api.dart';

abstract class BaseStoreFrontApi extends BaseAppApi {
  ObjectNameUrlModel get objectNameUrlModel {
    return ObjectNameUrlModel(nameInUrl: nameInUrl(), path: ApiConstant.storefront);
  }
}
