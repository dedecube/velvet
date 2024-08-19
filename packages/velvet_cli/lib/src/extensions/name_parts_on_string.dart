import 'package:velvet_support/velvet_support.dart';

extension NamePartsOnString on String {
  ({String basename, String path}) nameParts() {
    late String basename;
    late String path;

    if (contains('/')) {
      final parts = split('/');
      basename = parts.last.snake();
      path = parts.sublist(0, parts.length - 1).join('/');
    } else {
      basename = this;
      path = '';
    }

    return (basename: basename, path: path);
  }
}
