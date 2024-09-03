import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/request/velvet_http_request.dart';

/// The contract for a HTTP request that returns a map of key-value pairs.
abstract class VelvetHttpRequestHandlingMapResponse<T>
    extends VelvetHttpRequest<T, Map<String, dynamic>> {
  T Function(Map<String, dynamic> json) get itemMapper;

  @override
  T fromResponse(Response<Map<String, dynamic>> response) {
    return itemMapper(response.data!);
  }
}
