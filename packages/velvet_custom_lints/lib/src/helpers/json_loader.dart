import 'dart:async';
import 'dart:convert';
import 'dart:io';

class JsonLoader {
  JsonLoader(this.jsonFiles);

  final List<String> jsonFiles;

  final StreamController<void> _onChangeController = StreamController<void>();

  Stream<void> get onChange => _onChangeController.stream;

  Map<String, dynamic> _loadJsonFile(String filePath) {
    final file = File(filePath);

    if (!file.existsSync()) {
      return {};
    }

    final contents = file.readAsStringSync();

    return jsonDecode(contents);
  }

  Map<String, dynamic> loadAllKeys() {
    final Map<String, dynamic> allKeys = {};

    for (final filePath in jsonFiles) {
      final absolutePath = _resolvePath(filePath);
      final jsonMap = _loadJsonFile(absolutePath);
      allKeys.addAll(jsonMap);
    }

    return allKeys;
  }

  String _resolvePath(String relativePath) {
    return File(relativePath).absolute.path;
  }

  bool containsKey(Map<String, dynamic> jsonMap, String key) {
    final parts = key.split('.');
    var current = jsonMap;
    for (final part in parts) {
      if (current.containsKey(part)) {
        final value = current[part];
        if (value is Map<String, dynamic>) {
          current = value;
        } else if (value is String && part == parts.last) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    }
    return true;
  }
}
