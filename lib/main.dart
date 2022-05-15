import 'dart:ui';
import 'package:coffee_shop_v01/start_main.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'language/config/config_lang.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  final Locale systemLocales = window.locale;
   final Locale _defultLang = systemLocales.languageCode == 'ar'
      ? ConfigLanguage.arLocale
      : ConfigLanguage.enLocale;
  runApp(
    EasyLocalization(
      supportedLocales: const [
        ConfigLanguage.enLocale,
        ConfigLanguage.arLocale
      ],
      path: ConfigLanguage.langPath,
      fallbackLocale: ConfigLanguage.enLocale,
      startLocale: _defultLang,
      child: const MyApp(),
    ),
  );
}
