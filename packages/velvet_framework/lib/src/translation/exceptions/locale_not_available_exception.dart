import 'package:flutter/widgets.dart';

class LocaleNotAvailableException implements Exception {
  LocaleNotAvailableException(this.locale) : super();

  final Locale locale;

  @override
  String toString() {
    return 'Locale $locale is not available';
  }
}
