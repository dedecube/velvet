String firstUpper(String value) {
  if (value.isEmpty) {
    return '';
  }

  if (value.length == 1) {
    return value.toUpperCase();
  }

  return value[0].toUpperCase() + value.substring(1);
}
