import 'package:flutter/foundation.dart';
import 'package:velvet_framework/core/event/velvet_observer.dart';

class VelvetSubject<T extends VelvetObserver> {
  final ObserverList<T> _observers = ObserverList();

  void addObserver(T observer) {
    if (_observers.contains(observer)) {
      return;
    }

    _observers.add(observer);
  }

  void removeObserver(T observer) {
    if (!_observers.contains(observer)) {
      return;
    }

    _observers.remove(observer);
  }

  void notifyObservers(void Function(T observer) callback) {
    for (final observer in _observers) {
      callback(observer);
    }
  }
}
