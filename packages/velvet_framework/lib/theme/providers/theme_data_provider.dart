import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_data_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [])
ThemeData themeData(ThemeDataRef ref) {
  return ThemeData();
}
