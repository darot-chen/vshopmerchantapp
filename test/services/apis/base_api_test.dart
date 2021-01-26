import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vtenhappmerchant/exceptions/base_exception.dart';
import 'package:vtenhappmerchant/models/country_list_model.dart';
import 'package:vtenhappmerchant/models/country_model.dart';
import 'package:vtenhappmerchant/models/meta_model.dart';
import 'package:vtenhappmerchant/networks/interceptors/fixtures/base_api_interceptor_fixture.dart';
import 'package:vtenhappmerchant/networks/interceptors/fixtures/country_create_error_interceptor_fixture.dart';
import 'package:vtenhappmerchant/networks/interceptors/fixtures/country_create_interceptor_fixture.dart';
import 'package:vtenhappmerchant/networks/interceptors/fixtures/country_delete_interceptor_fixture.dart';
import 'package:vtenhappmerchant/networks/interceptors/fixtures/country_list_interceptor_fixture.dart';
import 'package:vtenhappmerchant/networks/interceptors/fixtures/country_update_interceptor_fixture.dart';
import 'package:vtenhappmerchant/services/apis/country_api.dart';

void main() {
  CountryApi fakeApi;
  var network;

  SharedPreferences.setMockInitialValues({});

  Future<CountryModel> loadCountry() {
    return Future.delayed(Duration(seconds: 1), () {
      return CountryModel(id: '1', name: 'test');
    });
  }

  Future<CountryModel> loadCountryError() {
    return Future.delayed(Duration(seconds: 1), () {
      throw BaseException('country load error');
    });
  }

  setUp(() {
    fakeApi = CountryApi();
    network = fakeApi.network;
  });

  tearDown(() {
    fakeApi = null;
    network = null;
  });

  group("BaseApi#runQueryExec", () {
    test('it returns value from the function if function executed successfully', () async {
      var result = await fakeApi.runQueryExec(() {
        var calculated = CountryModel(id: '1', name: 'test');
        return calculated;
      });

      expect(result.id, '1');
      expect(result.name, 'test');
      expect(result.runtimeType, CountryModel);
    });

    test('it returns null and set errors  if function raise exception', () async {
      var result = await fakeApi.runQueryExec(() {
        throw DioError();
      });

      expect(result, null);
      expect(fakeApi.error, isNot(null));
      expect(fakeApi.error.runtimeType, DioError);
    });

    test('it returns correctly for asyn', () async {
      var country = await fakeApi.runQueryExec(() async {
        var calculated = await loadCountry();
        return calculated;
      });

      expect(country.id, '1');
      expect(country.name, 'test');
    });

    test('it returns error for asyn error', () async {
      var country = await fakeApi.runQueryExec(() async {
        var calculated = await loadCountryError();
        return calculated;
      });
      expect(country, null);
      expect(fakeApi.error, isNot(null));
      expect(fakeApi.error.runtimeType, BaseException);
      expect(fakeApi.error.message, "country load error");
    });
  });

  group('BaseApi', () {
    test('.fetchOne', () async {
      var interceptor = BaseApiInterceptorFixture(network);
      network.addInterceptor(interceptor);
      var model = await fakeApi.fetchOne(id: '1');
      expect(model.id, "1");
      expect(model.name, 'Cambodia');
      network.removeInterceptor(interceptor);
    });

    test('.fetchOne assert collection must be false if id is missing', () async {
      var interceptor = BaseApiInterceptorFixture(network);
      network.addInterceptor(interceptor);

      expect(
        () async {
          await fakeApi.fetchOne(collection: true);
        },
        throwsA(isInstanceOf<AssertionError>()),
      );
    });

    test('.fetchAll', () async {
      var interceptor = CountryListInterceptorFixture(network);
      network.addInterceptor(interceptor);
      CountryListModel model = await fakeApi.fetchAll();
      MetaModel meta = model.meta;

      expect(model.items.length, 2);

      expect(model.items[0].id, "1");
      expect(model.items[0].name, 'Cambodia');
      expect(model.items[1].id, "2");
      expect(model.items[1].name, 'Thailand');

      expect(meta.count, 10);
      expect(meta.totalCount, 2);
      expect(meta.totalPages, 1);
      network.removeInterceptor(interceptor);
    });

    test('.update', () async {
      var interceptor = CountryUpdateInterceptorFixture(network);
      network.addInterceptor(interceptor);

      var data = CountryModel(name: "Thailand", id: "2");
      var model = await fakeApi.update(id: data.id);

      var expectedObj = data;
      expect(model.id, expectedObj.id);
      expect(model.name, expectedObj.name);
      expect(fakeApi.success(), true);
      network.removeInterceptor(interceptor);
    });

    test('.delete', () async {
      var interceptor = CountryDeleteInterceptorFixture(network);
      var id = CountryModel(id: "1");
      network.addInterceptor(interceptor);
      await fakeApi.delete(id: id.id);
      expect(fakeApi.success(), true);
      network.removeInterceptor(interceptor);
    });

    test('.create successfully', () async {
      var locationObj = CountryModel(name: "Cambodia");
      var interceptor = CountryCreateInterceptorFixture(network);

      network.addInterceptor(interceptor);

      var model = await fakeApi.create(locationObj);

      expect(model.name, 'Cambodia');
      network.removeInterceptor(interceptor);
    });

    test('.create failed', () async {
      var locationObj = CountryModel(name: "Cambodia");
      var interceptor = CountryCreateErrorInterceptorFixture(network);

      network.addInterceptor(interceptor);

      var result = await fakeApi.create(locationObj);

      expect(result, null);
      expect(fakeApi.success(), false);
      expect(fakeApi.errors(), {
        "error": "Fake error messsage",
        "errors": {"email": "Invalid"}
      });

      network.removeInterceptor(interceptor);
    });
  });
}
