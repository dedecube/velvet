import 'package:flutter/widgets.dart';
import 'package:velvet_framework/event/contracts/event_contract.dart';

class LocaleLoadedFromOs extends EventContract {
  LocaleLoadedFromOs(this.locale);

  Locale locale;
}
