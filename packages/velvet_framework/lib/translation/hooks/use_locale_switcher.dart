import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/hooks/use_provider/use_provider.dart';
import 'package:velvet_framework/translation/providers/translator_provider.dart';

Function(Locale locale) useLocaleSwitcher({BuildContext? context}) {
  var traslator = useProvider(translatorProvider);
  context ??= useContext();

  return (Locale locale) async {
    await traslator.setLocale(context as BuildContext, locale);
  };
}
