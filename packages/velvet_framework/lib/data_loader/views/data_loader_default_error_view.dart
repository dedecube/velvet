import 'package:flutter/material.dart';
import 'package:velvet_framework/data_loader/data_loader_error_view.dart';
import 'package:velvet_framework/velvet_framework.dart';

class DataLoaderDefaultErrorView extends DataLoaderErrorView {
  const DataLoaderDefaultErrorView({
    super.key,
    required super.error,
    required super.stackTrack,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ignore: velvet_check_translation_key_does_exist
          Text(context.translate('velvet.data_loader.error_view.title')),
          Text(error.toString()),
        ],
      ),
    );
  }
}
