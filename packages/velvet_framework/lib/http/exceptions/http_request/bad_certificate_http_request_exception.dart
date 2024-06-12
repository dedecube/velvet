import 'package:dio/dio.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';

class BadCertificateHttpRequestException extends HttpRequestException {
  BadCertificateHttpRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.badCertificate),
        super(
          message: message ?? dioException.message,
        );
}
