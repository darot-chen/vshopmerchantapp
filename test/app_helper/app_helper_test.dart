import 'package:flutter_test/flutter_test.dart';
import 'package:vtenhappmerchant/helpers/app_helper.dart';

void main() {
  group("description", () {
    test("description", () {
      var options = {
        "include": "line_item,variants",
        "fields": {
          "product": "name,display_price,purchasable",
          "line_item": "slug,in_stock",
        },
      };

      var result = AppHelper.toQueryString(options);
      var expectResult =
          "include=line_item%2Cvariants&fields%5Bproduct%5D=name%2Cdisplay_price%2Cpurchasable&fields%5Bline_item%5D=slug%2Cin_stock";

      expect(result, expectResult);
    });
  });
}
