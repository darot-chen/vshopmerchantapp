import 'dart:convert';

import 'package:vtenhappmerchant/constants/api_constant.dart';
import 'package:vtenhappmerchant/mixins/json_mappable.dart';
import 'package:vtenhappmerchant/models/base_model.dart';
import 'package:vtenhappmerchant/models/links_model.dart';
import 'package:vtenhappmerchant/models/meta_model.dart';
import 'package:vtenhappmerchant/models/object_url_model.dart';
import 'package:vtenhappmerchant/networks/base_network.dart';
import 'package:dio/dio.dart';

abstract class BaseApi with JsonMappable {
  BaseNetwork network;
  Response<dynamic> response;
  var error;

  BaseApi() {
    network = buildNetwork();
  }

  BaseNetwork buildNetwork();

  success() {
    if (this.response != null) {
      return this.response.statusCode >= 200 && this.response.statusCode < 300;
    }
    return false;
  }

  // {"error":"Email has already been taken","errors":{"email":["has already been taken"]}}
  Map<String, dynamic> errors() {
    if (error == null) {
      return null;
    }
    if (error.response == null) {
      return null;
    }

    if (error is DioError) {
      var json = (error as DioError).response.data;
      var result = jsonDecode(json);
      return result;
    } else {
      return {
        "error": "unknown $error",
      };
    }
  }

  ///@return Email has already been taken
  String errorMessage() {
    if (error == null) {
      return null;
    }
    if (error.response != null) {
      return errors()['error'];
    } else {
      // Something happened in setting up or sending the request that triggered an Error
      return error.message;
    }
  }

  beforeRunQueryExec(Function body) async {
    try {
      var result = await body();
      return result;
    } catch (err) {
      error = err;
      return null;
    }
  }

  runQueryExec(Function queryBody) {
    this.response = null;
    this.error = null;
    return beforeRunQueryExec(queryBody);
  }

  getIncluded() {
    var json = jsonDecode(response.toString());
    var result = json['included'] ?? [];
    return result;
  }

  _fetchOne({String id, Map<String, dynamic> options = const {}}) async {
    var endpoint = objectNameUrlModel.fetchOneUrl(id);

    response = await network.http.get(endpoint,
        queryParameters: options,
        options: Options(
          sendTimeout: 30 * 1000,
          receiveTimeout: 30 * 1000,
        ));
    var json = jsonDecode(response.toString());
    var included = json['included'];
    var item = mergeAttr(json['data'], included: included);

    var result = objectTransformer(item);

    return result;
  }

  ///options example:
  ///```
  ///var options = {
  ///  "included": "line_items,variants",
  ///  "fields": {
  ///    "line_item": "name",
  ///    "variant": "sku,price",
  ///    "cart": "number",
  ///  },
  ///  "order_token": token,
  ///};
  ///```
  ///get option type, value and variant
  ///```
  ///{{baseUrl}}/products/lamborghini-baby-walker?fields[product]=slug&fields[option_type]=name&include=variants,option_types,option_types.option_values
  ///```
  fetchOne({String id, bool collection = true, Map<String, dynamic> options}) async {
    if (id == null) assert(collection == false);
    var result = await runQueryExec(() async {
      return await _fetchOne(id: id, options: options);
    });
    return result;
  }

  _fetchAll({Map<String, dynamic> queryParameters}) async {
    var endpoint = objectNameUrlModel.fetchAllUrl();

    response = await network.http.get(endpoint, queryParameters: queryParameters);
    var json = jsonDecode(response.toString());

    // var result = items.map((item) {
    //   var attrs = mergeAttr(item);
    //   return objectTransformer(attrs);
    // }).toList();

    var result = itemsTransformer(json);

    return result;
  }

  fetchAll({Map<String, dynamic> queryParameters}) async {
    var result = await runQueryExec(() async {
      if (queryParameters != null && !queryParameters.containsKey('per_page')) {
        queryParameters['per_page'] = ApiConstant.recordPerPage;
      }
      return await _fetchAll(queryParameters: queryParameters);
    });
    return result;
  }

  _update({String id, Map<String, dynamic> params, Map<String, dynamic> options, bool collection = true}) async {
    var endpoint = objectNameUrlModel.updatelUrl(id: id, options: options, collection: collection);
    response = await network.http.patch(endpoint, data: params);
    var json = jsonDecode(response.toString());

    var included = json['included'];
    var attrs = mergeAttr(json['data'], included: included);
    var result = objectTransformer(attrs);

    return result;
  }

