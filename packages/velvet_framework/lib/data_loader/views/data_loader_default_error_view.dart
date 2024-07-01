import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:velvet_framework/data_loader/data_loader_error_view.dart';
import 'package:velvet_framework/translation/extensions/translator_extension.dart';

class DataLoaderDefaultErrorView extends DataLoaderErrorView {
  const DataLoaderDefaultErrorView({
    super.key,
    required super.error,
    required super.stackTrace,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(context.translate('velvet.data_loader.error_view.title')),
          Text(error.toString()),
        ],
      ),
    );
  }
}
