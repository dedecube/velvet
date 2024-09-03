import 'package:dio/dio.dart';
import 'package:velvet_framework/src/http/enums/dio_request_options_extra_field_enum.dart';
import 'package:velvet_framework/src/http/exceptions/velvet_http_request_not_found_exception.dart';
import 'package:velvet_framework/src/http/request/velvet_http_request.dart';

extension DioRequestOptionsHasVelvetHttpRequest on RequestOptions {
  static const extraFieldName = DioRequestOptionsExtraFieldEnum.httpRequest;

  bool _hasHttpRequest() {
    if (extra.containsKey(extraFieldName.name) &&
        extra[extraFieldName.name] is VelvetHttpRequest) {
      return true;
    }

    return false;
  }

  VelvetHttpRequest get httpRequest {
    if (_hasHttpRequest()) {
      return extra[extraFieldName.name] as VelvetHttpRequest;
    }

    throw VelvetHttpRequestNotFoundException();
  }
}
