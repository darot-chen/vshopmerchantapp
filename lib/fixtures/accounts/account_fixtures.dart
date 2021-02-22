import 'dart:convert';

class AccountFixtures {
  String create() {
    var json = {
      "data": {
        "id": "1",
        "type": "account",
        "attributes": {
          "email": "theacheng.g6@gmail.com",
          "store_credits": 100,
          "completed_orders": 1,
        },
        "relationships": {},
      }
    };

    return jsonEncode(json);
  }

  String createError() {
    var json = {"error": "Email incorrect!"};
    return jsonEncode(json);
  }

  Map<String, dynamic> delete() {
    return {};
  }
}
