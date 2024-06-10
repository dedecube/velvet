import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';

class HttpRequestException implements Exception {
  HttpRequestException({
    required this.message,
    required this.httpRequest,
    required this.dioException,
  });

  final String? message;
  final HttpRequestContract httpRequest;
  final DioException dioException;

  @override
  String toString() => 'HttpRequestException: $message';
}
