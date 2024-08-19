mixin ImportFinder {
  int indexOfFirstImportLine(List<String> lines) {
    for (var i = 0; i < lines.length; i++) {
      if (lines[i].contains('import \'')) {
        return i;
      }
    }

    return -1;
  }

  int indexOfLastImportLine(List<String> lines) {
    for (var i = lines.length - 1; i >= 0; i--) {
      if (lines[i].contains('import \'')) {
        return i;
      }
    }

    return -1;
  }
}
