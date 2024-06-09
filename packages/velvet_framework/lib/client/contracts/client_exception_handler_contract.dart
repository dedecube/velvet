import 'package:dio/dio.dart';
import 'package:velvet_framework/client/contracts/client_bad_response_handler_contract.dart';
import 'package:velvet_framework/client/exceptions/client_request_exception.dart';

abstract interface class ClientExceptionHandlerContract {
  /// Handle the original dio exception.
  ///
  /// [exception] is the original dio exception.
  ClientRequestException handleException(
    DioException exception,
    ClientBadResponseHandlerContract badResponseHandler,
  );
}
