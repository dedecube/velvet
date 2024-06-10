import 'package:dio/dio.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';

abstract interface class HttpRequestBadResponseHandlerContract {
  /// Handle the bad response.
  ///
  /// [response] is the response that is considered bad.
  HttpRequestException? handleBadResponse(Response response);
}
