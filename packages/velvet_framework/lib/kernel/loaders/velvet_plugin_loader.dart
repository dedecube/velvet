import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/core/plugin/velvet_plugin.dart';

import 'velvet_plugin_loader.velvet.dart';

@VelvetAutoloader(glob: 'lib/**/*_plugin.dart', type: VelvetPlugin)
List velvetPluginLoader() => $velvetPluginLoaderItems;
