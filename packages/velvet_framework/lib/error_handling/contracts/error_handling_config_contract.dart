import 'package:flutter/material.dart';

abstract class ErrorHandlingConfigContract {
  void renderer(BuildContext context, Exception exception);
}
