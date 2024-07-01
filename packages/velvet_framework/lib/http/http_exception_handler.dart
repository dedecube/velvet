import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_exception_handler_contract.dart';
import 'package:velvet_framework/http/contracts/http_request_bad_response_handler.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';
import 'package:velvet_framework/http/exceptions/http_request/4xx/bad_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/4xx/conflict_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/4xx/forbidden_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/4xx/gone_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/4xx/method_not_allowed_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/4xx/not_accetable_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/4xx/not_found_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/4xx/payload_too_large_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/4xx/payment_required_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/4xx/unauthorized_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/4xx/unprocessable_content_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/5xx/bad_gateway_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/5xx/internal_server_error_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/bad_certificate_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/canceled_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/connection_timeout_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/receive_timeout_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/send_timeout_http_request_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/unknown_http_request_exception.dart';

class HttpExceptionHandler implements HttpExceptionHandlerContract {
  @override
  HttpRequestException handleException(
    HttpRequestContract httpRequest,
    DioException dioException,
  ) {
    switch (dioException.type) {
      case DioExceptionType.badResponse:
        return handleBadResponse(
          httpRequest,
          dioException,
        );

      case DioExceptionType.cancel:
        return CanceledHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case DioExceptionType.connectionTimeout:
        return ConnectionTimeoutHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case DioExceptionType.receiveTimeout:
        return ReceiveTimeoutHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case DioExceptionType.sendTimeout:
        return SendTimeoutHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case DioExceptionType.unknown:
        return UnknownHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case DioExceptionType.badCertificate:
        return BadCertificateHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      default:
        return HttpRequestException(
          message: 'Unexpected error occurred',
          httpRequest: httpRequest,
          dioException: dioException,
        );
    }
  }

  @override
  HttpRequestException handleBadResponse(
    HttpRequestContract httpRequest,
    DioException dioException,
  ) {
    if (dioException.response == null) {
      return HttpRequestException(
        message: 'Unknown error occurred',
        httpRequest: httpRequest,
        dioException: dioException,
      );
    }

    if (httpRequest is HttpRequestBadResponseHandlerContract) {
      final toThrow = (httpRequest as HttpRequestBadResponseHandlerContract)
          .handleBadResponse(dioException, httpRequest, dioException.response!);

      if (toThrow != null) {
        return toThrow;
      }
    }

    switch (dioException.response!.statusCode) {
      case 400:
        return BadHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 401:
        return UnauthorizedHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 402:
        return PaymentRequiredRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 403:
        return ForbiddenHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 404:
        return NotFoundHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 405:
        return MethodNotAllowedHttpException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 406:
        return NotAcceptableAllowedHttpException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 409:
        return ConflictHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 410:
        return GoneHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 413:
        return PayloadTooLargeRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 422:
        return UnprocessableContenteHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 429:
        return HttpRequestException(
          message: 'Too many requests',
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 500:
        return InternalServerErrorHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      case 502:
        return BadGatewayHttpRequestException(
          httpRequest: httpRequest,
          dioException: dioException,
        );
      default:
        return HttpRequestException(
          message: 'Unexpected error occurred',
          httpRequest: httpRequest,
          dioException: dioException,
        );
    }
  }
}
