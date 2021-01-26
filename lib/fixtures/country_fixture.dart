class CountryFixture {
  Map<String, dynamic> fetchOne() {
    return {
      "data": {
        "id": "1",
        "type": "country",
        "attributes": {
          "name": "Cambodia",
        },
      }
    };
  }

  Map<String, dynamic> update() {
    return {
      "data": {
        "id": "2",
        "type": "country",
        "attributes": {
          "name": "Thailand",
        },
      }
    };
  }

  Map<String, dynamic> create() {
    return {
      "data": {
        "id": "1",
        "attributes": {
          "name": "Cambodia",
        },
        "relationships": {},
      }
    };
  }

  Map<String, dynamic> createError() {
    return {"error": "error message"};
  }

  Map<String, dynamic> delete() {
    return {};
  }
}
