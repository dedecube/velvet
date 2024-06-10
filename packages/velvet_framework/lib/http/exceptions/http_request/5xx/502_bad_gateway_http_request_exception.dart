import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';

class BadGatewayHttpRequestException extends HttpRequestException {
  BadGatewayHttpRequestException({
    required HttpRequestContract httpRequest,
    required DioException dioException,
    String? message,
  })  : assert(dioException.type == DioExceptionType.badResponse),
        assert(dioException.response != null),
        assert(dioException.response!.statusCode == 502),
        super(
          message: message ?? dioException.message,
          httpRequest: httpRequest,
          dioException: dioException,
        );
}
