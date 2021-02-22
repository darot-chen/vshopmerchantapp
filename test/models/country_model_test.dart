import 'package:flutter_test/flutter_test.dart';
import 'package:vtenhappmerchant/models/country_model.dart';

void main() {
  group("CountryModel.fromJson", () {
    test("it creates country model object from json params", () {
      var json = {
        "id": "1",
        "type": "country",
        "iso": "AD",
        "iso3": "AND",
        "iso_name": "ANDORRA",
        "name": "Andorra",
        "states_required": true,
        "zipcode_required": true,
        "default": false,
      };

      var country = CountryModel.fromJson(json);

      expect(country.id, '1');
      expect(country.iso, 'AD');
      expect(country.iso3, 'AND');
      expect(country.isoName, 'ANDORRA');
      expect(country.name, 'Andorra');
      expect(country.statesRequired, true);
      expect(country.zipcodeRequired, true);
      expect(country.isDefault, false);
    });
  });
}
