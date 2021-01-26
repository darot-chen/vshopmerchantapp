import 'package:vtenhappmerchant/helpers/app_helper.dart';

class Links {
  String self;
  String next;
  String prev;
  String last;
  String first;

  Links({this.self, this.next, this.prev, this.last, this.first});

  Links getPageNumber() {
    var newLinks = Links(
      first: AppHelper.queryParameters(url: this.first, param: 'page'),
      last: AppHelper.queryParameters(url: this.last, param: 'page'),
      next: AppHelper.queryParameters(url: this.next, param: 'page'),
      prev: AppHelper.queryParameters(url: this.prev, param: 'page'),
      self: AppHelper.queryParameters(url: this.self, param: 'page'),
    );
    return newLinks;
  }
}
