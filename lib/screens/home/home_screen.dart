import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';
import 'package:vtenhappmerchant/constants/theme_constant.dart';
import 'package:vtenhappmerchant/src/widgets/icons.dart';
import 'package:vtenhappmerchant/widgets/scale_down_on_tap.dart';

import 'shop_account_detail.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0,
        title: Text(
          'VTENH Merchant',
          style: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(ConfigConstant.margin2),
        physics: NeverScrollableScrollPhysics(),
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildShopCard(context),
          GridView.count(
            padding: EdgeInsets.symmetric(vertical: ConfigConstant.margin2),
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisSpacing: ConfigConstant.margin2,
            crossAxisCount: 2,
            children: [
              buildCard(
                context: context,
                image: 'assets/images/orderIcons/orderIcon.png',
                title: 'Order',
                subtitle:
                    'ក្រសួងវប្បធម៌ និង​វិចិត្រ​សិល្បៈ បាន​ណែនាំ​ឱ្យ​បិទ​ដំណើរការ​ជា​បណ្តោះអាសន្ននូវ​រោងភាពយន្ត រោង​សម្តែង​សិល្បៈ',
              ),
              buildCard(
                context: context,
                image: 'assets/images/MyProduct/myProduct.png',
                title: 'My Products',
                subtitle: 'Lorem ipsum dolor si',
              ),
            ],
          ),
        ],
      ),
    );
  }

  ScaleDownOnTab buildShopCard(BuildContext context) {
    return ScaleDownOnTab(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ShopAccountDetail(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(ConfigConstant.radius),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[200],
              offset: Offset(0, 1),
              blurRadius: 2,
            ),
          ],
        ),
        child: ListTile(
          dense: true,
          leading: Container(
            alignment: Alignment.center,
            width: ConfigConstant.objectSize,
            child: Image.asset('assets/images/shopLogo/cf3982372252542293f72304e1f43e3a@3x.png'),
          ),
          title: Text(
            'Xiaomi Official',
            style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: ThemeConstant.darkPrimary,
                ),
          ),
          subtitle: Text(
            'Join 12/Jul/2020',
            style: Theme.of(context).textTheme.caption,
          ),
          trailing: Icon(
            Iconly.outlineArrowRight2,
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }

  ScaleDownOnTab buildCard({
    BuildContext context,
    String image,
    String title,
    String subtitle,
  }) {
    return ScaleDownOnTab(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
          left: 15,
          top: 30,
          right: 15,
        ),
        height: 166,
        // width: 166,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(ConfigConstant.radius),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100],
              offset: Offset(0, 0.5),
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // color: Colors.green,
              padding: EdgeInsets.only(bottom: 15),
              alignment: Alignment.bottomLeft,
              // height: 136 / 2,
              child: Image.asset(
                image,
                height: 48,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                ),
                Text(
                  subtitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
