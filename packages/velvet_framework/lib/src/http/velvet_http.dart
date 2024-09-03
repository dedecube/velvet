import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/contracts/http_exception_handler_contract.dart';
import 'package:velvet_framework/src/http/contracts/http_request_custom_handling_contract.dart';
import 'package:velvet_framework/src/http/enums/dio_request_options_extra_field_enum.dart';
import 'package:velvet_framework/src/http/exceptions/http_request/http_request_exception.dart';
import 'package:velvet_framework/src/http/request/velvet_http_request.dart';
import 'package:velvet_framework/src/http/velvet_http_config.dart';
import 'package:velvet_framework/src/http/velvet_http_exception_handler.dart';
import 'package:velvet_framework/src/http/velvet_http_response.dart';

class VelvetHttp {
  VelvetHttp(VelvetHttpConfig config)
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

  Dio get dioInstance => _dioInstance;

  /// The default exception handler.
  ///
  /// It is used when the client request does not have its own exception handler.
  final HttpExceptionHandlerContract _exceptionHandler =
      VelvetHttpExceptionHandler();

  Future<VelvetHttpResponse<Parsed, Raw>> request<Parsed, Raw>(
    VelvetHttpRequest<Parsed, Raw> httpRequest,
  ) async {
    try {
      return await _makeRequest<Parsed, Raw>(
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
    VelvetHttpRequest httpRequest,
    DioException exception,
  ) {
    return _exceptionHandler.handleException(
      httpRequest,
      exception,
    );
  }

  Future<VelvetHttpResponse<Parsed, Raw>> _makeRequest<Parsed, Raw>(
    VelvetHttpRequest<Parsed, Raw> httpRequest,
  ) async {
    final requestOptions = Options(
      method: httpRequest.method.value,
      headers: httpRequest.headers,
      extra: {
        DioRequestOptionsExtraFieldEnum.httpRequest.name: httpRequest,
      },
    );

    if (httpRequest is HttpRequestCustomHandlingContract) {
      return (httpRequest as HttpRequestCustomHandlingContract<Parsed, Raw>)
          .handle(_dioInstance, requestOptions);
    }

    final response = await _dioInstance.request<Raw>(
      httpRequest.path,
      data: httpRequest.body,
      queryParameters: httpRequest.queryParameters,
      options: requestOptions,
    );

    return VelvetHttpResponse(
      dioResponse: response,
      httpRequest: httpRequest,
    );
  }
}
