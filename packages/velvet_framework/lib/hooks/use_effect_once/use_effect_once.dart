import 'dart:ui';

import 'package:velvet_framework/velvet_framework.dart';

void useEffectOnce(VoidCallback? Function() callback) {
  useEffect(callback, []);
}
