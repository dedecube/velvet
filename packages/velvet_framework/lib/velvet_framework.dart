library velvet_framework;

/// Vendor
/// 
/// This is the vendor library that contains all the dependencies that are used in the framework.
export 'package:dio/dio.dart';
export 'package:flutter_hooks/flutter_hooks.dart';
export 'package:hooks_riverpod/hooks_riverpod.dart'; // internally exports flutter_riverpod and riverpod
export 'package:go_router/go_router.dart';

/// Types

export 'package:velvet_framework/types.dart';

/// DevInspector

export 'package:velvet_framework/dev_inspector/adapters/dev_inspector_talker_adapter.dart';
export 'package:velvet_framework/dev_inspector/contracts/dev_inspector_adapter_contract.dart';
export 'package:velvet_framework/dev_inspector/contracts/dev_inspector_config_contract.dart';
export 'package:velvet_framework/dev_inspector/dev_inspector.dart';
export 'package:velvet_framework/dev_inspector/providers/dev_inspector_adapter_provider.dart';
export 'package:velvet_framework/dev_inspector/providers/dev_inspector_config_provider.dart';
export 'package:velvet_framework/dev_inspector/providers/dev_inspector_provider.dart';

/// Hooks

export 'package:velvet_framework/hooks/use_post_build_callback/use_post_build_callback.dart';
export 'package:velvet_framework/hooks/use_provider/use_provider.dart';
export 'package:velvet_framework/hooks/use_form_state/use_form_state.dart';
export 'package:velvet_framework/hooks/use_input_state/use_input_state.dart';

/// Http

export 'package:velvet_framework/http/contracts/http_request_bad_response_handler.dart';
export 'package:velvet_framework/http/contracts/http_exception_handler_contract.dart';
export 'package:velvet_framework/http/contracts/http_request_contract.dart';
export 'package:velvet_framework/http/contracts/http_request_map_contract.dart';
export 'package:velvet_framework/http/contracts/http_response_mapper_contract.dart';
export 'package:velvet_framework/http/contracts/http_request_custom_handling_contract.dart';
export 'package:velvet_framework/http/contracts/http_request_list_contract.dart';
export 'package:velvet_framework/http/enums/http_request_method_enum.dart';
export 'package:velvet_framework/http/http_exception_handler.dart';
export 'package:velvet_framework/http/exceptions/http_request/canceled_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/unknown_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/413_payload_too_large_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/409_conflict_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/422_unprocessable_content_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/403_forbidden_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/400_bad_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/410_gone_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/401_unauthorized_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/429_too_many_requests_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/406_not_accetable_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/402_payment_required_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/405_method_not_allowed_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/4xx/404_not_found_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/connection_timeout_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/send_timeout_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/receive_timeout_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/bad_certificate_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/5xx/502_bad_gateway_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_request/5xx/500_internal_server_error_http_request_exception.dart';
export 'package:velvet_framework/http/exceptions/http_response_parse_exception.dart';
export 'package:velvet_framework/http/http_response.dart';
export 'package:velvet_framework/http/http_config.dart';
export 'package:velvet_framework/http/http.dart';

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

export 'package:velvet_framework/store/adapters/shared_preferences_simple_store.dart';
export 'package:velvet_framework/store/contracts/store_cleaner_adapter_contract.dart';
export 'package:velvet_framework/store/contracts/store_contract.dart';
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
