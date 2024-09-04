// ignore_for_file: avoid_dynamic
extension DotNotationOnMapExtension<K, V> on Map<K, V> {
  /// Retrieves a value from the map using dot notation.
  ///
  /// The [key] parameter represents the dot-separated path to the value.
  /// The [defaultValue] parameter is an optional value to return if the key is not found.
  ///
  /// Returns the value if found, otherwise returns the [defaultValue].
  ///
  /// Throws a [TypeError] if the value is not of type [T].
  T? get<T>({required String key, T? defaultValue}) {
    if (key.isEmpty) {
      return defaultValue;
    }

    List<String> keyParts = key.split('.');
    dynamic currentValue = this;

    for (var keyPart in keyParts) {
      currentValue = _getValueForKeyPart(currentValue, keyPart, defaultValue);
    }

    if (currentValue is T || currentValue == null) {
      return currentValue as T?;
    } else {
      throw TypeError();
    }
  }

  /// Sets a value in the map using dot notation.
  ///
  /// The [key] parameter represents the dot-separated path to the value.
  /// The [value] parameter is the value to set at the specified path.
  void set({required String key, required dynamic value}) {
    if (key.isEmpty) {
      return;
    }

    List<String> keyParts = key.split('.');
    dynamic currentValue = this;

    for (var i = 0; i < keyParts.length; i++) {
      var keyPart = keyParts[i];

      if (i == keyParts.length - 1) {
        _setValueForKeyPart(currentValue, keyPart, value);
      } else {
        currentValue = _traverseOrCreateStructure(currentValue, keyParts, i);
      }
    }
  }

  dynamic _getValueForKeyPart(
    dynamic currentValue,
    String keyPart,
    dynamic defaultValue,
  ) {
    if (keyPart == '{first}') {
      return _getFirstElement(currentValue, defaultValue);
    } else if (keyPart == '{last}') {
      return _getLastElement(currentValue, defaultValue);
    } else if (_isArrayIndex(keyPart)) {
      return _getArrayElement(currentValue, keyPart, defaultValue);
    } else {
      return _getMapValue(currentValue, keyPart, defaultValue);
    }
  }

  dynamic _getFirstElement(dynamic currentValue, dynamic defaultValue) {
    return (currentValue is List && currentValue.isNotEmpty)
        ? currentValue.first
        : defaultValue;
  }

  dynamic _getLastElement(dynamic currentValue, dynamic defaultValue) {
    return (currentValue is List && currentValue.isNotEmpty)
        ? currentValue.last
        : defaultValue;
  }

  dynamic _getArrayElement(
    dynamic currentValue,
    String keyPart,
    dynamic defaultValue,
  ) {
    int index = int.parse(keyPart);
    return (currentValue is List && index < currentValue.length)
        ? currentValue[index]
        : defaultValue;
  }

  dynamic _getMapValue(
    dynamic currentValue,
    String keyPart,
    dynamic defaultValue,
  ) {
    return (currentValue is Map && currentValue.containsKey(keyPart))
        ? currentValue[keyPart]
        : defaultValue;
  }

  void _setValueForKeyPart(
    dynamic currentValue,
    String keyPart,
    dynamic value,
  ) {
    if (_isArrayIndex(keyPart)) {
      int index = int.parse(keyPart);
      if (currentValue is List) {
        _ensureListSize(currentValue, index);
        currentValue[index] = value;
      } else if (currentValue is Map) {
        if (currentValue[keyPart] is! List) {
          currentValue[keyPart] = [];
        }
        _ensureListSize(currentValue[keyPart], index);
        (currentValue[keyPart] as List)[index] = value;
      }
    } else if (currentValue is Map) {
      currentValue[keyPart] = value;
    }
  }

  dynamic _traverseOrCreateStructure(
    dynamic currentValue,
    List<String> keyParts,
    int currentIndex,
  ) {
    String keyPart = keyParts[currentIndex];

    if (_isArrayIndex(keyPart)) {
      int index = int.parse(keyPart);
      if (currentValue is List && index < currentValue.length) {
        return currentValue[index];
      } else {
        return _expandListAndCreateMapIfNecessary(currentValue, index);
      }
    } else if (currentValue is Map) {
      return _traverseMapOrCreateNext(currentValue, keyParts, currentIndex);
    } else {
      return _createNewMapInList(currentValue, keyParts, currentIndex);
    }
  }

  dynamic _expandListAndCreateMapIfNecessary(dynamic currentValue, int index) {
    if (currentValue is List) {
      _ensureListSize(currentValue, index);
      if (currentValue[index] == null) {
        currentValue[index] = {};
      }
      return currentValue[index];
    } else {
      return <String, dynamic>{};
    }
  }

  dynamic _traverseMapOrCreateNext(
    dynamic currentValue,
    List<String> keyParts,
    int currentIndex,
  ) {
    String keyPart = keyParts[currentIndex];
    if (!currentValue.containsKey(keyPart)) {
      currentValue[keyPart] =
          _isNextPartArrayIndex(keyParts, currentIndex) ? [] : {};
    }
    return currentValue[keyPart];
  }

  dynamic _createNewMapInList(
    dynamic currentValue,
    List<String> keyParts,
    int currentIndex,
  ) {
    var newMap = {keyParts[currentIndex]: {}};
    (currentValue as Map)[keyParts[currentIndex - 1]] = newMap;
    return newMap;
  }

  void _ensureListSize(List list, int index) {
    while (list.length <= index) {
      list.add(null);
    }
  }

  bool _isArrayIndex(String keyPart) {
    return keyPart.contains(RegExp(r'^\d+$'));
  }

  bool _isNextPartArrayIndex(List<String> keyParts, int currentIndex) {
    return currentIndex + 1 < keyParts.length &&
        _isArrayIndex(keyParts[currentIndex + 1]);
  }
}
