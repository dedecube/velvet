class BagException implements Exception {
  BagException({
    this.exceptions = const [],
  });

  final List<Exception> exceptions;

  get isEmpty => exceptions.isEmpty;

  void add(Exception exception) {
    exceptions.add(exception);
  }
}
