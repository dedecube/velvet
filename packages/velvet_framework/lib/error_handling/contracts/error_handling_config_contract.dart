import 'package:flutter/material.dart';
import 'package:velvet_framework/core/config/velvet_config.dart';

abstract class ErrorHandlingConfigContract extends VelvetConfig {
  void renderer(BuildContext context, Exception exception);
}
