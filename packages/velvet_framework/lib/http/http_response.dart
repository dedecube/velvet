import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';
import 'package:velvet_framework/http/exceptions/http_response_parse_exception.dart';

/// The response from the client.
///
/// This class is used to convert the response to the desired object.
/// This class is a wrapper around the original dio response.
///
/// The [ResponseReturnType] is the type of the object that the response will be converted to.
/// The [RawResponseRootType] is the type of the root object of the response.
class HttpResponse<ResponseReturnType, RawResponseRootType> {
  const HttpResponse({
    required this.dioResponse,
    required this.httpRequest,
  });

  /// The original dio response.
  ///
  /// Useful for custom handling of the response.
  final Response<RawResponseRootType> dioResponse;

  /// The client request that was made.
  ///
  /// Internally used for mapping the response to the desired object.
  final HttpRequestContract<ResponseReturnType, RawResponseRootType>
      httpRequest;

  /// Convert the response to the desired object.
  ResponseReturnType toObject() {
    try {
      return httpRequest.fromResponse(dioResponse);
    } catch (exception) {
      throw HttpResponseParseException();
    }
  }
}
