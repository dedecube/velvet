part of 'velvet_container.dart';

class ContextualBinding<T> {
  ContextualBinding({
    required this.contexts,
    required this.type,
    required this.provider,
  });
  final List<Type> contexts;
  final Type type;
  final T Function() provider;
}
