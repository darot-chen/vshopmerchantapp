import 'package:vtenhappmerchant/models/taxons_model.dart';
import 'package:vtenhappmerchant/services/apis/base_storefront_api.dart';

class TaxonsApi extends BaseStoreFrontApi {
  TaxonsModel objectTransformer(Map<String, dynamic> json) {
    return TaxonsModel.fromJson(json);
  }

  @override
  String nameInUrl() {
    return 'taxons';
  }
}
