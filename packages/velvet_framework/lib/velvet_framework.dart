library velvet_framework;

/// **************************************************************************
/// Vendor
/// **************************************************************************
///
/// This is the vendor library that contains all the dependencies that are used in the framework.

export 'package:dio/dio.dart';
export 'package:flutter_hooks/flutter_hooks.dart';
export 'package:go_router/go_router.dart';
export 'package:hooks_riverpod/hooks_riverpod.dart'; // internally exports flutter_riverpod and riverpod
export 'package:velvet_support/velvet_support.dart';

/// **************************************************************************
/// Velvet Framework
/// **************************************************************************
///
/// This is the core library of the framework that contains all the necessary classes and utilities to build a Flutter application.
///
/// In order to generate the file, run the following command:
// ```
// npx vscode-generate-index-standalone packages/velvet_framework/lib/
// ```

// @index(['./contracts/**/(*.dart)','!./contracts/**/*.g.dart', '!./contracts/**/_*.dart'], f => `export '${f.path}.dart';`)
export './contracts/use_case_contract.dart';
export './contracts/velvet_plugin_contract.dart';
// @endindex

// @index(['./data_loader/**/(*.dart)','!./data_loader/**/*.g.dart', '!./data_loader/**/_*.dart'], f => `export '${f.path}.dart';`)
export './data_loader/data_loader_error_view.dart';
export './data_loader/data_loader_loading_view.dart';
export './data_loader/data_loader_page.dart';
export './data_loader/data_loader_success_view.dart';
export './data_loader/data_loader.dart';
export './data_loader/providers/data_loader_error_view_provider.dart';
export './data_loader/providers/data_loader_loading_view_provider.dart';
export './data_loader/views/data_loader_default_error_view.dart';
export './data_loader/views/data_loader_default_loading_view.dart';
// @endindex

// @index(['./dev_inspector/**/(*.dart)','!./dev_inspector/**/*.g.dart', '!./dev_inspector/**/_*.dart'], f => `export '${f.path}.dart';`)
export './dev_inspector/adapters/dev_inspector_talker_adapter.dart';
export './dev_inspector/contracts/dev_inspector_adapter_contract.dart';
export './dev_inspector/contracts/dev_inspector_config_contract.dart';
export './dev_inspector/dev_inspector.dart';
export './dev_inspector/providers/dev_inspector_adapter_provider.dart';
export './dev_inspector/providers/dev_inspector_config_provider.dart';
export './dev_inspector/providers/dev_inspector_provider.dart';
// @endindex

// @index(['./error_handling/**/(*.dart)','!./error_handling/**/*.g.dart', '!./error_handling/**/_*.dart'], f => `export '${f.path}.dart';`)
export './error_handling/bag_exception.dart';
export './error_handling/contracts/error_handling_config_contract.dart';
export './error_handling/contracts/renderable_exception_contract.dart';
export './error_handling/exception_to_message_resolver.dart';
export './error_handling/providers/error_handling_config_provider.dart';
export './error_handling/types.dart';
// @endindex

// @index(['./event/**/(*.dart)','!./event/**/*.g.dart', '!./event/**/_*.dart'], f => `export '${f.path}.dart';`)
export './event/contracts/event_contract.dart';
export './event/event_bus.dart';
export './event/hooks/use_event_listener.dart';
export './event/providers/event_bus_provider.dart';
export './event/utils/event.dart';
export './event/utils/listen.dart';
// @endindex

// @index(['./form/**/(*.dart)','!./form/**/*.g.dart', '!./form/**/_*.dart', '!./form/**/*.freezed.dart'], f => `export '${f.path}.dart';`)
export './form/contracts/form_config_contract.dart';
export './form/hooks/use_form_state/form_options.dart';
export './form/hooks/use_form_state/use_form.dart';
export './form/hooks/use_input_state/input_options.dart';
export './form/hooks/use_input_state/use_input.dart';
export './form/providers/form_config_provider.dart';
// @endindex

// @index(['./hooks/**/(*.dart)','!./hooks/**/*.g.dart', '!./hooks/**/_*.dart'], f => `export '${f.path}.dart';`)
export './hooks/use_post_build_callback/use_post_build_callback.dart';
export './hooks/use_provider/use_provider.dart';
// @endindex

