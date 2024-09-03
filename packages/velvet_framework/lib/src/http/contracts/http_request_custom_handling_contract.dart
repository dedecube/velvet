import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/velvet_http_response.dart';

abstract interface class HttpRequestCustomHandlingContract<Parsed,
    RawResponseRoot> {
  /// The custom handling of the request.
  VelvetHttpResponse<Parsed, RawResponseRoot> handle(
    Dio defaultDioInstance,
    Options httpRequestOptions,
  );
}
