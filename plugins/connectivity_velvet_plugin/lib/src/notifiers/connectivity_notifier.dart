import 'package:velvet_annotation/velvet_annotation.dart';

part 'connectivity_notifier.g.dart';

@Riverpod(keepAlive: true)
class ConnectivityNotifier extends _$ConnectivityNotifier {
  ConnectivityNotifier();

  void online() {
    state = true;
  }

  void offline() {
    state = false;
  }

  @override
  bool build() {
    return true;
  }
}