// @index(['./http/**/(*.dart)','!./http/**/*.g.dart', '!./http/**/_*.dart'], f => `export '${f.path}.dart';`)
export './http/contracts/http_exception_handler_contract.dart';
export './http/contracts/http_request_bad_response_handler_contract.dart';
export './http/contracts/http_request_contract.dart';
export './http/contracts/http_request_custom_handling_contract.dart';
export './http/contracts/http_request_list_contract.dart';
export './http/contracts/http_request_map_contract.dart';
export './http/contracts/http_response_mapper_contract.dart';
export './http/enums/dio_request_options_extra_field_enum.dart';
export './http/enums/http_request_method_enum.dart';
export './http/exceptions/http_request/4xx/bad_http_request_exception.dart';
export './http/exceptions/http_request/4xx/conflict_http_request_exception.dart';
export './http/exceptions/http_request/4xx/forbidden_http_request_exception.dart';
export './http/exceptions/http_request/4xx/gone_http_request_exception.dart';
export './http/exceptions/http_request/4xx/method_not_allowed_http_request_exception.dart';
export './http/exceptions/http_request/4xx/not_acceptable_http_request_exception.dart';
export './http/exceptions/http_request/4xx/not_found_http_request_exception.dart';
export './http/exceptions/http_request/4xx/payload_too_large_http_request_exception.dart';
export './http/exceptions/http_request/4xx/payment_required_http_request_exception.dart';
export './http/exceptions/http_request/4xx/too_many_requests_http_request_exception.dart';
export './http/exceptions/http_request/4xx/unauthorized_http_request_exception.dart';
export './http/exceptions/http_request/4xx/unprocessable_content_http_request_exception.dart';
export './http/exceptions/http_request/5xx/bad_gateway_http_request_exception.dart';
export './http/exceptions/http_request/5xx/internal_server_error_http_request_exception.dart';
export './http/exceptions/http_request/bad_certificate_http_request_exception.dart';
export './http/exceptions/http_request/canceled_http_request_exception.dart';
export './http/exceptions/http_request/connection_error_http_request_exception.dart';
export './http/exceptions/http_request/connection_timeout_http_request_exception.dart';
export './http/exceptions/http_request/http_request_bag_exception.dart';
export './http/exceptions/http_request/http_request_exception.dart';
export './http/exceptions/http_request/receive_timeout_http_request_exception.dart';
export './http/exceptions/http_request/send_timeout_http_request_exception.dart';
export './http/exceptions/http_request/unknown_http_request_exception.dart';
export './http/exceptions/http_response_parse_exception.dart';
export './http/extensions/dio_request_options_has_http_request.dart';
export './http/http_config.dart';
export './http/http_exception_handler.dart';
export './http/http_response.dart';
export './http/http.dart';
// @endindex

// @index(['./kernel/**/(*.dart)','!./kernel/**/*.g.dart', '!./kernel/**/_*.dart'], f => `export '${f.path}.dart';`)
export './kernel/events/hide_loading_widget_event.dart';
export './kernel/exceptions/kernel_is_already_running_exception.dart';
export './kernel/hooks/use_dark_theme.dart';
export './kernel/hooks/use_light_theme.dart';
export './kernel/kernel.dart';
export './kernel/providers/kernel_bootstrap_provider.dart';
export './kernel/providers/kernel_provider.dart';
export './kernel/widgets/kernel_app_widget.dart';
export './kernel/widgets/kernel_error_widget.dart';
export './kernel/widgets/kernel_loading_widget.dart';
export './kernel/widgets/kernel_widget.dart';
// @endindex

