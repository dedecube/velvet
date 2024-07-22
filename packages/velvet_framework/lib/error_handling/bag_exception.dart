class BagException<T extends Exception> implements Exception {
  BagException({
    this.exceptions = const [],
  });

  final List<T> exceptions;

  get isEmpty => exceptions.isEmpty;

  void add(T exception) {
    exceptions.add(exception);
  }
}
