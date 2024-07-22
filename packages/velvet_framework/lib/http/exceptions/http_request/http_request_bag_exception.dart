import 'package:velvet_framework/error_handling/bag_exception.dart';
import 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';

class HttpRequestBagException extends HttpRequestException
    implements BagException {
  HttpRequestBagException({
    required super.httpRequest,
    required super.dioException,
    super.message,
  });

  @override
  void add(Exception exception) {
    exceptions.add(exception);
  }

  @override
  List<Exception> get exceptions => [];

  @override
  get isEmpty => exceptions.isEmpty;
}
