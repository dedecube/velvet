import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/exceptions/http_request/http_request_exception.dart';

class ConnectionTimeoutHttpRequestException extends HttpRequestException {
  ConnectionTimeoutHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.connectionTimeout),
        super(
          message: message ?? dioException.message,
        );
}
