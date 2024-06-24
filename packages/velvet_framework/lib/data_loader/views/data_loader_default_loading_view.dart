import 'package:flutter/material.dart';
import 'package:velvet_framework/data_loader/data_loader_loading_view.dart';
import 'package:velvet_framework/velvet_framework.dart';

class DataLoaderDefaultLoadingView extends DataLoaderLoadingView {
  const DataLoaderDefaultLoadingView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
