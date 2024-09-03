import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/exceptions/http_request/http_request_exception.dart';

class SendTimeoutHttpRequestException extends HttpRequestException {
  SendTimeoutHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.sendTimeout),
        super(
          message: message ?? dioException.message,
        );
}
