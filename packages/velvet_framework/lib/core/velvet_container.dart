import 'package:get_it/get_it.dart';

typedef VelvetContainer = GetIt;

/// The global container for the Velvet framework.
///
/// This container is used to register and resolve dependencies.
/// Behind the scenes, it uses the `get_it` package.
final VelvetContainer container = GetIt.instance;
