import 'package:vtenhappmerchant/models/links_model.dart';
import 'package:vtenhappmerchant/models/meta_model.dart';

class BaseListModel {
  List<dynamic> items;
  MetaModel meta;
  Links links;
  List<dynamic> included;

  BaseListModel({this.items, this.meta, this.links, this.included});

  add(BaseListModel newList) {
    this.items.addAll(newList.items);
    this.links = newList.links;
    this.meta = newList.meta;
    this.included.addAll(newList.included);
    return this;
  }

  hasLoadMore() {
    if (this.items == null && this.meta == null) return false;
    if (this.items.length < this.meta.totalCount) {
      return true;
    } else
      return false;
  }
}