  update({String id, Map<String, dynamic> params, Map<String, dynamic> options, bool collection = true}) async {
    var result = runQueryExec(() async {
      return await _update(id: id, params: params, options: options, collection: collection);
    });
    return result;
  }

  _delete({
    String id,
    Map<String, dynamic> params,
    Map<String, dynamic> options,
    bool collection = true,
  }) async {
    var endpoint = objectNameUrlModel.deletelUrl(id: id, options: options, collection: collection);

    response = await network.http.delete(endpoint, data: params);
    var json = jsonDecode(response.toString());
    var included = json['included'];
    var item = mergeAttr(json['data'], included: included);

    var result = objectTransformer(item);
    return result;
  }

  delete({
    String id,
    Map<String, dynamic> params,
    Map<String, dynamic> options,
    bool collection = true,
  }) async {
    var result = await runQueryExec(() async {
      return await _delete(id: id, params: params, options: options, collection: collection);
    });
    return result;
  }

  // to request with hash parameters
  // which return response as an object
  // Ex: {{BASE_API}}/api/v2/internal/account_availability_checker?mobile_phone=0964142657
  _queryOne({Map<String, dynamic> queryParameters}) async {
    var endpoint = objectNameUrlModel.queryOneUrl();

    response = await network.http.get(endpoint, queryParameters: queryParameters);
    var json = jsonDecode(response.toString());
    var item = json['data'];
    var result = objectTransformer(item);

    return result;
  }

  // to request with hash parameters
  // which return response as an object
  // Ex: {{BASE_API}}/api/v2/internal/account_availability_checker?mobile_phone=0964142657
  queryOne({Map<String, dynamic> queryParameters}) {
    var result = runQueryExec(() async {
      return await _queryOne(queryParameters: queryParameters);
    });
    return result;
  }

  _create(BaseModel record, {Map<String, dynamic> options}) async {
    var endpoint = objectNameUrlModel.createUrl(options);
    var data = buildParams(record);

    response = await network.http.post(endpoint, data: data);
    // some api return empty body even resoruce created
    // var jsonString = response.toString().isEmpty ? "{}" : response.toString();
    // var result = transformJsonToObject(jsonString);

    var json = jsonDecode(response.toString());
    var included = json['included'];
    var item = mergeAttr(json['data'], included: included);

    var result = objectTransformer(item);

    return result;
  }

  buildParams(BaseModel record) {
    if (this.nameInParams().isEmpty) {
      var result = record.createParams();
      return result;
    }
    return {'${this.nameInParams()}': record.createParams()};
  }

  create(BaseModel record, {Map<String, dynamic> options}) async {
    var result = await runQueryExec(() async {
      return await _create(record, options: options);
    });
    return result;
  }

  BaseModel transformJsonToObject(String jsonString) {
    var json = jsonDecode(jsonString);
    var item = mergeAttr(json['data'], included: json['included']);
    return objectTransformer(item);
  }

  objectTransformer(Map<String, dynamic> json);
  itemsTransformer(Map<String, dynamic> json) {}

  MetaModel buildMetaModel(Map<String, dynamic> json) {
    var meta = MetaModel.fromJson(json['meta'] ?? {});
    return meta;
  }

  List<dynamic> buildItemsList(Map<String, dynamic> json) {
    var items = json['data'];

    var records = items.map((item) {
      var attrs = mergeAttr(item);
      var record = objectTransformer(attrs);
      return record;
    }).toList();
    return records;
  }

  Links buildLinkModel(Map<String, dynamic> json) {
    Map<String, dynamic> links = json['links'];
    if (links.isEmpty) {
      return null;
    }

    var result = Links(
      self: links['self'],
      next: links['next'],
      last: links['last'],
      prev: links['prev'],
      first: links['first'],
    );

    return result;
  }

  List<dynamic> buildIncluded(Map<String, dynamic> json) {
    return json['included'];
  }

  String nameInUrl();
  String nameInParams() {
    return '';
  }

  ObjectNameUrlModel get objectNameUrlModel {
    return ObjectNameUrlModel(nameInUrl: nameInUrl(), path: ApiConstant.path);
  }
}
