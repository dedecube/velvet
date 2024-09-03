import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/enums/http_request_method_enum.dart';
import 'package:velvet_framework/src/http/request/velvet_http_request.dart';

VelvetHttpRequest createHttpRequest<Parsed, Raw>({
  required String rawPath,
  required Parsed Function(Raw data) parser,
  Map<String, dynamic>? pathParameters,
  Map<String, dynamic>? queryParameters,
  Map<String, dynamic>? body,
  Map<String, dynamic>? headers,
  HttpRequestMethodEnum method = HttpRequestMethodEnum.get,
}) {
  return _VelvetHttpRequest<Parsed, Raw>(
    rawPath: rawPath,
    parser: parser,
    pathParameters: pathParameters,
    queryParameters: queryParameters,
    body: body,
    headers: headers,
    method: method,
  );
}

class _VelvetHttpRequest<Parsed, Raw> extends VelvetHttpRequest<Parsed, Raw> {
  _VelvetHttpRequest({
    required this.rawPath,
    required this.parser,
    this.pathParameters,
    this.queryParameters,
    this.body,
    this.headers,
    required this.method,
  });

  @override
  final Map<String, dynamic>? pathParameters;
  @override
  final Map<String, dynamic>? queryParameters;
  @override
  final Map<String, dynamic>? body;
  @override
  final String rawPath;
  @override
  final Map<String, dynamic>? headers;
  @override
  final HttpRequestMethodEnum method;
  final Parsed Function(Raw data) parser;

  @override
  Parsed fromResponse(Response<Raw> response) {
    return parser(response.data as Raw);
  }
}
