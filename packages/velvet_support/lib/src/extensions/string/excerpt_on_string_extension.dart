extension ExcerptOnStringExtension on String {
  /// Returns an excerpt of the string with a specified phrase highlighted.
  ///
  /// The [phrase] parameter specifies the phrase to be highlighted in the excerpt.
  /// The [radius] parameter determines the number of characters before and after the phrase to include in the excerpt.
  /// The [omission] parameter specifies the string to be used for omission if the excerpt is truncated.
  ///
  /// Returns the excerpted string with the specified phrase highlighted.
  String excerpt([
    String phrase = '',
    int radius = 100,
    String omission = '...',
  ]) {
    if (isEmpty) {
      return '';
    }

    if (phrase.isEmpty) {
      return this;
    }

    int pos = _findPhrasePosition(phrase);

    if (pos == -1) {
      return this;
    }

    int start = pos - radius;
    int end = pos + phrase.length + radius;

    if (start < 0) {
      start = 0;
    }

    if (end > length) {
      end = length;
    }

    String excerpt = substring(start, end);

    if (start != 0) {
      excerpt = _removeLeadingWord(excerpt);
    }

    if (end != length) {
      excerpt = _removeTrailingWord(excerpt);
    }

    return '$omission$excerpt$omission';
  }

  /// Finds the position of the specified phrase in the string.
  ///
  /// Returns the position of the phrase in the string, or -1 if not found.
  int _findPhrasePosition(String phrase) {
    return indexOf(phrase);
  }

  /// Removes the leading word from the excerpt.
  ///
  /// Returns the excerpt with the leading word removed.
  String _removeLeadingWord(String excerpt) {
    int pos = excerpt.indexOf(' ');

    if (pos != -1) {
      return excerpt.substring(pos);
    }

    return excerpt;
  }

  /// Removes the trailing word from the excerpt.
  ///
  /// Returns the excerpt with the trailing word removed.
  String _removeTrailingWord(String excerpt) {
    int pos = excerpt.lastIndexOf(' ');

    if (pos != -1) {
      return excerpt.substring(0, pos);
    }

    return excerpt;
  }
}
