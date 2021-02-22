class CountryListFixture {
  Map<String, dynamic> exec() {
    return {
      "meta": {
        "count": 10,
        "total_count": 2,
        "total_pages": 1,
      },
      "data": [
        {
          "id": "1",
          "type": "country",
          "attributes": {
            "name": "Cambodia",
          }
        },
        {
          "id": "2",
          "type": "country",
          "attributes": {
            "name": "Thailand",
          }
        },
      ]
    };
  }
}
