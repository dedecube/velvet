import 'package:connectivity_velvet_plugin/src/notifiers/connectivity_notifier.dart';
import 'package:velvet_framework/velvet_framework.dart';

bool isOffline() {
  return !riverpodContainer().read(connectivityNotifierProvider);
}
