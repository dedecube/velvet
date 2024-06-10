import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';

class SendTimeoutHttpRequestException extends HttpRequestException {
  SendTimeoutHttpRequestException({
    required HttpRequestContract httpRequest,
    required DioException dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.sendTimeout),
        super(
          message: message ?? dioException.message,
          httpRequest: httpRequest,
          dioException: dioException,
        );
}
