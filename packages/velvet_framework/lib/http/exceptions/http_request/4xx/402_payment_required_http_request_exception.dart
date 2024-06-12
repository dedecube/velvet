import 'package:dio/dio.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';

class PaymentRequiredRequestException extends HttpRequestException {
  PaymentRequiredRequestException({
    required super.httpRequest,
    required super.dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.badResponse),
        assert(dioException.response != null),
        assert(dioException.response!.statusCode == 402),
        super(
          message: message ?? dioException.message,
        );
}
