import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:vtenhappmerchant/constants/config_constant.dart';

class Loading extends StatelessWidget {
  final bool isLoading;

  const Loading({Key key, this.isLoading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: isLoading
          ? LottieBuilder.asset(
              'assets/animation/8640-loading.json',
              width: ConfigConstant.objectHeight6,
              height: ConfigConstant.objectHeight6,
            )
          : Text(tr("loaded")),
    );
  }
}
