class ClientRequestException implements Exception {
  ClientRequestException({
    required this.message,
  });

  final String message;
}
