import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';
import 'package:vtenhappmerchant/notifiers/authentication/social_signin_notifier.dart';
import 'package:vtenhappmerchant/notifiers/authentication/user_detail_notifier.dart';
import 'package:vtenhappmerchant/notifiers/langs_notifier.dart';
import 'package:vtenhappmerchant/notifiers/theme_notifier.dart';
import 'package:vtenhappmerchant/extensions/locale_extensions.dart';
import 'package:vtenhappmerchant/widgets/network_image_loader.dart';
import 'package:vtenhappmerchant/widgets/vt_listtile.dart';

class AccountSettingScreen extends ConsumerWidget {
  final Function onSignoutPressed;

  const AccountSettingScreen({Key key, this.onSignoutPressed}) : super(key: key);

  Widget buildProfile(BuildContext context) {
    double avatarSize = ConfigConstant.objectHeight3;
    var boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(avatarSize),
      border: Border.all(
        width: 4,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
    return Container(
      alignment: Alignment.center,
      child: Container(
        decoration: boxDecoration,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(avatarSize),
          child: NetworkImageloader(
            'https://pixinvent.com/materialize-material-design-admin-template/app-assets/images/user/12.jpg',
            width: avatarSize,
            height: avatarSize,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context, reader) {
    var notifier = reader(userDetailNotifier);
    var email = notifier.accountModel != null ? notifier.accountModel.email : "";
    var storeCredits = notifier.accountModel != null ? notifier.accountModel.storeCredits.toString() : "";
    var completedOrders = notifier.accountModel != null ? notifier.accountModel.completedOrders.toString() : "";

    double profileStackY = 35;

    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            title: Text(tr("my_account")),
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.transparent,
            expandedHeight: 200,
            stretch: true,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(ConfigConstant.objectHeight1),
              child: Transform.translate(
                offset: Offset(0, profileStackY),
                child: buildProfile(context),
              ),
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.logout),
                onPressed: onSignoutPressed,
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://img.freepik.com/free-photo/hand-painted-watercolor-background-with-sky-clouds-shape_24972-1095.jpg?size=626&ext=jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: ConfigConstant.margin2,
                  color: Theme.of(context).primaryColor,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: ConfigConstant.margin1),
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    children: [
                      Column(
                        children: [
                          VTListTile(
                            subtitleText: tr("email"),
                            titleText: email,
                            leadingIcon: Icons.email,
                            onTap: () {},
                          ),
                          VTListTile(
                            subtitleText: tr("store_credit"),
                            titleText: storeCredits,
                            leadingIcon: Icons.credit_card,
                            onTap: () {},
                          ),
                          VTListTile(
                            subtitleText: tr("completed_orders"),
                            titleText: completedOrders,
                            leadingIcon: Icons.verified,
                            onTap: () {},
                          ),
                          Consumer(
                            builder: (context, reader, child) {
                              final notifier = reader(langsNotifier(context));
                              var langs = notifier.supportedLocales;
                              return VTListTile(
                                subtitleText: tr("language"),
                                titleText: context.locale.toLanguageName(context),
                                leadingIcon: Icons.language,
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return SimpleDialog(
                                        titlePadding: const EdgeInsets.only(
                                          left: ConfigConstant.margin2,
                                          top: ConfigConstant.margin2,
                                        ),
                                        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                                        contentPadding: const EdgeInsets.symmetric(
                                          horizontal: ConfigConstant.margin2,
                                          vertical: ConfigConstant.margin1,
                                        ),
                                        title: Text(
                                          tr('choose_a_language'),
                                          style: Theme.of(context).textTheme.headline6,
                                        ),
                                        children: List.generate(
                                          langs.length,
                                          (index) => FlatButton(
                                            color: Theme.of(context).primaryColor,
                                            onPressed: () async {
                                              Navigator.pop(context);
                                              notifier.updateLocales(langs[index]);
                                            },
                                            child: Text(
                                              langs[index].toLanguageName(context),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: ConfigConstant.margin2),
                Container(
                  padding: EdgeInsets.symmetric(vertical: ConfigConstant.margin1),
                  color: Theme.of(context).primaryColor,
                  child: Consumer(builder: (context, reader, child) {
                    final themeState = context.read(themeNotifier);
                    return VTListTile(
                      titleText: tr("night_mode"),
                      leadingIcon: FontAwesomeIcons.moon,
                      onTap: () {},
                      isRotate: false,
                      trailing: Switch(
                        onChanged: (val) {
                          themeState.setMode(val);
                        },
                        value: themeState.isDarkMode,
                      ),
                    );
                  }),
                ),
                const SizedBox(height: ConfigConstant.margin2),
                Container(
                  padding: EdgeInsets.symmetric(vertical: ConfigConstant.margin1),
                  color: Theme.of(context).primaryColor,
                  child: Consumer(
                    builder: (context, reader, child) {
                      var notifier = reader(socialSigninNotifier);
                      return Column(
                        children: [
                          VTListTile(
                            titleText: "Facebook",
                            leadingIcon: FontAwesomeIcons.facebook,
                            onTap: () {
                              notifier.loginWithFB(context);
                            },
                            trailing: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Theme.of(context).canvasColor,
                                )
                              ],
                            ),
                          ),
                          VTListTile(
                            titleText: "Google",
                            leadingIcon: FontAwesomeIcons.google,
                            onTap: () {
                              notifier.logInWithGoogle(context);
                            },
                            trailing: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Theme.of(context).canvasColor,
                                )
                              ],
                            ),
                          ),
                          VTListTile(
                            titleText: "Apple",
                            leadingIcon: FontAwesomeIcons.appStore,
                            onTap: () {
                              notifier.logInWithApple(context);
                            },
                            trailing: Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Theme.of(context).canvasColor,
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const SizedBox(height: ConfigConstant.objectHeight3),
              ],
            ),
          )
        ],
      ),
    );
  }
}
