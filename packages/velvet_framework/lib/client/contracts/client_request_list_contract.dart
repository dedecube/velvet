import 'package:dio/dio.dart';
import 'package:velvet_framework/client/contracts/client_request_contract.dart';

abstract class ClientRequestListContract<T>
    extends ClientRequestContract<List<T>, List> {
  T Function(Map<String, dynamic> json) get itemMapper;

  @override
  List<T> fromResponse(Response<List> response) {
    return response.data!.map((e) => itemMapper(e)).toList();
  }
}
