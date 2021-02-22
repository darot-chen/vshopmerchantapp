import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:vtenhappmerchant/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ProviderScope(
      child: AppLocalization(),
    ),
  );
}

class AppLocalization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: [
        Locale('en'),
        Locale('km'),
      ],
      useOnlyLangCode: true,
      path: 'assets/translations/langs.csv',
      fallbackLocale: Locale('en'),
      assetLoader: CsvAssetLoader(),
      child: App(),
    );
  }
}
