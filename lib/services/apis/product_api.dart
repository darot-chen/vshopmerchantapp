import 'package:vtenhappmerchant/models/product_list_model.dart';
import 'package:vtenhappmerchant/models/product_model.dart';
import 'package:vtenhappmerchant/services/apis/base_storefront_api.dart';

class ProductApi extends BaseStoreFrontApi {
  ProductModel objectTransformer(Map<String, dynamic> json) {
    var product = ProductModel.fromJson(json);
    return product;
  }

  ProductListModel itemsTransformer(Map<String, dynamic> json) {
    ProductListModel result = ProductListModel(
      items: buildItemsList(json),
      meta: buildMetaModel(json),
      links: buildLinkModel(json),
      included: buildIncluded(json),
    );
    return result;
  }

  fetchAll({Map<String, dynamic> queryParameters}) async {
    var options = {
      "include": "images,variants",
      "fields": {
        "product":
            "name,display_price,display_compare_at_price,purchasable,slug,in_stock,backorderable,default_variant,variants",
      },
    };
    if (queryParameters != null && queryParameters.isNotEmpty) {
      queryParameters.addAll(options);
    } else {
      queryParameters = options;
    }
    return super.fetchAll(queryParameters: queryParameters);
  }

  String nameInUrl() {
    return 'products';
  }

  String nameInParams() {
    return 'product';
  }
}
