import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Resolves the ProviderContainer from the context and reads a provider from it.
///
/// This is a hook version of ProviderContainer.read.
///
/// The [providerToRead] parameter specifies the provider to be read.
/// The [listen] parameter determines whether the provider should be listened to for changes.
/// The [context] parameter is an optional parameter that specifies the build context. If not provided, it will be inferred from the widget tree.
///
/// Returns the value of the provider.
T useProvider<T>(
  ProviderBase<T> providerToRead, {
  bool listen = true,
  BuildContext? context,
}) {
  context ??= useContext();

  return ProviderScope.containerOf(context, listen: listen)
      .read<T>(providerToRead);
}
