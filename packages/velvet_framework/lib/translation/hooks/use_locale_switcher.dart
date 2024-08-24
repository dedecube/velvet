import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velvet_framework/core/velvet_container.dart';
import 'package:velvet_framework/translation/contracts/translator_contract.dart';

/// A hook that provides a function to switch the locale of the app.
///
/// The [useLocaleSwitcher] hook returns a function that can be used to switch the
/// locale of the app. It takes an optional [BuildContext] parameter, which is used
/// to retrieve the current context if not provided. The function returned by the
/// hook can be called with a [Locale] parameter to switch the app's locale.
///
/// Example usage:
/// ```dart
/// Function(Locale locale) switchLocale = useLocaleSwitcher(context: context);
/// switchLocale(Locale('en'));
/// ```
///
/// Note: This hook requires the [TranslatorProvider] to be set up in the widget tree.
/// Make sure to wrap your app with the [TranslatorProvider] before using this hook.
///
/// TODO[epic=feat] - Support for multiple locales;
/// TODO[epic=feat] - Toggle between them;
Function(Locale locale) useLocaleSwitcher({BuildContext? context}) {
  var translator = container.get<TranslatorContract>();
  context ??= useContext();

  return (Locale locale) async {
    await translator.setLocale(context as BuildContext, locale);
  };
}
