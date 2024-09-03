import 'package:flutter/widgets.dart';

import 'package:velvet_framework/src/core/event/velvet_event.dart';

class LocaleLoadedFromOs extends VelvetEvent {
  LocaleLoadedFromOs(this.locale);

  Locale locale;
}
