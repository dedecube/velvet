part of 'velvet_container.dart';

class WhenContext<T> {
  WhenContext(this._container, this._contexts);

  final VelvetContainer _container;
  final List<Type> _contexts;

  void needs<U>(U Function() provider) {
    _container._registerContextualBinding<U>(_contexts, provider);
  }
}
