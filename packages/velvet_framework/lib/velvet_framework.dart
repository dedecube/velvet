library velvet_framework;

/// Vendor
///
/// This is the vendor library that contains all the dependencies that are used in the framework.

export 'package:dio/dio.dart';
export 'package:flutter_hooks/flutter_hooks.dart';
export 'package:go_router/go_router.dart';
export 'package:hooks_riverpod/hooks_riverpod.dart'; // internally exports flutter_riverpod and riverpod

/// Velvet Framework
///
/// This is the core library of the framework that contains all the necessary classes and utilities to build a Flutter application.

// @index('./**/exports.dart', f => `export '${f.path}.dart';`)
export './dev_inspector/exports.dart';
export './hooks/exports.dart';
export './http/exports.dart';
export './kernel/exports.dart';
export './router/exports.dart';
export './store/exports.dart';
export './talker/exports.dart';
export './theme/exports.dart';
export './translation/exports.dart';
export './utils/exports.dart';
export './widgets/exports.dart';
// @endindex
