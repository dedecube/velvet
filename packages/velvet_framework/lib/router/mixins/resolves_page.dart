// ignore_for_file: avoid_returning_widgets

import 'package:flutter/material.dart';

/// A mixin class that provides a method to resolve a page based on a preference.
abstract mixin class ResolvesPage {
  /// Returns the business logic page widget.
  Widget businessLogicPage();

  /// Returns the UI page widget.
  Widget uiPage();

  /// Resolves and returns the appropriate page widget based on the preference.
  ///
  /// If [prefererBusinessLogicView] is `true`, it returns the business logic page widget.
  /// Otherwise, it returns the UI page widget.
  Widget resolvePage(bool prefererBusinessLogicView) {
    if (prefererBusinessLogicView) {
      return businessLogicPage();
    }

    return uiPage();
  }
}
