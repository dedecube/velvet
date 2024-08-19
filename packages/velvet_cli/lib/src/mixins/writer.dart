import 'dart:io';

import 'package:dcli/dcli.dart';
import 'package:path/path.dart';

mixin Writer {
  void write(String path, String content) {
    if (!exists(path)) {
      createRecursiveDirectory(path);
      File(path).writeAsStringSync(content);
    } else {
      printerr('File already exists: $path');
    }
  }

  void createRecursiveDirectory(String path) {
    if (!exists(dirname(path))) {
      createDir(dirname(path), recursive: true);
    }
  }
}
