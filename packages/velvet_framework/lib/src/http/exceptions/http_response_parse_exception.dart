import 'package:dio/dio.dart';

class HttpResponseParseException implements Exception {
  const HttpResponseParseException({
    required this.message,
    required this.dioResponse,
  });

  final String message;

  final Response dioResponse;

  @override
  String toString() {
    return 'HttpResponseParseException: $message';
  }
}
