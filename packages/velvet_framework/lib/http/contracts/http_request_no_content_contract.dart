import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';

/// The contract for a HTTP request that does not return any content.
///
/// This is useful for DELETE requests, for example or for POST, PUT, PATCH requests that
/// do not return any content.
abstract class HttpRequestNoContentContract<T>
    extends HttpRequestContract<Null, void> {
  T Function(Map<String, dynamic> json) get itemMapper;

  @override
  Null fromResponse(Response<void> response) {
    return null;
  }
}
