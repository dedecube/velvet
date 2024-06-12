import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';

class HttpRequestException implements Exception {
  HttpRequestException({
    required this.httpRequest,
    required this.dioException,
    String? message,
  }) : message = message ?? dioException.message;

  final String? message;
  final HttpRequestContract httpRequest;
  final DioException dioException;

  @override
  String toString() => 'HttpRequestException: $message';
}
