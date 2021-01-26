import 'package:flutter_test/flutter_test.dart';
import 'package:vtenhappmerchant/models/base_model.dart';
import 'package:vtenhappmerchant/models/country_model.dart';

void main() {
  BaseModel model = CountryModel.fromJson({
    "id": "1",
    "iso": "AD",
    "iso3": "AND",
    "iso_name": "ANDORRA",
    "name": "Andorra",
    "states_required": true,
    "zipcode_required": true,
    "default": false,
  });
  // Use CountryModel as annonymous model, this is required since BaseModel is an abstract class
  group("BaseModel.paramNames()", () {
    test("it returns list of all param names except id", () {
      var result = model.paramNames();
      var expected = [
        "relationships",
        "included",
        "iso",
        "iso3",
        "name",
        "iso_name",
        "states_required",
        "zipcode_required",
        "default",
      ];
      expect(result, expected);
    });
  });

  group("BaseModel.sliceParams", () {
    test("it returns list of all param names except id", () {
      var values = model.toJson();

      var result = model.sliceParams(values, ["name", "iso", "iso3", "non"]);
      var expected = {
        "name": "Andorra",
        "iso": "AD",
        "iso3": "AND",
        "non": null,
      };
      expect(result, expected);
    });
  });
}
