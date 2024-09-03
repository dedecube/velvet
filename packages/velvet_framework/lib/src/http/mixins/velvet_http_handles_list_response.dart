import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/request/velvet_http_request.dart';

mixin VelvetHttpHandlesListResponse<T> on VelvetHttpRequest<List<T>, List> {
  T Function(Map<String, dynamic> json) get itemMapper;

  @override
  List<T> fromResponse(Response<List> response) {
    return response.data!.map((e) => itemMapper(e)).toList();
  }
}
