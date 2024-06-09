import 'package:dio/dio.dart';
import 'package:velvet_framework/client/client_response.dart';

abstract interface class ClientRequestCustomHandlingContract<ResponseReturnType,
    RawResponseRootType> {
  /// The custom handling of the request.
  ClientResponse<ResponseReturnType, RawResponseRootType> handle(
    Dio defaultDioInstance,
    Options clientRequestOptions,
  );
}
