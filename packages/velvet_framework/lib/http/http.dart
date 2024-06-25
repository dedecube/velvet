import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_exception_handler_contract.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';
import 'package:velvet_framework/http/contracts/http_request_custom_handling_contract.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';
import 'package:velvet_framework/http/http_config.dart';
import 'package:velvet_framework/http/http_exception_handler.dart';
import 'package:velvet_framework/http/http_response.dart';

class Http {
  Http(HttpConfig config)
      : _dioInstance = Dio(
          BaseOptions(
            baseUrl: config.baseURL,
            headers: {
              'Content-Type': 'application/json',
              'Accept': 'application/json',
            },
          ),
        );

  /// The instance of the Dio client.
  final Dio _dioInstance;

  get dioInstance => _dioInstance;

  /// The default exception handler.
  ///
  /// It is used when the client request does not have its own exception handler.
  final HttpExceptionHandlerContract _exceptionHandler = HttpExceptionHandler();

  Future<HttpResponse<ResponseReturnType, RawResponseRootType>>
      request<ResponseReturnType, RawResponseRootType>(
    HttpRequestContract<ResponseReturnType, RawResponseRootType> httpRequest,
  ) async {
    try {
      return await _makeRequest<ResponseReturnType, RawResponseRootType>(
        httpRequest,
      );
    } on DioException catch (exception) {
      throw _handleException(httpRequest, exception);
    } catch (exception) {
      rethrow;
    }
  }

  /// Handle, wrap and rethrowing the exception.
  ///
  /// If the client request has its own exception handler, then it will be used.
  /// Otherwise, the default exception handler will be used.
  HttpRequestException _handleException(
    HttpRequestContract httpRequest,
    DioException exception,
  ) {
    return _exceptionHandler.handleException(
      httpRequest,
      exception,
    );
  }

  Future<HttpResponse<ResponseReturnType, RawResponseRootType>>
      _makeRequest<ResponseReturnType, RawResponseRootType>(
    HttpRequestContract<ResponseReturnType, RawResponseRootType> httpRequest,
  ) async {
    final requestOptions = Options(
      method: httpRequest.method.value,
      headers: httpRequest.headers,
    );

    if (httpRequest is HttpRequestCustomHandlingContract) {
      return (httpRequest as HttpRequestCustomHandlingContract<
              ResponseReturnType, RawResponseRootType>)
          .handle(_dioInstance, requestOptions);
    }

    final response = await _dioInstance.request<RawResponseRootType>(
      httpRequest.path,
      data: httpRequest.body,
      queryParameters: httpRequest.queryParameters,
      options: requestOptions,
    );

    return HttpResponse(
      dioResponse: response,
      httpRequest: httpRequest,
    );
  }
}
