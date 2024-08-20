import 'package:flutter/material.dart';
import 'package:velvet_framework/core/config/velvet_config.dart';

abstract class ThemeConfigContract extends VelvetConfig {
  ThemeMode get themeMode;
}
