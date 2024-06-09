import 'package:dio/dio.dart';
import 'package:velvet_framework/client/contracts/client_response_mapper_contract.dart';

mixin ClientResponseListMapper<T>
    on ClientResponseMapperContract<List<T>, List<Map<String, dynamic>>> {
  T Function(Map<String, dynamic> json) get itemMapper;

  @override
  List<T> fromResponse(Response<List> response) {
    return response.data!.map((e) => itemMapper(e)).toList();
  }
}
