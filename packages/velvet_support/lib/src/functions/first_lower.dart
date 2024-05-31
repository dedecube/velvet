String firstLower(String value) {
  if (value.isEmpty) {
    return '';
  }

  if (value.length == 1) {
    return value.toLowerCase();
  }

  return value[0].toLowerCase() + value.substring(1);
}
