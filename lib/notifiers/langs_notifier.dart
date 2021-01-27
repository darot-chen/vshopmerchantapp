import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:vtenhappmerchant/mixins/toast.dart';
import 'package:vtenhappmerchant/models/global_model.dart';
import 'package:vtenhappmerchant/storages/langs_storage.dart';
import 'package:vtenhappmerchant/extensions/locale_extensions.dart';

class LangsNotifier extends ChangeNotifier with Toast {
  BuildContext context;
  LangsStorage storage;

  LangsNotifier(this.context) {
    storage = LangsStorage();
    notifyListeners();
  }

  load() async {
    var langs = await storage.read();
    if (langs == null) return;
    if (!langs.containsKey('language_code')) return;

    var local = Locale(
      langs['language_code'],
    );
    await updateLocales(local, isWrite: false);
  }

  updateLocales(Locale local, {bool isWrite = true}) async {
    if (local.languageCode == null || local == context.locale) return;
    context.locale = Locale(local.languageCode);
    if (isWrite) {
      await storage.write({"language_code": local.languageCode});
      showSuccess(
        context: globalKeyModel.scaffoldKey.currentContext,
        title: tr("success"),
        subtitle: tr("you_changed_your_language_to") + " " + local.toLanguageName(context),
      );
    }
  }

  List<LocalizationsDelegate> get localizationDelegates {
    return [
      for (var delegate in context.localizationDelegates) delegate,
      LocaleNamesLocalizationsDelegate(),
    ];
  }

  Locale get locale => context.locale;
  List<Locale> get supportedLocales => context.supportedLocales;
}

final langsNotifier = ChangeNotifierProvider.family<LangsNotifier, BuildContext>((ref, context) {
  var notifier = LangsNotifier(context);
  return notifier;
});
