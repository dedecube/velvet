import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:connectivity_velvet_plugin/src/events/offline_event.dart';
import 'package:connectivity_velvet_plugin/src/events/online_event.dart';
import 'package:connectivity_velvet_plugin/src/notifiers/connectivity_notifier.dart';
import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/velvet_framework.dart';

class ConnectivityVelvetPlugin extends VelvetPlugin {
  @override
  FutureOr<void> register() {
    _syncNotifier();
    _watchConnectivityChanges();
  }

  @override
  FutureOr<void> boot() {
    // Enforce the initial state
    _onConnectivityChanged();
  }

  /// Handle the connectivity change event
  /// and dispatch the appropriate event
  void _onConnectivityChanged() async {
    final result = await Connectivity().checkConnectivity();

    if (result.contains(ConnectivityResult.none)) {
      event(OfflineEvent());
    } else {
      event(OnlineEvent());
    }
  }

  /// Sync the notifier with the current connectivity state
  void _syncNotifier() {
    listen<OnlineEvent>((_) {
      riverpodContainer().read(connectivityNotifierProvider.notifier).online();
    });

    listen<OfflineEvent>((_) {
      riverpodContainer().read(connectivityNotifierProvider.notifier).offline();
    });
  }

  /// Watch for connectivity changes
  /// and dispatch the appropriate event
  void _watchConnectivityChanges() {
    Connectivity()
        .onConnectivityChanged
        .listen((_) => _onConnectivityChanged());
  }
}
