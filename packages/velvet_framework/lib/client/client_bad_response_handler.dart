import 'package:dio/dio.dart';
import 'package:velvet_framework/client/contracts/client_bad_response_handler_contract.dart';
import 'package:velvet_framework/client/exceptions/client_request_exception.dart';

class ClientBadResponseHandler implements ClientBadResponseHandlerContract {
  @override
  ClientRequestException handleBadResponse(Response? response) {
    if (response == null) {
      return ClientRequestException(message: 'Unknown error occurred');
    }

    switch (response.statusCode) {
      case 400:
        return ClientRequestException(message: 'Bad request');
      case 401:
        return ClientRequestException(message: 'Unauthorized');
      case 403:
        return ClientRequestException(message: 'Forbidden');
      case 404:
        return ClientRequestException(message: 'Not found');
      case 500:
      default:
        return ClientRequestException(message: 'Server error');
    }
  }
}
