import 'package:flutter_test/flutter_test.dart';
import 'package:vtenhappmerchant/models/base_list_model.dart';
import 'package:vtenhappmerchant/models/links_model.dart';
import 'package:vtenhappmerchant/models/meta_model.dart';

void main() async {
  var productListModel = BaseListModel(
    items: List.generate(10, (index) => index + 1),
    included: List.generate(10, (index) => index + 1),
    meta: MetaModel(count: 2, totalCount: 3),
    links: Links(
      first: "&page=1",
      self: "&page=1",
      last: "&page=2",
      next: "&page=2",
    ),
  );
  var newProductListModel = BaseListModel(
    items: List.generate(10, (index) => index + 11),
    included: List.generate(10, (index) => index + 11),
    meta: MetaModel(count: 5, totalCount: 6),
    links: Links(
      first: "&page=1",
      self: "&page=2",
      last: "&page=2",
      next: "&page=2",
      prev: "&page=2",
    ),
  );

  group("add", () {
    test("it add new items and includes to list and replace meta and link", () {
      productListModel.add(newProductListModel);
      var expectItems = List.generate(20, (index) => index + 1);
      expect(productListModel.items, expectItems);
      expect(productListModel.included, expectItems);
    });
  });
}
