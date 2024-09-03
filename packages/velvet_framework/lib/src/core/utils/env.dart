import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

/// Get environment variable.
String? env(String key, [String? defaultValue]) {
  if (kDebugMode) {
    return dotenv.env[key] ?? defaultValue;
  }

  return String.fromEnvironment(
    key,
    defaultValue: defaultValue ?? '',
  );
}

/// Get environment variable as string.
String? envString(String key, [String? defaultValue]) {
  return env(key, defaultValue);
}

/// Get environment variable as integer.
int? envInt(String key, [int? defaultValue]) {
  if (kDebugMode) {
    return int.tryParse(dotenv.env[key] ?? '') ?? defaultValue;
  }

  return int.tryParse(String.fromEnvironment(key)) ?? defaultValue;
}

/// Get environment variable as double.
double? envDouble(String key, [double? defaultValue]) {
  if (kDebugMode) {
    return double.tryParse(dotenv.env[key] ?? '') ?? defaultValue;
  }

  return double.tryParse(String.fromEnvironment(key)) ?? defaultValue;
}

/// Get environment variable as boolean.
// ignore: boolean_prefixes
bool? envBool(String key, [bool? defaultValue]) {
  if (kDebugMode) {
    final value = dotenv.env[key] ?? defaultValue.toString();

    return value == 'true' ? true : false;
  }

  return bool.hasEnvironment(key) ? bool.fromEnvironment(key) : defaultValue;
}
