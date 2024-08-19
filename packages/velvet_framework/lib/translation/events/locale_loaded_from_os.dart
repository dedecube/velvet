import 'package:flutter/widgets.dart';
import 'package:velvet_framework/event/velvet_event.dart';

class LocaleLoadedFromOs extends VelvetEvent {
  LocaleLoadedFromOs(this.locale);

  Locale locale;
}
