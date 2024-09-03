import 'package:velvet_framework/src/error_handling/bag_exception.dart';
import 'package:velvet_framework/src/http/exceptions/http_request/http_request_exception.dart';

class HttpRequestBagException extends HttpRequestException
    implements BagException<HttpRequestException> {
  HttpRequestBagException({
    required super.httpRequest,
    required super.dioException,
    super.message,
  });

  @override
  void add(HttpRequestException exception) {
    exceptions.add(exception);
  }

  @override
  List<HttpRequestException> exceptions = [];

  @override
  bool get isEmpty => exceptions.isEmpty;
}
