import 'package:meta/meta_meta.dart';

/// Annotation used to specify the autoloading behavior for Velvet.
///
/// The [VelvetAutoloader] annotation can be applied to classes or functions.
/// It takes a required `glob` parameter which specifies the file glob pattern
/// for the files to be autoloaded.
///
/// Additionally, it can take an optional `type`
/// parameter which specifies the type of the autoloaded element from files.
///
/// Example:
/// ```dart
/// @VelvetAutoloader(glob: 'lib/config/*.dart', type: Config)
/// List<Config> configLoader() => $configLoaderItems;
/// ```
@Target({
  TargetKind.classType,
  TargetKind.function,
})
class VelvetAutoloader {
  const VelvetAutoloader({
    required this.glob,
    this.type,
  });

  /// The file glob pattern for the files to be autoloaded.
  final String glob;

  /// The type of the autoloaded element from files.
  final Type? type;
}
