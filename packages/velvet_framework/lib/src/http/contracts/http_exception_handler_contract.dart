import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/exceptions/http_request/http_request_exception.dart';
import 'package:velvet_framework/src/http/request/velvet_http_request.dart';

abstract interface class HttpExceptionHandlerContract {
  /// Handle the original dio exception.
  ///
  /// [exception] is the original dio exception.
  HttpRequestException handleException(
    VelvetHttpRequest httpRequest,
    DioException exception,
  );

  /// Handle the bad response.
  ///
  /// [httpRequest] is the client request that caused the bad response.
  /// [exception] is the dio exception that caused the bad response.
  HttpRequestException handleBadResponse(
    VelvetHttpRequest httpRequest,
    DioException exception,
  );
}
