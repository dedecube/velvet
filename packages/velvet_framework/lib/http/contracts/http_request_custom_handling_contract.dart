import 'package:dio/dio.dart';
import 'package:velvet_framework/http/http_response.dart';

abstract interface class HttpRequestCustomHandlingContract<ResponseReturnType,
    RawResponseRootType> {
  /// The custom handling of the request.
  HttpResponse<ResponseReturnType, RawResponseRootType> handle(
    Dio defaultDioInstance,
    Options httpRequestOptions,
  );
}
