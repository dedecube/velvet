import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';

/// The contract for a HTTP request that returns a list of items.
///
/// For example, this is useful for GET requests that return a list of items.
abstract class HttpRequestListContract<T>
    extends HttpRequestContract<List<T>, List> {
  T Function(Map<String, dynamic> json) get itemMapper;

  @override
  List<T> fromResponse(Response<List> response) {
    return response.data!.map((e) => itemMapper(e)).toList();
  }
}
