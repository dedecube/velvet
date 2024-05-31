import 'package:flutter/material.dart';
import 'package:velvet_framework/hooks/use_provider/use_provider.dart';
import 'package:velvet_framework/translation/providers/translator_provider.dart';
import 'package:velvet_framework/translation/translator.dart';

extension TranslatorExtension on BuildContext {
  Translator translator() {
    return useProvider(translatorProvider, context: this);
  }

  String translate(String key, {Map<String, String>? args}) {
    return translator().translate(this, key, args: args);
  }
}
