import 'package:velvet_framework/src/core/container/contracts/velvet_container_contract.dart';
import 'package:velvet_framework/src/core/container/velvet_container.dart';

/// The global container for the Velvet framework.
///
/// This container is used to register and resolve dependencies.
///
/// Behind the scenes, it uses the `get_it` package
/// and operates mostly as a proxy to the `GetIt` instance.
final VelvetContainerContract container = VelvetContainer();
