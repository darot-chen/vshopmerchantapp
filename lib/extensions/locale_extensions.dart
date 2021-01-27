import 'package:flutter/material.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';
export 'string_extensions.dart';

extension LocaleExtensions on Locale {
  String toLanguageName(BuildContext context) {
    var string = LocaleNames.of(context).nameOf(this.languageCode);
    return string;
  }
}
