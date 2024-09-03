import 'package:flutter/material.dart';

import 'package:velvet_framework/src/translation/extensions/translator_extension.dart';

class DefaultDataLoaderErrorView extends StatelessWidget {
  const DefaultDataLoaderErrorView({
    super.key,
    required this.error,
    required this.stackTrace,
  });

  final Object error;

  final StackTrace stackTrace;

  @override
  Widget build(BuildContext context) {
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
