import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';

class AppLocalizations {
  final BuildContext? context;
  AppLocalizations({this.context});

  static String translate(String key) => key.tr();

  bool isEnLocale() => context!.locale.languageCode == 'en';

  Future<void> _changeLang(String languageCode) async =>
      await context!.setLocale(Locale(languageCode));

  Future<void> toEnglish() async => await _changeLang('en');
  Future<void> toArabic() async => await _changeLang('ar');
}
