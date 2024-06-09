import 'package:dio/dio.dart';
import 'package:velvet_framework/client/client_bad_response_handler.dart';
import 'package:velvet_framework/client/client_config.dart';
import 'package:velvet_framework/client/client_exception_handler.dart';
import 'package:velvet_framework/client/client_response.dart';
import 'package:velvet_framework/client/contracts/client_bad_response_handler_contract.dart';
import 'package:velvet_framework/client/contracts/client_exception_handler_contract.dart';
import 'package:velvet_framework/client/contracts/client_request_contract.dart';
import 'package:velvet_framework/client/contracts/client_request_custom_handling_contract.dart';
import 'package:velvet_framework/client/enums/client_request_method_enum.dart';

class Client {
  Client(ClientConfig config)
      : _instance = Dio(
          BaseOptions(
            baseUrl: config.baseURL,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        );

  /// The instance of the Dio client.
  final Dio _instance;

  /// The default exception handler.
  ///
  /// It is used when the client request does not have its own exception handler.
  final ClientExceptionHandlerContract _defaultExceptionHandler =
      ClientExceptionHandler();

  /// The default bad response handler.
  ///
  /// It is used when the client request does not have its own bad response handler.
  final ClientBadResponseHandlerContract _defaultBadResponseHandler =
      ClientBadResponseHandler();

  Future<ClientResponse<ResponseReturnType, RawResponseRootType>>
      request<ResponseReturnType, RawResponseRootType>(
    ClientRequestContract<ResponseReturnType, RawResponseRootType>
        clientRequest,
  ) async {
    try {
      return _makeRequest<ResponseReturnType, RawResponseRootType>(
        clientRequest,
      );
    } on DioException catch (exception) {
      throw _handleException(clientRequest, exception);
    }
  }

  /// Check if the client request has its own exception handler,
  /// so if it implements the [ClientExceptionHandlerContract].
  shouldUseClientRequestExceptionHandler(ClientRequestContract clientRequest) {
    return clientRequest is ClientExceptionHandlerContract;
  }

  /// Handle, wrap and rethrowing the exception.
  ///
  /// If the client request has its own exception handler, then it will be used.
  /// Otherwise, the default exception handler will be used.
  _handleException(
    ClientRequestContract clientRequest,
    DioException exception,
  ) {
    final badResponseHandler = clientRequest is ClientBadResponseHandlerContract
        ? clientRequest as ClientBadResponseHandlerContract
        : _defaultBadResponseHandler;

    if (shouldUseClientRequestExceptionHandler(clientRequest)) {
      throw (clientRequest as ClientExceptionHandlerContract).handleException(
        exception,
        badResponseHandler,
      );
    }

    throw _defaultExceptionHandler.handleException(
      exception,
      badResponseHandler,
    );
  }

  /// Qualify the method to be used in the request.
  ///
  /// [method] is the method to be qualified.
  _qualifyClientRequestMethod(ClientRequestMethodEnum method) {
    return method.name.toString().toUpperCase();
  }

  Future<ClientResponse<ResponseReturnType, RawResponseRootType>>
      _makeRequest<ResponseReturnType, RawResponseRootType>(
    ClientRequestContract<ResponseReturnType, RawResponseRootType>
        clientRequest,
  ) async {
    final requestOptions = Options(
      method: _qualifyClientRequestMethod(clientRequest.method),
      headers: clientRequest.headers,
    );

    if (clientRequest is ClientRequestCustomHandlingContract) {
      return (clientRequest as ClientRequestCustomHandlingContract<
              ResponseReturnType, RawResponseRootType>)
          .handle(_instance, requestOptions);
    }

    final response = await _instance.request<RawResponseRootType>(
      clientRequest.path,
      data: clientRequest.body,
      queryParameters: clientRequest.queryParameters,
      options: requestOptions,
    );

    return ClientResponse(
      dioResponse: response,
      clientRequest: clientRequest,
    );
  }
}
