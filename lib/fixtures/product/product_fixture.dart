import 'package:vtenhappmerchant/fixtures/cart/cart_fixture.dart';
import 'package:vtenhappmerchant/fixtures/product/products_list_data.dart';

class ProductFixture {
  CartFixture test = CartFixture();
  Map<String, dynamic> fetchOne() {
    return {
      "data": {
        "id": "1",
        "type": "product",
        "attributes": {
          "name": "Lamborghini Baby Walker",
          "description":
              "Removable, vibrating activity center with lights, sounds, horn and steering wheel!.\r\nFull-size snack tray under removable activity center.\r\nFully Padded, easy to clean and a comfortable seat!\r\nMultiple anti-skid pads for safety.\r\nIgnition key with engine startup sounds.\r\nGear stick with engine shifting sounds.\r\nHigh-end PVC wheels for easy manueuvering.\r\nHeight adjustable with 3 positions.\r\nCompact, easy to use fold for travel and storage.\r\n\r\nProduct Features:\r\n• Removable, vibrating activity center with lights, sounds, horn and steering wheel!.\r\n• Full-size snack tray under removable activity center.\r\n• Fully Padded, easy to clean and a comfortable seat!\r\n• Multiple anti-skid pads for safety.\r\n• Ignition key with engine startup sounds.\r\n• Gear stick with engine shifting sounds.\r\n• High-end PVC wheels for easy manueuvering.\r\n• Height adjustable with 3 positions.\r\n• Compact, easy to use fold for travel and storage.\r\n\r\nRecommended to age: 7 months +, up to 12 kg\r\n***Authentic Lamborghini",
          "price": "55.57",
          "currency": "USD",
          "display_price": "\$55.57",
          "compare_at_price": null,
          "display_compare_at_price": "\$0.00",
          "available_on": "2020-08-27T00:00:00.000Z",
          "slug": "lamborghini-baby-walker",
          "meta_description": "lamborghini baby walker",
          "meta_keywords": "lamborghini baby walker",
          "updated_at": "2020-11-15T04:30:19.573Z",
          "purchasable": true,
          "in_stock": true,
          "backorderable": true,
          "available": true
        },
        "relationships": {
          "variants": {
            "data": [
              {"id": "2", "type": "variant"},
              {"id": "3", "type": "variant"}
            ]
          },
          "option_types": {
            "data": [
              {"id": "1", "type": "option_type"},
              {"id": "2", "type": "option_type"}
            ]
          },
          "product_properties": {
            "data": [
              {"id": "2", "type": "product_property"},
              {"id": "3", "type": "product_property"},
              {"id": "4", "type": "product_property"}
            ]
          },
          "taxons": {"data": []},
          "images": {
            "data": [
              {"id": "90", "type": "image"},
              {"id": "2", "type": "image"},
              {"id": "86", "type": "image"},
              {"id": "1", "type": "image"},
              {"id": "87", "type": "image"},
              {"id": "88", "type": "image"},
              {"id": "89", "type": "image"},
              {"id": "91", "type": "image"},
              {"id": "92", "type": "image"}
            ]
          },
          "default_variant": {
            "data": {"id": "2", "type": "variant"}
          }
        }
      },
      "included": [
        {
          "id": "90",
          "type": "image",
          "attributes": {
            "viewable_type": "Spree::Variant",
            "viewable_id": 1,
            "styles": [
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSUxORGg0TkRnK0Jqc0hWRG9MWlhoMFpXNTBRQWc2RDJKaFkydG5jbTkxYm1SSklncHpibTkzTWdZN0IxUTZESEYxWVd4cGRIbHBWUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--c4dea472464868d2db3c599052cc3ba3c76993ad/ferrari-walker-all.jpg",
                "width": "48",
                "height": "48"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVEF3ZURFd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--5ddb53401ca7d6c1430127d2108554c065e328af/ferrari-walker-all.jpg",
                "width": "100",
                "height": "100"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalF3ZURJME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9bcf40d833422a4e9170459e905750b5b5ba1e84/ferrari-walker-all.jpg",
                "width": "240",
                "height": "240"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVFl3ZURJd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--98db175623939414466345c7232596a570cabbf0/ferrari-walker-all.jpg",
                "width": "160",
                "height": "200"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5ORFE0ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--fa57c1a6adc4cf6382319b7e1a9fbecda2b4d8db/ferrari-walker-all.jpg",
                "width": "448",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalUwZURNME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9a352e0c47d6ea2628d1705833d5a66adffc4b22/ferrari-walker-all.jpg",
                "width": "254",
                "height": "340"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NelV3ZURRMk9ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--21607f19d933f05b003ea4700e19b3a9d08c1560/ferrari-walker-all.jpg",
                "width": "350",
                "height": "468"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5Nakl5ZURJNU56NEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--4fec5893439c40f1479d66ec007bc3bf2257a990/ferrari-walker-all.jpg",
                "width": "222",
                "height": "297"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/ferrari-walker-all.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OakF3ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--d8c860fb15cb322d361ab397810873f4dd867705/ferrari-walker-all.jpg",
                "width": "600",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/ferrari-walker-all.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--ef2207195a575a1c362cf3d1d5d5d3f57bd5df16/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OalV3ZURnM01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--0db11632c76f5cedd230e6a982891fad2ce5f66f/ferrari-walker-all.jpg",
                "width": "650",
                "height": "870"
              }
            ]
          }
        },
        {
          "id": "2",
          "type": "image",
          "attributes": {
            "viewable_type": "Spree::Variant",
            "viewable_id": 2,
            "styles": [
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSUxORGg0TkRnK0Jqc0hWRG9MWlhoMFpXNTBRQWc2RDJKaFkydG5jbTkxYm1SSklncHpibTkzTWdZN0IxUTZESEYxWVd4cGRIbHBWUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--c4dea472464868d2db3c599052cc3ba3c76993ad/trotteur-bebe-lamborghini-urus.jpg",
                "width": "48",
                "height": "48"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVEF3ZURFd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--5ddb53401ca7d6c1430127d2108554c065e328af/trotteur-bebe-lamborghini-urus.jpg",
                "width": "100",
                "height": "100"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalF3ZURJME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9bcf40d833422a4e9170459e905750b5b5ba1e84/trotteur-bebe-lamborghini-urus.jpg",
                "width": "240",
                "height": "240"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVFl3ZURJd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--98db175623939414466345c7232596a570cabbf0/trotteur-bebe-lamborghini-urus.jpg",
                "width": "160",
                "height": "200"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5ORFE0ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--fa57c1a6adc4cf6382319b7e1a9fbecda2b4d8db/trotteur-bebe-lamborghini-urus.jpg",
                "width": "448",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalUwZURNME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9a352e0c47d6ea2628d1705833d5a66adffc4b22/trotteur-bebe-lamborghini-urus.jpg",
                "width": "254",
                "height": "340"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NelV3ZURRMk9ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--21607f19d933f05b003ea4700e19b3a9d08c1560/trotteur-bebe-lamborghini-urus.jpg",
                "width": "350",
                "height": "468"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5Nakl5ZURJNU56NEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--4fec5893439c40f1479d66ec007bc3bf2257a990/trotteur-bebe-lamborghini-urus.jpg",
                "width": "222",
                "height": "297"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/trotteur-bebe-lamborghini-urus.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OakF3ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--d8c860fb15cb322d361ab397810873f4dd867705/trotteur-bebe-lamborghini-urus.jpg",
                "width": "600",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/trotteur-bebe-lamborghini-urus.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLUT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--9be13de97445dd39814f47c41f603ac14256b487/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OalV3ZURnM01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--0db11632c76f5cedd230e6a982891fad2ce5f66f/trotteur-bebe-lamborghini-urus.jpg",
                "width": "650",
                "height": "870"
              }
            ]
          }
        },
        {
          "id": "86",
          "type": "image",
          "attributes": {
            "viewable_type": "Spree::Variant",
            "viewable_id": 3,
            "styles": [
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSUxORGg0TkRnK0Jqc0hWRG9MWlhoMFpXNTBRQWc2RDJKaFkydG5jbTkxYm1SSklncHpibTkzTWdZN0IxUTZESEYxWVd4cGRIbHBWUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--c4dea472464868d2db3c599052cc3ba3c76993ad/d91978722b263a5948ed537c62696108.jpeg",
                "width": "48",
                "height": "48"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVEF3ZURFd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--5ddb53401ca7d6c1430127d2108554c065e328af/d91978722b263a5948ed537c62696108.jpeg",
                "width": "100",
                "height": "100"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalF3ZURJME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9bcf40d833422a4e9170459e905750b5b5ba1e84/d91978722b263a5948ed537c62696108.jpeg",
                "width": "240",
                "height": "240"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVFl3ZURJd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--98db175623939414466345c7232596a570cabbf0/d91978722b263a5948ed537c62696108.jpeg",
                "width": "160",
                "height": "200"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5ORFE0ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--fa57c1a6adc4cf6382319b7e1a9fbecda2b4d8db/d91978722b263a5948ed537c62696108.jpeg",
                "width": "448",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalUwZURNME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9a352e0c47d6ea2628d1705833d5a66adffc4b22/d91978722b263a5948ed537c62696108.jpeg",
                "width": "254",
                "height": "340"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NelV3ZURRMk9ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--21607f19d933f05b003ea4700e19b3a9d08c1560/d91978722b263a5948ed537c62696108.jpeg",
                "width": "350",
                "height": "468"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5Nakl5ZURJNU56NEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--4fec5893439c40f1479d66ec007bc3bf2257a990/d91978722b263a5948ed537c62696108.jpeg",
                "width": "222",
                "height": "297"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/d91978722b263a5948ed537c62696108.jpeg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OakF3ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--d8c860fb15cb322d361ab397810873f4dd867705/d91978722b263a5948ed537c62696108.jpeg",
                "width": "600",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/d91978722b263a5948ed537c62696108.jpeg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBKdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--dcb9f362e2c68602884eb763345668ea0ce5f534/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OalV3ZURnM01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--0db11632c76f5cedd230e6a982891fad2ce5f66f/d91978722b263a5948ed537c62696108.jpeg",
                "width": "650",
                "height": "870"
              }
            ]
          }
        },
        {
          "id": "1",
          "type": "image",
          "attributes": {
            "viewable_type": "Spree::Variant",
            "viewable_id": 2,
            "styles": [
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSUxORGg0TkRnK0Jqc0hWRG9MWlhoMFpXNTBRQWc2RDJKaFkydG5jbTkxYm1SSklncHpibTkzTWdZN0IxUTZESEYxWVd4cGRIbHBWUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--c4dea472464868d2db3c599052cc3ba3c76993ad/lamborghini-baby-walker.jpg",
                "width": "48",
                "height": "48"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVEF3ZURFd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--5ddb53401ca7d6c1430127d2108554c065e328af/lamborghini-baby-walker.jpg",
                "width": "100",
                "height": "100"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalF3ZURJME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9bcf40d833422a4e9170459e905750b5b5ba1e84/lamborghini-baby-walker.jpg",
                "width": "240",
                "height": "240"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVFl3ZURJd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--98db175623939414466345c7232596a570cabbf0/lamborghini-baby-walker.jpg",
                "width": "160",
                "height": "200"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5ORFE0ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--fa57c1a6adc4cf6382319b7e1a9fbecda2b4d8db/lamborghini-baby-walker.jpg",
                "width": "448",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalUwZURNME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9a352e0c47d6ea2628d1705833d5a66adffc4b22/lamborghini-baby-walker.jpg",
                "width": "254",
                "height": "340"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NelV3ZURRMk9ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--21607f19d933f05b003ea4700e19b3a9d08c1560/lamborghini-baby-walker.jpg",
                "width": "350",
                "height": "468"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5Nakl5ZURJNU56NEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--4fec5893439c40f1479d66ec007bc3bf2257a990/lamborghini-baby-walker.jpg",
                "width": "222",
                "height": "297"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/lamborghini-baby-walker.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OakF3ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--d8c860fb15cb322d361ab397810873f4dd867705/lamborghini-baby-walker.jpg",
                "width": "600",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/lamborghini-baby-walker.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--a534af441dbd824748f9d393ac92880d73964a58/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OalV3ZURnM01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--0db11632c76f5cedd230e6a982891fad2ce5f66f/lamborghini-baby-walker.jpg",
                "width": "650",
                "height": "870"
              }
            ]
          }
        },
        {
          "id": "87",
          "type": "image",
          "attributes": {
            "viewable_type": "Spree::Variant",
            "viewable_id": 3,
            "styles": [
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSUxORGg0TkRnK0Jqc0hWRG9MWlhoMFpXNTBRQWc2RDJKaFkydG5jbTkxYm1SSklncHpibTkzTWdZN0IxUTZESEYxWVd4cGRIbHBWUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--c4dea472464868d2db3c599052cc3ba3c76993ad/4baby-racing-car-walker-red.jpg",
                "width": "48",
                "height": "48"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVEF3ZURFd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--5ddb53401ca7d6c1430127d2108554c065e328af/4baby-racing-car-walker-red.jpg",
                "width": "100",
                "height": "100"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalF3ZURJME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9bcf40d833422a4e9170459e905750b5b5ba1e84/4baby-racing-car-walker-red.jpg",
                "width": "240",
                "height": "240"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVFl3ZURJd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--98db175623939414466345c7232596a570cabbf0/4baby-racing-car-walker-red.jpg",
                "width": "160",
                "height": "200"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5ORFE0ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--fa57c1a6adc4cf6382319b7e1a9fbecda2b4d8db/4baby-racing-car-walker-red.jpg",
                "width": "448",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalUwZURNME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9a352e0c47d6ea2628d1705833d5a66adffc4b22/4baby-racing-car-walker-red.jpg",
                "width": "254",
                "height": "340"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NelV3ZURRMk9ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--21607f19d933f05b003ea4700e19b3a9d08c1560/4baby-racing-car-walker-red.jpg",
                "width": "350",
                "height": "468"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5Nakl5ZURJNU56NEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--4fec5893439c40f1479d66ec007bc3bf2257a990/4baby-racing-car-walker-red.jpg",
                "width": "222",
                "height": "297"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/4baby-racing-car-walker-red.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OakF3ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--d8c860fb15cb322d361ab397810873f4dd867705/4baby-racing-car-walker-red.jpg",
                "width": "600",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/4baby-racing-car-walker-red.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--b8fffe7a96ae0cb78d3fb23cbaa5bc1b879c0c2c/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OalV3ZURnM01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--0db11632c76f5cedd230e6a982891fad2ce5f66f/4baby-racing-car-walker-red.jpg",
                "width": "650",
                "height": "870"
              }
            ]
          }
        },
        {
          "id": "88",
          "type": "image",
          "attributes": {
            "viewable_type": "Spree::Variant",
            "viewable_id": 3,
            "styles": [
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSUxORGg0TkRnK0Jqc0hWRG9MWlhoMFpXNTBRQWc2RDJKaFkydG5jbTkxYm1SSklncHpibTkzTWdZN0IxUTZESEYxWVd4cGRIbHBWUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--c4dea472464868d2db3c599052cc3ba3c76993ad/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "48",
                "height": "48"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVEF3ZURFd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--5ddb53401ca7d6c1430127d2108554c065e328af/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "100",
                "height": "100"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalF3ZURJME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9bcf40d833422a4e9170459e905750b5b5ba1e84/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "240",
                "height": "240"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVFl3ZURJd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--98db175623939414466345c7232596a570cabbf0/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "160",
                "height": "200"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5ORFE0ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--fa57c1a6adc4cf6382319b7e1a9fbecda2b4d8db/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "448",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalUwZURNME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9a352e0c47d6ea2628d1705833d5a66adffc4b22/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "254",
                "height": "340"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NelV3ZURRMk9ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--21607f19d933f05b003ea4700e19b3a9d08c1560/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "350",
                "height": "468"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5Nakl5ZURJNU56NEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--4fec5893439c40f1479d66ec007bc3bf2257a990/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "222",
                "height": "297"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OakF3ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--d8c860fb15cb322d361ab397810873f4dd867705/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "600",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBLdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--6517601079193142653225d04d45b3aae580d131/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OalV3ZURnM01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--0db11632c76f5cedd230e6a982891fad2ce5f66f/d45dd9d26ccf8af48fe013deea9233e5.jpg",
                "width": "650",
                "height": "870"
              }
            ]
          }
        },
        {
          "id": "89",
          "type": "image",
          "attributes": {
            "viewable_type": "Spree::Variant",
            "viewable_id": 3,
            "styles": [
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSUxORGg0TkRnK0Jqc0hWRG9MWlhoMFpXNTBRQWc2RDJKaFkydG5jbTkxYm1SSklncHpibTkzTWdZN0IxUTZESEYxWVd4cGRIbHBWUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--c4dea472464868d2db3c599052cc3ba3c76993ad/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "48",
                "height": "48"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVEF3ZURFd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--5ddb53401ca7d6c1430127d2108554c065e328af/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "100",
                "height": "100"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalF3ZURJME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9bcf40d833422a4e9170459e905750b5b5ba1e84/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "240",
                "height": "240"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVFl3ZURJd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--98db175623939414466345c7232596a570cabbf0/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "160",
                "height": "200"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5ORFE0ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--fa57c1a6adc4cf6382319b7e1a9fbecda2b4d8db/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "448",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalUwZURNME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9a352e0c47d6ea2628d1705833d5a66adffc4b22/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "254",
                "height": "340"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NelV3ZURRMk9ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--21607f19d933f05b003ea4700e19b3a9d08c1560/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "350",
                "height": "468"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5Nakl5ZURJNU56NEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--4fec5893439c40f1479d66ec007bc3bf2257a990/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "222",
                "height": "297"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OakF3ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--d8c860fb15cb322d361ab397810873f4dd867705/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "600",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMQT09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--e1119fe8a17e867116531cd3d303b872fde6a4af/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OalV3ZURnM01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--0db11632c76f5cedd230e6a982891fad2ce5f66f/ferrari_walker_1550324216_7881c5fe_progressive.jpg",
                "width": "650",
                "height": "870"
              }
            ]
          }
        },
        {
          "id": "91",
          "type": "image",
          "attributes": {
            "viewable_type": "Spree::Variant",
            "viewable_id": 3,
            "styles": [
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSUxORGg0TkRnK0Jqc0hWRG9MWlhoMFpXNTBRQWc2RDJKaFkydG5jbTkxYm1SSklncHpibTkzTWdZN0IxUTZESEYxWVd4cGRIbHBWUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--c4dea472464868d2db3c599052cc3ba3c76993ad/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "48",
                "height": "48"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVEF3ZURFd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--5ddb53401ca7d6c1430127d2108554c065e328af/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "100",
                "height": "100"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalF3ZURJME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9bcf40d833422a4e9170459e905750b5b5ba1e84/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "240",
                "height": "240"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVFl3ZURJd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--98db175623939414466345c7232596a570cabbf0/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "160",
                "height": "200"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5ORFE0ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--fa57c1a6adc4cf6382319b7e1a9fbecda2b4d8db/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "448",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalUwZURNME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9a352e0c47d6ea2628d1705833d5a66adffc4b22/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "254",
                "height": "340"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NelV3ZURRMk9ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--21607f19d933f05b003ea4700e19b3a9d08c1560/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "350",
                "height": "468"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5Nakl5ZURJNU56NEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--4fec5893439c40f1479d66ec007bc3bf2257a990/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "222",
                "height": "297"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OakF3ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--d8c860fb15cb322d361ab397810873f4dd867705/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "600",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMZz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--93173f5dca56e0df62db9e1bc6dc3cc6e4e4e89d/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OalV3ZURnM01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--0db11632c76f5cedd230e6a982891fad2ce5f66f/HTB1jZ9Zn0rJ8KJjSspaq6xuKpXaw.jpg",
                "width": "650",
                "height": "870"
              }
            ]
          }
        },
        {
          "id": "92",
          "type": "image",
          "attributes": {
            "viewable_type": "Spree::Variant",
            "viewable_id": 3,
            "styles": [
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSUxORGg0TkRnK0Jqc0hWRG9MWlhoMFpXNTBRQWc2RDJKaFkydG5jbTkxYm1SSklncHpibTkzTWdZN0IxUTZESEYxWVd4cGRIbHBWUT09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--c4dea472464868d2db3c599052cc3ba3c76993ad/s-l1600.jpg",
                "width": "48",
                "height": "48"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVEF3ZURFd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--5ddb53401ca7d6c1430127d2108554c065e328af/s-l1600.jpg",
                "width": "100",
                "height": "100"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalF3ZURJME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9bcf40d833422a4e9170459e905750b5b5ba1e84/s-l1600.jpg",
                "width": "240",
                "height": "240"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NVFl3ZURJd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--98db175623939414466345c7232596a570cabbf0/s-l1600.jpg",
                "width": "160",
                "height": "200"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5ORFE0ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--fa57c1a6adc4cf6382319b7e1a9fbecda2b4d8db/s-l1600.jpg",
                "width": "448",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NalUwZURNME1ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--9a352e0c47d6ea2628d1705833d5a66adffc4b22/s-l1600.jpg",
                "width": "254",
                "height": "340"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NelV3ZURRMk9ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--21607f19d933f05b003ea4700e19b3a9d08c1560/s-l1600.jpg",
                "width": "350",
                "height": "468"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5Nakl5ZURJNU56NEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--4fec5893439c40f1479d66ec007bc3bf2257a990/s-l1600.jpg",
                "width": "222",
                "height": "297"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/s-l1600.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OakF3ZURZd01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--d8c860fb15cb322d361ab397810873f4dd867705/s-l1600.jpg",
                "width": "600",
                "height": "600"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5NamM0ZURNM01UNEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--2a87578fe0a04267f1ab1b32d40180f741dda0a0/s-l1600.jpg",
                "width": "278",
                "height": "371"
              },
              {
                "url":
                    "/rails/active_storage/representations/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBMdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--87f17f6b3055cf7c1f8c517fb1fcdcbac1eee2f3/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCam9VWTI5dFltbHVaVjl2Y0hScGIyNXpld282REdkeVlYWnBkSGxKSWd0alpXNTBaWElHT2daRlZEb0xjbVZ6YVhwbFNTSU5OalV3ZURnM01ENEdPd2RVT2d0bGVIUmxiblJBQ0RvUFltRmphMmR5YjNWdVpFa2lDbk51YjNjeUJqc0hWRG9NY1hWaGJHbDBlV2xWIiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--0db11632c76f5cedd230e6a982891fad2ce5f66f/s-l1600.jpg",
                "width": "650",
                "height": "870"
              }
            ]
          }
        },
        {
          "id": "1",
          "type": "option_type",
          "attributes": {"name": "size", "presentation": "Size", "position": 1},
          "relationships": {
            "option_values": {
              "data": [
                {"id": "1", "type": "option_value"},
                {"id": "2", "type": "option_value"},
                {"id": "3", "type": "option_value"},
                {"id": "4", "type": "option_value"},
                {"id": "5", "type": "option_value"}
              ]
            }
          }
        },
        {
          "id": "2",
          "type": "option_type",
          "attributes": {"name": "color", "presentation": "Color", "position": 2},
          "relationships": {
            "option_values": {
              "data": [
                {"id": "6", "type": "option_value"},
                {"id": "7", "type": "option_value"},
                {"id": "8", "type": "option_value"},
                {"id": "10", "type": "option_value"},
                {"id": "11", "type": "option_value"},
                {"id": "12", "type": "option_value"},
                {"id": "13", "type": "option_value"},
                {"id": "14", "type": "option_value"},
                {"id": "21", "type": "option_value"},
                {"id": "25", "type": "option_value"},
                {"id": "26", "type": "option_value"}
              ]
            }
          }
        },
        {
          "id": "1",
          "type": "option_value",
          "attributes": {"name": "small", "presentation": "S", "position": 5},
          "relationships": {
            "option_type": {
              "data": {"id": "1", "type": "option_type"}
            }
          }
        },
        {
          "id": "2",
          "type": "option_value",
          "attributes": {"name": "extra large", "presentation": "XL", "position": 6},
          "relationships": {
            "option_type": {
              "data": {"id": "1", "type": "option_type"}
            }
          }
        },
        {
          "id": "3",
          "type": "option_value",
          "attributes": {"name": "large", "presentation": "L", "position": 7},
          "relationships": {
            "option_type": {
              "data": {"id": "1", "type": "option_type"}
            }
          }
        },
        {
          "id": "4",
          "type": "option_value",
          "attributes": {"name": "medium", "presentation": "M", "position": 8},
          "relationships": {
            "option_type": {
              "data": {"id": "1", "type": "option_type"}
            }
          }
        },
        {
          "id": "5",
          "type": "option_value",
          "attributes": {"name": "extra small", "presentation": "XS", "position": 9},
          "relationships": {
            "option_type": {
              "data": {"id": "1", "type": "option_type"}
            }
          }
        },
        {
          "id": "6",
          "type": "option_value",
          "attributes": {"name": "orange", "presentation": "Orange", "position": 1},
          "relationships": {
            "option_type": {
              "data": {"id": "2", "type": "option_type"}
            }
          }
        },
        {
          "id": "7",
          "type": "option_value",
          "attributes": {"name": "blue", "presentation": "Blue", "position": 2},
          "relationships": {
            "option_type": {
              "data": {"id": "2", "type": "option_type"}
            }
          }
        },
        {
          "id": "8",
          "type": "option_value",
          "attributes": {"name": "yellow", "presentation": "Yellow", "position": 3},
          "relationships": {
            "option_type": {
              "data": {"id": "2", "type": "option_type"}
            }
          }
        },
        {
          "id": "10",
          "type": "option_value",
          "attributes": {"name": "black", "presentation": "Black", "position": 4},
          "relationships": {
            "option_type": {
              "data": {"id": "2", "type": "option_type"}
            }
          }
        },
        {
          "id": "11",
          "type": "option_value",
          "attributes": {"name": "gold", "presentation": "Gold", "position": 5},
          "relationships": {
            "option_type": {
              "data": {"id": "2", "type": "option_type"}
            }
          }
        },
        {
          "id": "12",
          "type": "option_value",
          "attributes": {"name": "red", "presentation": "Red", "position": 6},
          "relationships": {
            "option_type": {
              "data": {"id": "2", "type": "option_type"}
            }
          }
        },
        {
          "id": "13",
          "type": "option_value",
          "attributes": {"name": "white", "presentation": "White", "position": 7},
          "relationships": {
            "option_type": {
              "data": {"id": "2", "type": "option_type"}
            }
          }
        },
        {
          "id": "14",
          "type": "option_value",
          "attributes": {"name": "purple", "presentation": "Purple", "position": 8},
          "relationships": {
            "option_type": {
              "data": {"id": "2", "type": "option_type"}
            }
          }
        },
        {
          "id": "21",
          "type": "option_value",
          "attributes": {"name": "teal", "presentation": "Teal", "position": 9},
          "relationships": {
            "option_type": {
              "data": {"id": "2", "type": "option_type"}
            }
          }
        },
        {
          "id": "25",
          "type": "option_value",
          "attributes": {"name": "Brown", "presentation": "Brown", "position": 10},
          "relationships": {
            "option_type": {
              "data": {"id": "2", "type": "option_type"}
            }
          }
        },
        {
          "id": "26",
          "type": "option_value",
          "attributes": {"name": "gray", "presentation": "Gray", "position": 11},
          "relationships": {
            "option_type": {
              "data": {"id": "2", "type": "option_type"}
            }
          }
        },
        {
          "id": "2",
          "type": "product_property",
          "attributes": {"value": "Made in China", "name": "manufacturer", "description": "Manufacturer"}
        },
        {
          "id": "3",
          "type": "product_property",
          "attributes": {"value": "Lamborghini", "name": "model", "description": "Model"}
        },
        {
          "id": "4",
          "type": "product_property",
          "attributes": {"value": "2020", "name": "serie", "description": "Serie"}
        },
        {
          "id": "2",
          "type": "variant",
          "attributes": {
            "sku": "592908096_SGAMZ-17085824052",
            "price": "55.0",
            "currency": "USD",
            "display_price": "\$55.00",
            "weight": "3.2",
            "height": "50.0",
            "width": "30.0",
            "depth": "70.0",
            "is_master": false,
            "options_text": "Size: S, Color: yellow",
            "purchasable": true,
            "in_stock": true,
            "backorderable": true
          },
          "relationships": {
            "product": {
              "data": {"id": "1", "type": "product"}
            },
            "images": {
              "data": [
                {"id": "2", "type": "image"},
                {"id": "1", "type": "image"}
              ]
            },
            "option_values": {
              "data": [
                {"id": "1", "type": "option_value"},
                {"id": "8", "type": "option_value"}
              ]
            }
          }
        },
        {
          "id": "3",
          "type": "variant",
          "attributes": {
            "sku": "592908096_SGAMZ-17085824051",
            "price": "75.0",
            "currency": "USD",
            "display_price": "\$75.00",
            "weight": "5.0",
            "height": "60.0",
            "width": "40.0",
            "depth": "70.0",
            "is_master": false,
            "options_text": "Size: L, Color: red",
            "purchasable": true,
            "in_stock": false,
            "backorderable": true
          },
          "relationships": {
            "product": {
              "data": {"id": "1", "type": "product"}
            },
            "images": {
              "data": [
                {"id": "86", "type": "image"},
                {"id": "87", "type": "image"},
                {"id": "88", "type": "image"},
                {"id": "89", "type": "image"},
                {"id": "91", "type": "image"},
                {"id": "92", "type": "image"}
              ]
            },
            "option_values": {
              "data": [
                {"id": "3", "type": "option_value"},
                {"id": "12", "type": "option_value"}
              ]
            }
          }
        }
      ]
    };
  }

  Map<String, dynamic> fetchAllNoData() {
    return {
      "meta": {
        "count": 10,
        "total_count": 2,
        "total_pages": 1,
      },
      "data": []
    };
  }

  Map<String, dynamic> fetchAll() {
    return allProductList;
  }

  Map<String, dynamic> fetchOneError() {
    return {
      "error": "Invalid login",
    };
  }

  Map<String, dynamic> getTaxon() {
    return {
      "data": {
        "id": "25",
        "attributes": {},
        "relationship": {
          "image": {
            "data": {
              "id": "12",
            }
          }
        },
      }
    };
  }

  Map<String, dynamic> getImage() {
    return {
      "data": {
        "id": "12",
        "attributes": {
          "position": 0,
          "styles": [
            {
              "url":
                  "https://cdn.shopify.com/s/files/1/2143/3217/products/500_eeb5811c-090c-422d-b1a6-ae92d1b23fae_grande.png?v=1605299068",
              "width": 500,
              "height": 500,
            },
          ]
        },
      }
    };
  }
}
