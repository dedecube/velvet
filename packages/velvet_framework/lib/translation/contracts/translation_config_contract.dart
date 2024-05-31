import 'package:flutter/widgets.dart';

/// The contract for the translation configuration.
/// This contract defines the required properties for a translation configuration.
abstract class TranslationConfigContract {
  /// The default locale to be used for translations.
  Locale get defaultLocale;

  /// The fallback locale to be used when a translation is not available in the requested locale.
  Locale get fallbackLocale;

  /// The list of supported locales for translations.
  List<Locale> get supportedLocales;
}
