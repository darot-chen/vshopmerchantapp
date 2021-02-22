import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:vtenhappmerchant/networks/response_status.dart';
import 'package:dio/dio.dart';

abstract class ReAuthenticateInterceptor extends InterceptorsWrapper {
  BaseNetwork network;

  ReAuthenticateInterceptor({@required this.network});

  @override
  Future onResponse(Response response) async {}

  Future<dynamic> onError(DioError err) async {
    int statusCode = err.response.statusCode;
    if (statusCode == 401) {
      await call();
    }
  }

  Future<ResponseStatus> call();
}
