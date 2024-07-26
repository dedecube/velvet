import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/theme/theme_definition.dart';
import 'package:velvet_framework/theme/themes/wireframe/wireframe_light.dart';

part 'theme_light_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [WireframeLight])
ThemeDefinition themeLight(ThemeLightRef ref) {
  return ref.watch(wireframeLightProvider);
}
