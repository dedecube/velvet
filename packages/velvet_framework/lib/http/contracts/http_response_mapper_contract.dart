import 'package:dio/dio.dart';

abstract interface class HttpResponseMapperContract<ResponseReturnType,
    RawResponseRootType> {
  ResponseReturnType fromResponse(Response<RawResponseRootType> response);
}
