// ignore_for_file: avoid_dynamic, avoid-dynamic

import 'package:talker_flutter/talker_flutter.dart';
import 'package:velvet_framework/core/logger/velvet_logger_channel.dart';
import 'package:velvet_framework/core/velvet_container.dart';

class TalkerVelvetLoggerChannel extends VelvetLoggerChannel {
  TalkerVelvetLoggerChannel()
      : _talkerInstance = container.registerSingleton(TalkerFlutter.init());

  final Talker _talkerInstance;

  @override
  void info(
    dynamic message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talkerInstance.info(message, exception, stackTrace);
  }

  @override
  void debug(
    dynamic message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talkerInstance.debug(message, exception, stackTrace);
  }

  @override
  void error(
    dynamic message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talkerInstance.error(message, exception, stackTrace);
  }

  @override
  void warning(
    dynamic message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talkerInstance.warning(message, exception, stackTrace);
  }

  @override
  void critical(
    dynamic message, [
    Object? exception,
    StackTrace? stackTrace,
  ]) {
    _talkerInstance.critical(message, exception, stackTrace);
  }
}
