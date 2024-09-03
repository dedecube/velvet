import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/exceptions/http_request/http_request_exception.dart';

class ReceiveTimeoutHttpRequestException extends HttpRequestException {
  ReceiveTimeoutHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.receiveTimeout),
        super(
          message: message ?? dioException.message,
        );
}
