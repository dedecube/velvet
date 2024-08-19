mixin PartFinder {
  int indexOfFirstPartLine(List<String> lines) {
    for (var i = 0; i < lines.length; i++) {
      if (lines[i].contains('part \'')) {
        return i;
      }
    }

    return -1;
  }

  int indexOfLastPartLine(List<String> lines) {
    for (var i = lines.length - 1; i >= 0; i--) {
      if (lines[i].contains('part \'')) {
        return i;
      }
    }

    return -1;
  }
}
