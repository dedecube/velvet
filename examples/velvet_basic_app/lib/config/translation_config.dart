import 'package:flutter/material.dart';
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/velvet_framework.dart';

@VelvetConfig(provider: translationConfig)
class TranslationConfig extends TranslationConfigContract {
  @override
  Locale get defaultLocale => const Locale('en');

  @override
  Locale get fallbackLocale => const Locale('it');

  @override
  List<Locale> get supportedLocales => [const Locale('en'), const Locale('it')];
}