// @index(['./router/**/(*.dart)','!./router/**/*.g.dart', '!./router/**/_*.dart'], f => `export '${f.path}.dart';`)
export './router/base_route.dart';
export './router/contracts/middleware_contract.dart';
export './router/contracts/router_config_contract.dart';
export './router/enums/router_page_transition_enum.dart';
export './router/middleware/middleware_operation.dart';
export './router/middleware/middleware_pipeline.dart';
export './router/mixins/base_route_page_builder_mixin.dart';
export './router/mixins/resolves_page.dart';
export './router/mixins/transitions/fade_page_transition.dart';
export './router/mixins/transitions/material_page_transition.dart';
export './router/mixins/transitions/none_page_transition.dart';
export './router/observers/hide_loading_widget_observer.dart';
export './router/providers/router_config_provider.dart';
export './router/providers/router_error_builder_provider.dart';
export './router/providers/router_provider.dart';
export './router/providers/routes_provider.dart';
// @endindex

// @index(['./store/**/(*.dart)','!./store/**/*.g.dart','!./store/**/_*.dart','!./store/**/store.dart'], f => `export '${f.path}.dart';`)
export './store/adapters/shared_preferences_simple_store.dart';
export './store/contracts/store_cleaner_adapter_contract.dart';
export './store/contracts/store_contract.dart';
export './store/contracts/store_simple_adapter_contract.dart';
export './store/providers/store_provider.dart';
export './store/storable.dart';
// @endindex

// @index(['./talker/**/(*.dart)','!./talker/**/*.g.dart','!./talker/**/_*.dart'], f => `export '${f.path}.dart';`)
export './talker/talker_global_instance.dart';
// @endindex

// @index(['./theme/**/(*.dart)','!./theme/**/*.g.dart','!./theme/**/*.tailor.dart','!./theme/**/_*.dart'], f => `export '${f.path}.dart';`)
export './theme/contracts/theme_config_contract.dart';
export './theme/contracts/theme_definition_contract.dart';
export './theme/extensions/theme_definition_build_context_extension.dart';
export './theme/extensions/theme_definition_theme_data_extension.dart';
export './theme/providers/theme_config_provider.dart';
export './theme/providers/theme_dark_provider.dart';
export './theme/providers/theme_data_provider.dart';
export './theme/providers/theme_light_provider.dart';
export './theme/theme_definition.dart';
export './theme/themes/wireframe/wireframe_dark.dart';
export './theme/themes/wireframe/wireframe_light.dart';
// @endindex

// @index(['./translation/**/(*.dart)','!./translation/**/*.g.dart', '!./translation/**/_*.dart'], f => `export '${f.path}.dart';`)
export './translation/adapters/flutter_i18n_translator_adapter.dart';
export './translation/bootstrap/translation_locale_from_store_bootstrap.dart';
export './translation/contracts/translation_config_contract.dart';
export './translation/contracts/translator_adapter_contract.dart';
export './translation/events/locale_loaded_from_os.dart';
export './translation/events/locale_loaded_from_store.dart';
export './translation/exceptions/locale_not_available_exception.dart';
export './translation/extensions/translator_extension.dart';
export './translation/hooks/use_locale_switcher.dart';
export './translation/providers/translation_config_provider.dart';
export './translation/providers/translator_adapter_provider.dart';
export './translation/providers/translator_provider.dart';
export './translation/storables/locale_storable.dart';
export './translation/translate.dart';
export './translation/translator.dart';
// @endindex

// @index(['./utils/**/(*.dart)','!./utils/**/*.g.dart', '!./utils/**/_*.dart'], f => `export '${f.path}.dart';`)
export './utils/container.dart';
export './utils/kernel_context.dart';
export './utils/navigator_context.dart';
// @endindex

// @index(['./validation/**/(*.dart)','!./validation/**/*.g.dart', '!./validation/**/_*.dart'], f => `export '${f.path}.dart';`)
export './validation/rule.dart';
export './validation/rules/confirmation_rule.dart';
export './validation/rules/email_rule.dart';
export './validation/rules/fixed_length_rule.dart';
export './validation/rules/max_length_rule.dart';
export './validation/rules/min_length_rule.dart';
export './validation/rules/required_string_rule.dart';
export './validation/validator.dart';
// @endindex

// @index(['./widgets/**/(*.dart)','!./widgets/**/*.g.dart', '!./widgets/**/_*.dart'], f => `export '${f.path}.dart';`)
export './widgets/pre_renderer.dart';
// @endindex
