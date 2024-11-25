import 'package:connectivity_velvet_plugin/connectivity_velvet_plugin.dart';
import 'package:connectivity_velvet_plugin/src/notifiers/connectivity_notifier.dart';
import 'package:flutter/foundation.dart';
import 'package:velvet_framework/velvet_framework.dart';

ValueNotifier<bool> useIsOnline() {
  final initState = useMemoized(
    () => riverpodContainer().read(connectivityNotifierProvider),
  );

  final isOnline = useState(initState);

  useOnOnline(() {
    isOnline.value = true;
  });

  useOnOffline(() {
    isOnline.value = false;
  });

  return isOnline;
}
