import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';

abstract interface class HttpExceptionHandlerContract {
  /// Handle the original dio exception.
  ///
  /// [exception] is the original dio exception.
  HttpRequestException handleException(
    HttpRequestContract httpRequest,
    DioException exception,
  );

  /// Handle the bad response.
  ///
  /// [httpRequest] is the client request that caused the bad response.
  /// [exception] is the dio exception that caused the bad response.
  HttpRequestException handleBadResponse(
    HttpRequestContract httpRequest,
    DioException exception,
  );
}
