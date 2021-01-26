import 'package:flutter_test/flutter_test.dart';
import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/models/object_url_model.dart';

void main() {
  group("ObjectNameUrlModel#fetchOne", () {
    test("it returns /api/v2/storefront/account if id is null for account path", () {
      var objectNameUrl = ObjectNameUrlModel(nameInUrl: "account", path: ApiConstant.storefront);
      var result = objectNameUrl.fetchOneUrl();
      expect(result, "/api/v2/storefront/account");
    });
    test("it returns /api/v2/storefront/account/100 if id is 100 for account path", () {
      var objectNameUrl = ObjectNameUrlModel(nameInUrl: "account", path: ApiConstant.storefront);
      var result = objectNameUrl.fetchOneUrl("100");
      expect(result, "/api/v2/storefront/account/100");
    });
  });
}
