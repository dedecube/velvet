import 'package:velvet_framework/core/container/contracts/velvet_container_contract.dart';
import 'package:velvet_framework/core/container/mixins/proxy_to_get_it_mixin.dart';

part '_contextual_binding.dart';
part '_when_context.dart';

/// The container for the Velvet framework.
/// This container is used to register and resolve dependencies.
///
/// Behind the scenes, it uses the `get_it` package and operates mostly as a proxy to the `GetIt` instance.
class VelvetContainer extends VelvetContainerContract with ProxyToGetItMixin {
  VelvetContainer();

  final List<ContextualBinding> _contextualBindings = [];

  @override
  void requireRegistrationOf<T extends Object>() {
    if (isRegistered<T>()) {
      return;
    }

    throw Exception('Registration of type $T is required.');
  }

  // Register a contextual binding
  WhenContext<T> when<T>(List<Type> contexts) {
    return WhenContext<T>(this, contexts);
  }

  @override
  T get<T extends Object>({
    param1,
    param2,
    String? instanceName,
    Type? type,
    Type? context,
  }) {
    if (context != null) {
      for (final binding in _contextualBindings) {
        if (binding.contexts.contains(context) && binding.type == T) {
          return binding.provider() as T;
        }
      }
    }

    return super.get<T>(
      param1: param1,
      param2: param2,
      instanceName: instanceName,
      type: type,
    );
  }

  void _registerContextualBinding<T>(
    List<Type> contexts,
    T Function() provider,
  ) {
    _contextualBindings.add(
      ContextualBinding<T>(
        contexts: contexts,
        type: T,
        provider: provider,
      ),
    );
  }
}
