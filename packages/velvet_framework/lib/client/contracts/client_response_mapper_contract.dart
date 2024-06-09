import 'package:dio/dio.dart';

abstract interface class ClientResponseMapperContract<ResponseReturnType,
    RawResponseRootType> {
  ResponseReturnType fromResponse(Response<RawResponseRootType> response);
}
