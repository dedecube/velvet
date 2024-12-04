import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/enums/http_request_method_enum.dart';
import 'package:velvet_support/velvet_support.dart';

abstract class VelvetHttpRequest<Parsed, Raw> {
  /// The path parameters for current request.
  Map<String, dynamic>? get pathParameters => null;

  /// The query parameters for current request.
  Map<String, dynamic>? get queryParameters => null;

  /// The body of the request.
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
    ).ensureStartsWith('/');
  }

  /// The additional headers for current request.
  Map<String, dynamic>? get headers => null;

  /// The method of the request.
  HttpRequestMethodEnum get method;

  /// The function to parse the response.
  Parsed fromResponse(Response<Raw> response);
}
