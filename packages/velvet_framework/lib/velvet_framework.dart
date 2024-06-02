library velvet_framework;

/// Vendor Exports
///
/// Export all the necessary packages for the framework
/// This prevents the need to import each package individually
/// and makes it easier to use the framework

export 'package:envied/envied.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart';
export 'package:go_router/go_router.dart';
export 'package:hooks_riverpod/hooks_riverpod.dart';
export 'package:velvet_framework/dev_inspector/adapters/dev_inspector_talker_adapter.dart';

/// DevInspector

export 'package:velvet_framework/dev_inspector/contracts/dev_inspector_adapter_contract.dart';
export 'package:velvet_framework/dev_inspector/contracts/dev_inspector_config_contract.dart';
export 'package:velvet_framework/dev_inspector/dev_inspector.dart';
export 'package:velvet_framework/dev_inspector/providers/dev_inspector_adapter_provider.dart';
export 'package:velvet_framework/dev_inspector/providers/dev_inspector_config_provider.dart';
export 'package:velvet_framework/dev_inspector/providers/dev_inspector_provider.dart';

/// Hooks

export 'package:velvet_framework/hooks/use_post_build_callback/use_post_build_callback.dart';
export 'package:velvet_framework/hooks/use_provider/use_provider.dart';

/// Kernel

export 'package:velvet_framework/kernel/exceptions/kernel_is_already_running_exception.dart';
export 'package:velvet_framework/kernel/kernel.dart';
export 'package:velvet_framework/kernel/providers/kernel_bootstrap_provider.dart';
export 'package:velvet_framework/kernel/widgets/kernel_loading_widget.dart';
export 'package:velvet_framework/kernel/widgets/kernel_widget.dart';
export 'package:velvet_framework/kernel/widgets/kerner_app_widget.dart';
export 'package:velvet_framework/kernel/widgets/kerner_error_widget.dart';
export 'package:velvet_framework/router/base_route.dart';

/// Router

export 'package:velvet_framework/router/contracts/middleware_contract.dart';
export 'package:velvet_framework/router/contracts/router_config_contract.dart';
export 'package:velvet_framework/router/enums/router_page_transition_enum.dart';
export 'package:velvet_framework/router/middleware/middleware_operation.dart';
export 'package:velvet_framework/router/middleware/middleware_pipeline.dart';
export 'package:velvet_framework/router/mixins/resolves_page.dart';
export 'package:velvet_framework/router/mixins/transitions/fade_page_transition.dart';
export 'package:velvet_framework/router/mixins/transitions/material_page_transition.dart';
export 'package:velvet_framework/router/mixins/transitions/none_page_transition.dart';
export 'package:velvet_framework/router/providers/router_config_provider.dart';
export 'package:velvet_framework/router/providers/router_provider.dart';

/// Store

export 'package:velvet_framework/store/contracts/store_cleaner_adapter_contract.dart';
export 'package:velvet_framework/store/contracts/store_simple_adapter_contract.dart';
export 'package:velvet_framework/store/providers/store_provider.dart';
export 'package:velvet_framework/store/storable.dart';

/// Talker

export 'package:velvet_framework/talker/talker_global_instance.dart';

/// Theme

export 'package:velvet_framework/theme/contracts/theme_definition_contract.dart';
export 'package:velvet_framework/theme/extensions/theme_definition_build_context_extension.dart';
export 'package:velvet_framework/theme/extensions/theme_definition_theme_data_extension.dart';
export 'package:velvet_framework/theme/providers/theme_dark_provider.dart';
export 'package:velvet_framework/theme/providers/theme_data_provider.dart';
export 'package:velvet_framework/theme/providers/theme_light_provider.dart';
export 'package:velvet_framework/theme/theme_definition.dart';

/// Translation

export 'package:velvet_framework/translation/adapters/flutter_i18n_translator_adapter.dart';
export 'package:velvet_framework/translation/contracts/translation_config_contract.dart';
export 'package:velvet_framework/translation/contracts/translator_adapter_contract.dart';
export 'package:velvet_framework/translation/extensions/translator_extension.dart';
export 'package:velvet_framework/translation/hooks/use_locale_switcher.dart';
export 'package:velvet_framework/translation/providers/translation_config_provider.dart';
export 'package:velvet_framework/translation/providers/translator_adapter_provider.dart';
export 'package:velvet_framework/translation/providers/translator_provider.dart';
export 'package:velvet_framework/translation/translator.dart';

/// Utils

export 'package:velvet_framework/utils/container.dart';

/// Widgets

export 'package:velvet_framework/widgets/pre_renderer.dart';
