import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/exceptions/http_request/http_request_exception.dart';

class CanceledHttpRequestException extends HttpRequestException {
  CanceledHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.cancel),
        super(
          message: message ?? dioException.message,
        );
}
