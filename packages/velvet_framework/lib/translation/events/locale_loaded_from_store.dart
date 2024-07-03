import 'package:flutter/widgets.dart';
import 'package:velvet_framework/event/contracts/event_contract.dart';

class LocaleLoadedFromStore extends EventContract {
  LocaleLoadedFromStore(this.locale);

  Locale locale;
}
