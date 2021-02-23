import 'dart:io';
import 'package:dio/dio.dart';
import 'package:vtenhappmerchant/constants/api_constant.dart';

/// Before generate new `lang.csv` file, please make sure that:
/// - `VTenh Merchant App Translation - langs` is published in Google Spreadsheets
/// - there is no space or empty row and it is sorted

/// To generate `lang.csv`,
///
/// Run following command in terminal:
/// ```
/// dart run darts/langs.dart
/// ```
void main() async {
  Dio dio = Dio();
  Response<dynamic> response;
  String endpoint = ApiConstant.localizeEndPoint;
  response = await dio.get(endpoint);

  File file = File("assets/translations/langs.csv");
  file.openWrite();
  file.writeAsString(response.toString());
}
