import 'package:flutter/material.dart';

import 'package:velvet_framework/src/core/velvet_container.dart';
import 'package:velvet_framework/src/translation/contracts/translator_contract.dart';
import 'package:velvet_framework/src/translation/translator.dart';

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
  TranslatorContract translator() {
    return container.get<TranslatorContract>();
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
