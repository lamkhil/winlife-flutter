import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:winlife/setting/lang/en_us.dart';
import 'package:winlife/setting/lang/id_id.dart';

class LanguageService extends Translations {
  static final locale = Locale('id', 'ID');

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('en', 'US');

  static final locales = [Locale('id', 'ID'), Locale('en', 'US')];

  static final langs = ['id', 'en'];

  Map<String, Map<String, String>> get keys => {'id_ID': idID, 'en_US': enUS};

  // Gets locale from language, and updates the locale
  static void changeLocale(String lang) {
    final locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale!);
  }

  // Finds language in `langs` list and returns it as Locale
  static Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale;
  }
}