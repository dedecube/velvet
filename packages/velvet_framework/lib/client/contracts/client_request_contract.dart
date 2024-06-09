import 'package:velvet_framework/client/contracts/client_response_mapper_contract.dart';
import 'package:velvet_framework/client/enums/client_request_method_enum.dart';

abstract class ClientRequestContract<ResponseReturnType, RawResponseRootType>
    implements
        ClientResponseMapperContract<ResponseReturnType, RawResponseRootType> {
  Map<String, dynamic>? get pathParameters => null;

  Map<String, dynamic>? get queryParameters => null;

  Map<String, dynamic>? get body => null;

  /// The raw path of the API.
  String get rawPath;

  /// The built path of the API.
  String get path {
    if (pathParameters == null) {
      return rawPath;
    }

    return rawPath.replaceAllMapped(
      RegExp(r'{(\w+)}'),
      (match) {
        var key = match.group(1);
        var value = pathParameters![key!];

        return value.toString();
      },
    );
  }

  /// The additional headers for current request.
  Map<String, dynamic>? get headers => null;

  /// The method of the request.
  ClientRequestMethodEnum get method;
}
