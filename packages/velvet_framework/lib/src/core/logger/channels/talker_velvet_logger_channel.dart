// ignore_for_file: avoid_dynamic, avoid-dynamic

import 'package:talker_flutter/talker_flutter.dart';
import 'package:velvet_framework/src/core/logger/velvet_logger_channel.dart';
import 'package:velvet_framework/src/core/velvet_container.dart';

class TalkerVelvetLoggerChannel extends VelvetLoggerChannel {
  TalkerVelvetLoggerChannel()
      : _talkerInstance = container.registerSingleton(TalkerFlutter.init());

  final Talker _talkerInstance;

  @override
  void info(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    _talkerInstance.info(message, error, stackTrace);
  }

  @override
  void debug(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    _talkerInstance.debug(message, error, stackTrace);
  }

  @override
  void error(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    _talkerInstance.error(message, error, stackTrace);
  }

  @override
  void warning(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    _talkerInstance.warning(message, error, stackTrace);
  }

  @override
  void critical(
    dynamic message, [
    Object? error,
    StackTrace? stackTrace,
  ]) {
    _talkerInstance.critical(message, error, stackTrace);
  }
}
