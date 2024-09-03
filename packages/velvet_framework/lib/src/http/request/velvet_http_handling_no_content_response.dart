import 'package:dio/dio.dart';

import 'package:velvet_framework/src/http/request/velvet_http_request.dart';

abstract class VelvetHttpHandlingNoContentResponse
    extends VelvetHttpRequest<Null, void> {
  /// Handles a request that expects no content.
  @override
  Null fromResponse(Response<void> response) {
    return null;
  }
}
