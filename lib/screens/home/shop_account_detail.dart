import 'package:flutter/material.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';
import 'package:vtenhappmerchant/constants/theme_constant.dart';
import 'package:vtenhappmerchant/src/widgets/icons.dart';
import 'package:vtenhappmerchant/widgets/scale_down_on_tap.dart';

class Test {
  IconData icon;
  String title;
  Test({this.icon, this.title});
}

class ShopAccountDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Test> test = [
      Test(
        icon: Iconly.outlineChat,
        title: 'Customer Care',
      ),
      Test(
        icon: Iconly.outlineDocument,
        title: 'Policy',
      ),
      Test(
        icon: Icons.language,
        title: 'Customer Care',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Account'),
      ),
      body: Container(
        padding: EdgeInsets.all(ConfigConstant.margin2),
        child: Column(
          children: [
            buildShopCard(context),
            SizedBox(height: ConfigConstant.margin2),
            Column(
              children: List.generate(
                test.length,
                (index) {
                  return buildOptionType(
                    context: context,
                    title: test[index].title,
                    icon: test[index].icon,
                  );
                },
              ),
            ),
            SizedBox(height: ConfigConstant.margin2),
            buildOptionType(
              context: context,
              title: 'Log Out',
              icon: Iconly.outlineLogout,
            ),
          ],
        ),
      ),
    );
  }

  Container buildOptionType({
    BuildContext context,
    IconData icon,
    String title,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(ConfigConstant.radius),
      ),
      child: InkWell(
        highlightColor: Colors.transparent,
        onTap: () {
          print("click - $title");
        },
        child: Container(
          height: ConfigConstant.objectHeight2,
          padding: EdgeInsets.symmetric(horizontal: ConfigConstant.margin2),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Icon(
                icon,
                color: Theme.of(context).accentColor,
              ),
              SizedBox(width: ConfigConstant.margin1),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: ThemeConstant.darkPrimary,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ScaleDownOnTab buildShopCard(BuildContext context) {
    return ScaleDownOnTab(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => ShopAccountDetail(),
        //   ),
        // );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(ConfigConstant.radius),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300],
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
          trailing: Text(
            'Edit',
            style: TextStyle(color: Theme.of(context).accentColor),
          ),
        ),
      ),
    );
  }
}
