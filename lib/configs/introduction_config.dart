import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:vtenhappmerchant/configs/introduction_config_item.dart';

class IntroductionConfig {
  static final styleTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25.0,
    color: Colors.black54,
  );

  static final styleDesc = TextStyle(
    fontSize: 15.0,
    color: Colors.grey,
  );

  static final List<IntroductionConfigItem> items = [
    IntroductionConfigItem(
      title: tr('welcome_to_vtenh'),
      imagePath: 'assets/images/introduction/1_app.png',
      description: tr('making_your_shopping_experience_easy_and_convenient'),
      backgroundColor: '#FFF3F2',
    ),
    IntroductionConfigItem(
      title: tr('connect_sorrounding_store'),
      imagePath: 'assets/images/introduction/2_connect_shop.png',
      description: tr('see_all_things_shops_around_you_just_by_a_click_in_your_phone') +
          " " +
          tr('flash_sale_promotion_and_trending_products'),
      backgroundColor: '#F2FFFC',
    ),
    IntroductionConfigItem(
      title: tr("find_your_items_and_shop"),
      imagePath: 'assets/images/introduction/3_list_items.png',
      description: tr("find_your_favorite_items_from_our_market_places"),
      backgroundColor: '#F9F2FF',
    ),
    // IntroductionConfigItem(
    //   title: "shop_and_pay",
    //   imagePath: 'assets/images/introduction/4_shop.png',
    //   description: "get_your_belowed_items_to_your_shopping_bag_has_never_been_easier_before",
    //   backgroundColor: '#F9F2FF',
    // ),
    // IntroductionConfigItem(
    //   title: "get_your_item_delivered_to_you_almost_instantly",
    //   imagePath: 'assets/images/introduction/5_loading.png',
    //   description: "vtenh_provides_convenient_shipment__and_tracking_you_love_your_product__we_deliver_it_safely",
    //   backgroundColor: '#F9F2FF',
    // ),
    IntroductionConfigItem(
      title: tr("fast_shipment"),
      imagePath: 'assets/images/introduction/6_complete.png',
      description: tr("your_order_shipped_and_we_give_your_tracking_code_and_get_notified"),
      backgroundColor: '#F9F2FF',
    ),

    IntroductionConfigItem(
      title: tr("receive_your_items"),
      imagePath: 'assets/images/introduction/4_shop.png',
      description: tr("get_your_belowed_items_to_your_shopping_bag_has_never_been_easier_before"),
      backgroundColor: '#F9F2FF',
    ),
  ];

  static List<Slide> sliders() {
    List<Slide> result = items.map((e) => _buildSlide(e)).toList();
    return result;
  }

  static Slide _buildSlide(IntroductionConfigItem e) {
    return Slide(
      title: e.title,
      description: e.description,
      styleTitle: styleTitle,
      styleDescription: styleDesc,
      pathImage: e.imagePath,
      maxLineTextDescription: 3,
      maxLineTitle: 2,
      backgroundColor: Colors.white,
      foregroundImageFit: BoxFit.fitWidth,
      marginTitle: EdgeInsets.only(top: 125.0, bottom: 50.0),
      marginDescription: const EdgeInsets.fromLTRB(20.0, 75.0, 20.0, 0),
    );
  }
}
