import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/constants/api_constant.dart';

class AppHelper {
  static fullImagePath({dynamic path}) {
    if (path == null) return;
    String fullPath = ApiConstant.baseUrl + path;
    return fullPath;
  }

  static String queryParameters({@required String url, @required String param}) {
    return Uri.parse(url).queryParameters[param];
  }

  static String toQueryString(Map<String, dynamic> options) {
    var outgoingUri = Transformer.urlEncodeMap(options);
    return outgoingUri;
  }
}
