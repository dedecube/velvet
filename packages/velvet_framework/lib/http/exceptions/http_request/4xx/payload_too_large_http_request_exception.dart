import 'package:dio/dio.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';

class PayloadTooLargeHttpRequestException extends HttpRequestException {
  PayloadTooLargeHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.badResponse),
        assert(dioException.response != null),
        assert(dioException.response!.statusCode == 413),
        super(
          message: message ?? dioException.message,
        );
}
