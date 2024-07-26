import 'package:velvet_annotation/velvet_annotation.dart';
import 'package:velvet_framework/theme/theme_definition.dart';
import 'package:velvet_framework/theme/themes/wireframe/wireframe_dark.dart';

part 'theme_dark_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [WireframeDark])
ThemeDefinition themeDark(ThemeDarkRef ref) {
  return ref.watch(wireframeDarkProvider);
}
