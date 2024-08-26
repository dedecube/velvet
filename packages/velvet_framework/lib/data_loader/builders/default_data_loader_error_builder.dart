import 'package:flutter/foundation.dart';
import 'package:velvet_framework/data_loader/contracts/data_loader_error_builder_contract.dart';
import 'package:velvet_framework/data_loader/views/default_data_loader_error_view.dart';
import 'package:velvet_framework/kernel/widgets/kernel_error_debug_widget.dart';

class DefaultDataLoaderErrorBuilder extends DataLoaderErrorBuilderContract {
  @override
  DataLoaderErrorBuilder get factory {
    return (error, stackTrace) {
      if (kDebugMode) {
        return KernelErrorDebugWidget(
          error: error,
          stackTrace: stackTrace,
        );
      }

      return DefaultDataLoaderErrorView(
        error: error,
        stackTrace: stackTrace,
      );
    };
  }
}
