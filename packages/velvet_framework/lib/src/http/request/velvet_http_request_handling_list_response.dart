import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/request/velvet_http_request.dart';

/// The contract for a HTTP request that returns a list of items.
///
/// For example, this is useful for GET requests that return a list of items.
abstract class VelvetHttpRequestHandlingListResponse<T>
    extends VelvetHttpRequest<List<T>, List> {
  T Function(Map<String, dynamic> json) get itemMapper;

  @override
  List<T> fromResponse(Response<List> response) {
    return response.data!.map((e) => itemMapper(e)).toList();
  }
}
