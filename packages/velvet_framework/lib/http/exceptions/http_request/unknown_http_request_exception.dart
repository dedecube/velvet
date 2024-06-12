import 'package:dio/dio.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';

class UnknownHttpRequestException extends HttpRequestException {
  UnknownHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.unknown),
        super(
          message: message ?? dioException.message,
        );
}
