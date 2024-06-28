import 'package:flutter/material.dart';
import 'package:velvet_framework/hooks/use_provider/use_provider.dart';
import 'package:velvet_framework/translation/providers/translator_provider.dart';
import 'package:velvet_framework/translation/translator.dart';

/// Extension on [BuildContext] to provide translation capabilities.
extension TranslatorExtension on BuildContext {
  /// Retrieves the [Translator] instance from the [translatorProvider].
  ///
  /// The [translatorProvider] is a provider that manages the state of the [Translator].
  /// It allows accessing the translator instance within the current [BuildContext].
  ///
  /// Example usage:
  /// ```dart
  /// Translator translator = context.translator();
  /// ```
  Translator translator() {
    return useProvider(translatorProvider, context: this);
  }

  /// Translates the given [key] using the [Translator] instance.
  ///
  /// The [key] is the identifier for the translation string.
  /// The optional [args] parameter can be used to provide dynamic values to the translation string.
  ///
  /// Example usage:
  /// ```dart
  /// String translatedString = context.translate('hello_world');
  /// ```
  String translate(String key, {Map<String, String>? args}) {
    return translator().translate(this, key, args: args);
  }
}
