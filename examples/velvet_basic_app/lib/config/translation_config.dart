import 'package:flutter/material.dart';
import 'package:velvet_framework/velvet_framework.dart';

class TranslationConfig extends TranslationConfigContract {
  @override
  Locale get defaultLocale => Locale('en');

  @override
  Locale get fallbackLocale => Locale('it');

  @override
  List<Locale> get supportedLocales => [Locale('en'), Locale('it')];
}
