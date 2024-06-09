import 'package:dio/dio.dart';
import 'package:velvet_framework/client/contracts/client_bad_response_handler_contract.dart';
import 'package:velvet_framework/client/contracts/client_exception_handler_contract.dart';
import 'package:velvet_framework/client/exceptions/client_request_exception.dart';

class ClientExceptionHandler implements ClientExceptionHandlerContract {
  @override
  ClientRequestException handleException(
    DioException exception,
    ClientBadResponseHandlerContract badResponseHandler,
  ) {
    switch (exception.type) {
      case DioExceptionType.cancel:
        return ClientRequestException(
          message: 'Request to API server was cancelled',
        );
      case DioExceptionType.connectionTimeout:
        return ClientRequestException(
          message: 'Connection timeout with API server',
        );
      case DioExceptionType.receiveTimeout:
        return ClientRequestException(
          message: 'Receive timeout in connection with API server',
        );
      case DioExceptionType.badResponse:
        return badResponseHandler.handleBadResponse(exception.response);
      case DioExceptionType.sendTimeout:
        return ClientRequestException(
          message: 'Send timeout in connection with API server',
        );
      case DioExceptionType.unknown:
        return ClientRequestException(message: 'Unexpected error occurred');
      case DioExceptionType.badCertificate:
        return ClientRequestException(message: 'Invalid SSL certificate');
      default:
        return ClientRequestException(message: 'Unexpected error occurred');
    }
  }
}
