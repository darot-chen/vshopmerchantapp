import 'package:vtenhappmerchant/networks/interceptors/default_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class BaseNetwork {
  Dio http;
  DioError error;
  String baseUrl;

  BaseNetwork({@required this.baseUrl}) {
    this.http = Dio();
    this.http.interceptors.add(DefaultInterceptor(baseUrl: baseUrl));
  }

  addInterceptor(InterceptorsWrapper interceptor) {
    this.http.interceptors.add(interceptor);
  }

  removeInterceptor(InterceptorsWrapper interceptor) {
    this.http.interceptors.remove(interceptor);
  }

  // Find away Delegate get, post, delete to http
}
