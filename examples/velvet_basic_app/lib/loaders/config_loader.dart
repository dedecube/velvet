import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/velvet_framework.dart';

import 'config_loader.velvet.dart';

@VelvetAutoloader(glob: 'lib/config/*.dart', type: Config)
List<Config> configLoader() => $configLoaderItems;
