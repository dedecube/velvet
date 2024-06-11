import 'package:dio/dio.dart';
import 'package:velvet_framework/velvet_framework.dart';

abstract interface class HttpRequestBadResponseHandlerContract {
  /// Handle the bad response.
  ///
  /// [dioException] is the exception that was thrown.
  /// [httpRequest] is the request that was made.
  /// [response] is the response that is considered bad.
  HttpRequestException? handleBadResponse(
    DioException dioException,
    HttpRequestContract httpRequest,
    Response response,
  );
}
