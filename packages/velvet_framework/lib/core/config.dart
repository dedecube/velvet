import 'package:flutter_riverpod/flutter_riverpod.dart';

typedef ConfigProvider = Provider;

abstract interface class Config<T> {
  ConfigProvider get toOverride;
}
