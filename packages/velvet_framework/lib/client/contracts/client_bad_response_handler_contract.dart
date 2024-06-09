import 'package:dio/dio.dart';
import 'package:velvet_framework/client/exceptions/client_request_exception.dart';

abstract interface class ClientBadResponseHandlerContract {
  /// Handle the bad response.
  ///
  /// [response] is the response that is considered bad.
  ClientRequestException handleBadResponse(Response? response);
}
