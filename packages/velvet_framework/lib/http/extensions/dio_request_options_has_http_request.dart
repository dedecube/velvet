import 'package:dio/dio.dart';
import 'package:velvet_framework/http/contracts/http_request_contract.dart';
import 'package:velvet_framework/http/enums/dio_request_options_extra_field_enum.dart';

extension DioRequestOptionsHasHttpRequest on RequestOptions {
  HttpRequestContract get httpRequest {
    final extraFieldName = DioRequestOptionsExtraFieldEnum.httpRequest.name;

    if (extra.containsKey(extraFieldName) &&
        extra[extraFieldName] is HttpRequestContract) {
      return extra[extraFieldName] as HttpRequestContract;
    }

    throw Exception(
      'The request options does not contain a HttpRequestContract.',
    );
  }
}
