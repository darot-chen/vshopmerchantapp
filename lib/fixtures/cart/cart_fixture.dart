class CartFixture {
  bool isSuccess;
  CartFixture({this.isSuccess = true});

  ///Create a Cart:
  ///- success ``200``
  ///- error ``404``
  Map<String, dynamic> getACart() {
    var error = {
      "error": "Error response 404 from API",
    };
    var success = {
      "data": {
        "id": "1",
        "type": "cart",
        "attributes": {
          "number": "10",
          "email": "thea@gmail.com",
          "item_total": "21",
          "display_item_total": "22",
          "total": "23",
          "display_total": "20",
          "ship_total": "10",
          "display_ship_total": "8",
          "adjustment_total": "39",
          "display_adjustment_total": "20",
          "promo_total": "10",
          "display_promo_total": "display_promo_total",
          "created_at": "2019-10-18T00:00:00.000-05:00",
          "updated_at": "2020-10-18T00:00:00.000-05:00",
          "included_tax_total": "2019-10-18T00:00:00.000-05:00",
          "additional_tax_total": "knitted-high-neck-sweater",
          "display_additional_tax_total": "20",
          "display_included_tax_total": "10",
          "tax_total": "2020-02-09T10:36:29.130-06:00",
          "display_tax_total": "100",
          "pre_tax_item_amount": "100",
          "display_pre_tax_item_amount": "2000",
          "pre_tax_total": "18",
          "display_pre_tax_total": "20",
          "item_count": 2,
          "special_instruction":
              "flutterchina/dio A powerful Http client for Dart, which supports Interceptors, FormData, equest Cancellation, File ",
          "currency": "USD",
          "state": "Kandal",
          "payment_state": "Phnom Penh",
          "shipment_state": "USA",
          "token": "2020-02-09T10:36:29.130-06:00",
        },
        "relationships": {}
      },
      "included": [
        {
          "id": "7",
          "type": "line_item",
          "attributes": {
            "name": "Checked Shirt",
          },
          "relationships": {}
        },
        {
          "id": "8",
          "type": "line_item",
          "attributes": {
            "name": "Flared Midi Skirt",
          },
          "relationships": {}
        },
        {
          "id": "118",
          "type": "variant",
          "attributes": {
            "sku": "Shirts_checkedshirt_21.99_red_xs",
            "price": "21.99",
          },
          "relationships": {}
        },
        {
          "id": "152",
          "type": "variant",
          "attributes": {
            "sku": "Skirts_flaredmidiskirt_11.99_burgundy_mini_xs",
            "price": "11.99",
          },
          "relationships": {}
        }
      ],
    };

    return this.isSuccess ? success : error;
  }

  ///Create a Cart:
  ///- success ``201``
  Map<String, dynamic> createACart() {
    return {
      "data": {
        "id": "4",
        "type": "cart",
        "attributes": {
          "number": "R247540734",
          "item_total": "0.0",
          "total": "0.0",
          "ship_total": "0.0",
          "adjustment_total": "0.0",
          "created_at": "2020-02-16T07:14:54.617Z",
          "updated_at": "2020-02-16T07:14:54.617Z",
          "completed_at": null,
          "included_tax_total": "0.0",
          "additional_tax_total": "0.0",
          "display_additional_tax_total": "\$0.00",
          "display_included_tax_total": "\$0.00",
          "tax_total": "0.0",
          "currency": "USD",
          "state": "cart",
          "token": "zdmOIe5GUtZhZdh0zeFv9w1581837294588",
          "email": null,
          "display_item_total": "\$0.00",
          "display_ship_total": "\$0.00",
          "display_adjustment_total": "\$0.00",
          "display_tax_total": "\$0.00",
          "promo_total": "0.0",
          "display_promo_total": "\$0.00",
          "item_count": 2,
          "special_instructions": null,
          "display_total": "\$0.00"
        },
        "relationships": {}
      },
    };
  }

  ///Add an Item to Cart:
  ///- request body:
  ///```
  ///{
  ///   "variant_id": "1",
  ///   "quantity": 5
  ///}
  /// ```
  ///- success ``404``
  ///- error ``200``
  Map<String, dynamic> addAnItemToCart() {
    var error = {
      "error": "Error response 404 from API",
    };
    var success = {
      "data": {
        "id": "4",
        "type": "cart",
        "attributes": {
          "number": "10",
          "email": "thea@gmail.com",
          "item_total": "21",
          "display_item_total": "22",
          "total": "23",
          "display_total": "20",
          "ship_total": "10",
          "display_ship_total": "8",
          "adjustment_total": "39",
          "display_adjustment_total": "20",
          "promo_total": "10",
          "display_promo_total": "display_promo_total",
          "created_at": "2019-10-18T00:00:00.000-05:00",
          "updated_at": "2020-10-18T00:00:00.000-05:00",
          "included_tax_total": "2019-10-18T00:00:00.000-05:00",
          "additional_tax_total": "knitted-high-neck-sweater",
          "display_additional_tax_total": "20",
          "display_included_tax_total": "10",
          "tax_total": "2020-02-09T10:36:29.130-06:00",
          "display_tax_total": "100",
          "pre_tax_item_amount": "100",
          "display_pre_tax_item_amount": "2000",
          "pre_tax_total": "18",
          "display_pre_tax_total": "20",
          "item_count": 2,
          "special_instruction":
              "flutterchina/dio A powerful Http client for Dart, which supports Interceptors, FormData, equest Cancellation, File ",
          "currency": "USD",
          "state": "Kandal",
          "payment_state": "Phnom Penh",
          "shipment_state": "USA",
          "token": "2020-02-09T10:36:29.130-06:00",
        },
      },
      "included": [
        {
          "id": "7",
          "type": "line_item",
          "attributes": {
            "name": "Checked Shirt",
          },
          "relationships": {}
        },
        {
          "id": "8",
          "type": "line_item",
          "attributes": {
            "name": "Flared Midi Skirt",
          },
          "relationships": {}
        },
        {
          "id": "15",
          "type": "line_item",
          "attributes": {
            "name": "Shoes 2020",
          },
          "relationships": {}
        },
        {
          "id": "118",
          "type": "variant",
          "attributes": {
            "sku": "Shirts_checkedshirt_21.99_red_xs",
            "price": "21.99",
          },
          "relationships": {}
        },
        {
          "id": "152",
          "type": "variant",
          "attributes": {
            "sku": "Skirts_flaredmidiskirt_11.99_burgundy_mini_xs",
            "price": "11.99",
          },
          "relationships": {}
        }
      ],
    };

    return this.isSuccess ? success : error;
  }

  ///Apply Coupon Code:
  ///- request body:
  ///```
  ///{
  ///   "coupon_code": "120",
  ///}
  /// ```
  ///- success ``200``
  ///- error ``422``
  Map<String, dynamic> applyCouponCode() {
    var error = {
      "error": "Error response 422 from API",
    };
    var success = {
      "data": {
        "id": "4",
        "type": "cart",
        "attributes": {
          "number": "10",
          "email": "thea@gmail.com",
          "item_total": "21",
          "display_item_total": "22",
          "total": "23",
          "display_total": "20",
          "ship_total": "10",
          "display_ship_total": "8",
          "adjustment_total": "39",
          "display_adjustment_total": "20",
          "promo_total": "10",
          "display_promo_total": "display_promo_total",
          "created_at": "2019-10-18T00:00:00.000-05:00",
          "updated_at": "2020-10-18T00:00:00.000-05:00",
          "included_tax_total": "2019-10-18T00:00:00.000-05:00",
          "additional_tax_total": "knitted-high-neck-sweater",
          "display_additional_tax_total": "20",
          "display_included_tax_total": "10",
          "tax_total": "2020-02-09T10:36:29.130-06:00",
          "display_tax_total": "100",
          "pre_tax_item_amount": "100",
          "display_pre_tax_item_amount": "2000",
          "pre_tax_total": "18",
          "display_pre_tax_total": "20",
          "item_count": 2,
          "special_instruction":
              "flutterchina/dio A powerful Http client for Dart, which supports Interceptors, FormData, equest Cancellation, File ",
          "currency": "USD",
          "state": "Kandal",
          "payment_state": "Phnom Penh",
          "shipment_state": "USA",
          "token": "2020-02-09T10:36:29.130-06:00",
        },
      },
      "included": [
        {
          "id": "7",
          "type": "line_item",
          "attributes": {
            "name": "Checked Shirt",
          },
          "relationships": {}
        },
        {
          "id": "8",
          "type": "line_item",
          "attributes": {
            "name": "Flared Midi Skirt",
          },
          "relationships": {}
        },
        {
          "id": "118",
          "type": "variant",
          "attributes": {
            "sku": "Shirts_checkedshirt_21.99_red_xs",
            "price": "21.99",
          },
          "relationships": {}
        },
        {
          "id": "152",
          "type": "variant",
          "attributes": {
            "sku": "Skirts_flaredmidiskirt_11.99_burgundy_mini_xs",
            "price": "11.99",
          },
          "relationships": {}
        }
      ],
    };

    return this.isSuccess ? success : error;
  }

  ///Empty the Cart:
  ///- success ``200``
  ///- error ``404``
  Map<String, dynamic> emptyTheCart() {
    var error = {
      "error": "Error response 404 from API",
    };
    var success = {
      "data": {
        "id": "4",
        "type": "cart",
        "attributes": {
          "number": "0",
          "email": null,
          "item_total": "0",
          "display_item_total": "0",
          "total": "0",
          "display_total": "0",
          "ship_total": "0",
          "display_ship_total": "0",
          "adjustment_total": "0",
          "display_adjustment_total": "0",
          "promo_total": "0",
          "display_promo_total": "0",
          "created_at": null,
          "updated_at": null,
          "included_tax_total": "0",
          "additional_tax_total": "0",
          "display_additional_tax_total": "0",
          "display_included_tax_total": "0",
          "tax_total": "0",
          "display_tax_total": "0",
          "pre_tax_item_amount": "0",
          "display_pre_tax_item_amount": "0",
          "pre_tax_total": "0",
          "display_pre_tax_total": "0",
          "item_count": 0,
          "special_instruction": null,
          "currency": null,
          "state": null,
          "payment_state": null,
          "shipment_state": null,
          "token": null,
        },
      }
    };

    return this.isSuccess ? success : error;
  }

  ///Get Estimate Shipping Rates:
  ///- success ``200``
  ///- error ``404``
  Map<String, dynamic> getEstimatedShippingRates() {
    var error = {
      "error": "Error response 404 from API",
    };
    var success = {
      "data": {
        "id": "4",
        "type": "cart",
        "attributes": {
          "name": "Knitted high-neck sweater",
          "selected": true,
          "free": true,
          "final_price": "200",
          "display_final_price": "200",
          "cost": "800",
          "display_cost": "1000",
          "tax_amount": "10",
          "display_tax_amount": "10",
          "shipping_method_id": "102",
        },
      }
    };

    return this.isSuccess ? success : error;
  }

  ///Remove Coupon Code:
  ///- success ``200``
  ///- error ``422``
  Map<String, dynamic> removeCouponCode() {
    var error = {
      "error": "Error response 422 from API",
    };
    var success = {
      "data": {
        "id": "4",
        "type": "cart",
        "attributes": {
          "number": "10",
          "email": "thea@gmail.com",
          "item_total": "21",
          "display_item_total": "22",
          "total": "23",
          "display_total": "20",
          "ship_total": "10",
          "display_ship_total": "8",
          "adjustment_total": "39",
          "display_adjustment_total": "20",
          "promo_total": "10",
          "display_promo_total": "display_promo_total",
          "created_at": "2019-10-18T00:00:00.000-05:00",
          "updated_at": "2020-10-18T00:00:00.000-05:00",
          "included_tax_total": "2019-10-18T00:00:00.000-05:00",
          "additional_tax_total": "knitted-high-neck-sweater",
          "display_additional_tax_total": "20",
          "display_included_tax_total": "10",
          "tax_total": "2020-02-09T10:36:29.130-06:00",
          "display_tax_total": "100",
          "pre_tax_item_amount": "100",
          "display_pre_tax_item_amount": "2000",
          "pre_tax_total": "18",
          "display_pre_tax_total": "20",
          "item_count": 2,
          "special_instruction":
              "flutterchina/dio A powerful Http client for Dart, which supports Interceptors, FormData, equest Cancellation, File",
          "currency": "USD",
          "state": "Kandal",
          "payment_state": "Phnom Penh",
          "shipment_state": "USA",
          "token": "2020-02-09T10:36:29.130-06:00",
        },
      },
      "included": [
        {
          "id": "7",
          "type": "line_item",
          "attributes": {
            "name": "Checked Shirt",
          },
          "relationships": {}
        },
        {
          "id": "8",
          "type": "line_item",
          "attributes": {
            "name": "Flared Midi Skirt",
          },
          "relationships": {}
        },
        {
          "id": "15",
          "type": "line_item",
          "attributes": {
            "name": "Shoes 2020",
          },
          "relationships": {}
        },
        {
          "id": "118",
          "type": "variant",
          "attributes": {
            "sku": "Shirts_checkedshirt_21.99_red_xs",
            "price": "21.99",
          },
          "relationships": {}
        },
        {
          "id": "152",
          "type": "variant",
          "attributes": {
            "sku": "Skirts_flaredmidiskirt_11.99_burgundy_mini_xs",
            "price": "11.99",
          },
          "relationships": {}
        }
      ],
    };

    return this.isSuccess ? success : error;
  }

  ///Remove Line Item:
  ///- success ``200``
  ///- error ``404``
  Map<String, dynamic> removeLineItem() {
    var error = {
      "error": "Error response 404 from API",
    };
    var success = {
      "data": {
        "id": "4",
        "type": "cart",
        "attributes": {
          "number": "10",
          "email": "thea@gmail.com",
          "item_total": "21",
          "display_item_total": "22",
          "total": "23",
          "display_total": "20",
          "ship_total": "10",
          "display_ship_total": "8",
          "adjustment_total": "39",
          "display_adjustment_total": "20",
          "promo_total": "10",
          "display_promo_total": "display_promo_total",
          "created_at": "2019-10-18T00:00:00.000-05:00",
          "updated_at": "2020-10-18T00:00:00.000-05:00",
          "included_tax_total": "2019-10-18T00:00:00.000-05:00",
          "additional_tax_total": "knitted-high-neck-sweater",
          "display_additional_tax_total": "20",
          "display_included_tax_total": "10",
          "tax_total": "2020-02-09T10:36:29.130-06:00",
          "display_tax_total": "100",
          "pre_tax_item_amount": "100",
          "display_pre_tax_item_amount": "2000",
          "pre_tax_total": "18",
          "display_pre_tax_total": "20",
          "item_count": 1,
          "special_instruction":
              "flutterchina/dio A powerful Http client for Dart, which supports Interceptors, FormData, equest Cancellation, File",
          "currency": "USD",
          "state": "Kandal",
          "payment_state": "Phnom Penh",
          "shipment_state": "USA",
          "token": "2020-02-09T10:36:29.130-06:00",
        },
      },
      "included": [
        {
          "id": "7",
          "type": "line_item",
          "attributes": {
            "name": "Checked Shirt",
          },
          "relationships": {}
        },
        {
          "id": "118",
          "type": "variant",
          "attributes": {
            "sku": "Shirts_checkedshirt_21.99_red_xs",
            "price": "21.99",
          },
          "relationships": {}
        },
        {
          "id": "152",
          "type": "variant",
          "attributes": {
            "sku": "Skirts_flaredmidiskirt_11.99_burgundy_mini_xs",
            "price": "11.99",
          },
          "relationships": {}
        }
      ],
    };

    return this.isSuccess ? success : error;
  }

  ///Set Quantity of a Line Item:
  ///- request body:
  ///```
  ///{
  ///   "line_item_id": "1",
  ///   "quantity": "5",
  ///}
  /// ```
  ///- success ``200``
  ///- error ``422``
  Map<String, dynamic> setQuantityOfALineItem() {
    var error = {
      "error": "Error response 422 from API",
    };
    var success = {
      "data": {
        "id": "4",
        "type": "cart",
        "attributes": {
          "number": "10",
          "email": "thea@gmail.com",
          "item_total": "21",
          "display_item_total": "22",
          "total": "23",
          "display_total": "20",
          "ship_total": "10",
          "display_ship_total": "8",
          "adjustment_total": "39",
          "display_adjustment_total": "20",
          "promo_total": "10",
          "display_promo_total": "display_promo_total",
          "created_at": "2019-10-18T00:00:00.000-05:00",
          "updated_at": "2020-10-18T00:00:00.000-05:00",
          "included_tax_total": "2019-10-18T00:00:00.000-05:00",
          "additional_tax_total": "knitted-high-neck-sweater",
          "display_additional_tax_total": "20",
          "display_included_tax_total": "10",
          "tax_total": "2020-02-09T10:36:29.130-06:00",
          "display_tax_total": "100",
          "pre_tax_item_amount": "100",
          "display_pre_tax_item_amount": "2000",
          "pre_tax_total": "18",
          "display_pre_tax_total": "20",
          "item_count": 2,
          "special_instruction":
              "flutterchina/dio A powerful Http client for Dart, which supports Interceptors, FormData, equest Cancellation, File",
          "currency": "USD",
          "state": "Kandal",
          "payment_state": "Phnom Penh",
          "shipment_state": "USA",
          "token": "2020-02-09T10:36:29.130-06:00",
        },
      }
    };

    return this.isSuccess ? success : error;
  }
}
