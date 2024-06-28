// ignore_for_file: avoid_dynamic
extension DotNotationMap<K, V> on Map<K, V> {
  /// Retrieves a value from the map using dot notation.
  ///
  /// The [key] parameter represents the dot-separated path to the value.
  /// The [defaultValue] parameter is an optional value to return if the key is not found.
  ///
  /// Returns the value if found, otherwise returns the [defaultValue].
  ///
  /// Throws a [TypeError] if the value is not of type [T].
  T? get<T>({required String key, T? defaultValue}) {
    var keys = key.split('.');

    dynamic current = this;

    for (var part in keys) {
      if (part == '{first}') {
        current = _getFirstElement(current, defaultValue);
      } else if (part == '{last}') {
        current = _getLastElement(current, defaultValue);
      } else if (part.contains(RegExp(r'^\d+$'))) {
        current = _getArrayElement(current, part, defaultValue);
      } else {
        current = _getMapValue(current, part, defaultValue);
      }
    }

    if (current is T || current == null) {
      return current as T?;
    } else {
      throw TypeError();
    }
  }

  dynamic _getFirstElement(dynamic current, dynamic defaultValue) {
    if (current is List && current.isNotEmpty) {
      return current.first;
    } else {
      return defaultValue;
    }
  }

  dynamic _getLastElement(dynamic current, dynamic defaultValue) {
    if (current is List && current.isNotEmpty) {
      return current.last;
    } else {
      return defaultValue;
    }
  }

  dynamic _getArrayElement(dynamic current, String part, dynamic defaultValue) {
    int index = int.parse(part);
    if (current is List && index < current.length) {
      return current[index];
    } else {
      return defaultValue;
    }
  }

  dynamic _getMapValue(dynamic current, String part, dynamic defaultValue) {
    if (current is Map && current.containsKey(part)) {
      return current[part];
    } else {
      return defaultValue;
    }
  }

  void set({required String key, required dynamic value}) {
    var keys = key.split('.');
    dynamic current = this;

    for (var i = 0; i < keys.length; i++) {
      var part = keys[i];

      // ignore: avoid_nested_if
      if (i == keys.length - 1) {
        // Last part, set the value
        // ignore: avoid_nested_if
        if (part.contains(RegExp(r'^\d+$'))) {
          // Part is an integer (array index)
          int index = int.parse(part);
          if (current is List) {
            while (current.length <= index) {
              current.add(null);
            }
            current[index] = value;
          } else if (current is Map) {
            if (current[part] is! List) {
              current[part] = [];
            }
            while ((current[part] as List).length <= index) {
              (current[part] as List).add(null);
            }
            (current[part] as List)[index] = value;
          }
        } else {
          // Part is a map key
          if (current is Map) {
            current[part] = value;
          }
        }
      } else {
        // Not the last part, traverse or create nested structure
        // ignore: avoid_nested_if
        if (part.contains(RegExp(r'^\d+$'))) {
          // Part is an integer (array index)
          int index = int.parse(part);
          if (current is List && index < current.length) {
            current = current[index];
          } else {
            // Expand list if necessary
            if (current is List) {
              while (current.length <= index) {
                current.add(null);
              }
              if (current[index] == null) {
                current[index] = {};
              }
              current = current[index];
            } else {
              if (current is! Map) {
                current = <String, dynamic>{};
              }
              // Check if the next part is numeric
              if (keys[i + 1].contains(RegExp(r'^\d+$'))) {
                current[part] = [];
              } else {
                current[part] = {};
              }
              current = current[part];
            }
          }
        } else {
          // Part is a map key
          // ignore: avoid_nested_if
          if (current is Map) {
            if (!current.containsKey(part)) {
              // Check if the next part is numeric
              if (i + 1 < keys.length &&
                  keys[i + 1].contains(RegExp(r'^\d+$'))) {
                current[part] = [];
              } else {
                current[part] = {};
              }
            }
            current = current[part];
          } else {
            var newMap = {part: {}};
            (current as Map)[keys[i - 1]] = newMap;
            current = newMap;
          }
        }
      }
    }
  }
}
