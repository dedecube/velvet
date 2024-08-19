import 'package:flutter/widgets.dart';
import 'package:velvet_framework/event/velvet_event.dart';

class LocaleLoadedFromStore extends VelvetEvent {
  LocaleLoadedFromStore(this.locale);

  Locale locale;
}
