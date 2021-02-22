import 'package:vtenhappmerchant/models/country_list_model.dart';
import 'package:vtenhappmerchant/models/country_model.dart';

import 'package:vtenhappmerchant/services/apis/base_storefront_api.dart';

class CountryApi extends BaseStoreFrontApi {
  CountryModel objectTransformer(Map<String, dynamic> json) {
    return CountryModel.fromJson(json);
  }

  CountryListModel itemsTransformer(Map<String, dynamic> json) {
    CountryListModel result = CountryListModel(items: buildItemsList(json), meta: buildMetaModel(json));
    return result;
  }

  String nameInUrl() {
    return 'countries';
  }

  String nameInParams() {
    return 'country';
  }
}
