import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/exceptions/http_request/http_request_exception.dart';

class NotAcceptableHttpRequestException extends HttpRequestException {
  NotAcceptableHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.badResponse),
        assert(dioException.response != null),
        assert(dioException.response!.statusCode == 406),
        super(
          message: message ?? dioException.message,
        );
}