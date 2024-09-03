import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/exceptions/http_request/http_request_exception.dart';

class ConnectionErrorHttpRequestException extends HttpRequestException {
  ConnectionErrorHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.connectionError),
        super(
          message: message ?? dioException.message,
        );
}
