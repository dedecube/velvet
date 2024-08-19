import 'package:velvet_cli/src/core/container.dart';
import 'package:velvet_cli/src/services/pubspec.dart';

extension LibraryUriOnString on String {
  String get asLibraryUri {
    final package = container.get<Pubspec>().name;

    final path = replaceAll('lib/', '');

    return "package:$package/$path";
  }
}
