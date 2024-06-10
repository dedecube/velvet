import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';

/// TODO Rename it. Map is the type of raw response data.
abstract class HttpRequestMapContract<T>
    extends HttpRequestContract<T, Map<String, dynamic>> {
  T Function(Map<String, dynamic> json) get itemMapper;

  @override
  T fromResponse(Response<Map<String, dynamic>> response) {
    return itemMapper(response.data!);
  }
}
