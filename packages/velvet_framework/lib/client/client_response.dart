import 'package:dio/dio.dart';
import 'package:velvet_framework/client/contracts/client_request_contract.dart';

/// The response from the client.
///
/// This class is used to convert the response to the desired object.
/// This class is a wrapper around the original dio response.
///
/// The [ResponseReturnType] is the type of the object that the response will be converted to.
/// The [RawResponseRootType] is the type of the root object of the response.
class ClientResponse<ResponseReturnType, RawResponseRootType> {
  const ClientResponse({
    required this.dioResponse,
    required this.clientRequest,
  });

  /// The original dio response.
  ///
  /// Useful for custom handling of the response.
  final Response<RawResponseRootType> dioResponse;

  /// The client request that was made.
  ///
  /// Internally used for mapping the response to the desired object.
  final ClientRequestContract<ResponseReturnType, RawResponseRootType>
      clientRequest;

  /// Convert the response to the desired object.
  ResponseReturnType toObject() {
    return clientRequest.fromResponse(dioResponse);
  }
}
