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
export './contracts/factory_wrapper_contract.dart';
export './contracts/use_case_contract.dart';
// @endindex

// @index(['./core/**/(*.dart)','!./core/**/*.g.dart', '!./core/**/_*.dart'], f => `export '${f.path}.dart';`)
export './core/config/contracts/velvet_config_manager_contract.dart';
export './core/config/velvet_config_manager.dart';
export './core/config/velvet_config.dart';
export './core/container/contracts/velvet_container_contract.dart';
export './core/container/mixins/proxy_to_get_it_mixin.dart';
export './core/container/velvet_container.dart';
export './core/env/config/dynamic_env_config.dart';
export './core/env/contracts/env_config_contract.dart';
export './core/env/events/env_read_event.dart';
export './core/env/hooks/use_load_env_on_reassemble.dart';
export './core/event/contracts/velvet_event_bus_contract.dart';
export './core/event/hooks/use_event_listener.dart';
export './core/event/utils/event.dart';
export './core/event/utils/listen.dart';
export './core/event/velvet_event_bus.dart';
export './core/event/velvet_event.dart';
export './core/event/velvet_observer_from_events.dart';
export './core/event/velvet_observer.dart';
export './core/event/velvet_subject.dart';
export './core/logger/channels/logging_velvet_logger_channel.dart';
export './core/logger/channels/talker_velvet_logger_channel.dart';
export './core/logger/config/default_velvet_logger_config.dart';
export './core/logger/contracts/velvet_logger_config_contract.dart';
export './core/logger/contracts/velvet_logger_contract.dart';
export './core/logger/enums/velvet_log_severity_enum.dart';
export './core/logger/velvet_logger_channel.dart';
export './core/logger/velvet_logger.dart';
export './core/plugin/contracts/velvet_plugin_manager_contract.dart';
export './core/plugin/events/plugin_manager/velvet_plugin_manager_after_run_boot.dart';
export './core/plugin/events/plugin_manager/velvet_plugin_manager_after_run_register.dart';
export './core/plugin/events/plugin_manager/velvet_plugin_manager_before_run_boot.dart';
export './core/plugin/events/plugin_manager/velvet_plugin_manager_before_run_register.dart';
export './core/plugin/events/plugin/velvet_plugin_after_boot.dart';
export './core/plugin/events/plugin/velvet_plugin_after_register.dart';
export './core/plugin/events/plugin/velvet_plugin_before_boot.dart';
export './core/plugin/events/plugin/velvet_plugin_before_register.dart';
export './core/plugin/extensions/observe_pattern_on_velvet_plugin_manager.dart';
export './core/plugin/observers/velvet_plugin_manager_observer.dart';
export './core/plugin/observers/velvet_plugin_observer.dart';
export './core/plugin/subjects/velvet_plugin_manager_subject.dart';
export './core/plugin/subjects/velvet_plugin_subject.dart';
export './core/plugin/velvet_plugin_manager.dart';
export './core/plugin/velvet_plugin.dart';
export './core/utils/config_manager.dart';
export './core/utils/config.dart';
export './core/utils/create_velvet_app.dart';
export './core/utils/env.dart';
export './core/utils/kernel.dart';
export './core/utils/logger.dart';
export './core/utils/navigator_key.dart';
export './core/utils/resolution_key.dart';
export './core/velvet_container.dart';
// @endindex

// @index(['./data_loader/**/(*.dart)','!./data_loader/**/*.g.dart', '!./data_loader/**/_*.dart'], f => `export '${f.path}.dart';`)
export './data_loader/builders/constructor_data_loader_error_builder.dart';
export './data_loader/builders/constructor_data_loader_loading_builder.dart';
export './data_loader/builders/default_data_loader_error_builder.dart';
export './data_loader/builders/default_data_loader_loading_builder.dart';
export './data_loader/contracts/data_loader_error_builder_contract.dart';
export './data_loader/contracts/data_loader_loading_builder_contract.dart';
export './data_loader/data_loader_plugin.dart';
export './data_loader/data_loader.dart';
export './data_loader/extensions/data_loader_on_container_extension.dart';
export './data_loader/extensions/data_loader_on_kernel_contract_extension.dart';
export './data_loader/interacts_with_success_data.dart';
export './data_loader/views/default_data_loader_error_view.dart';
// @endindex

// @index(['./error_handling/**/(*.dart)','!./error_handling/**/*.g.dart', '!./error_handling/**/_*.dart'], f => `export '${f.path}.dart';`)
export './error_handling/bag_exception.dart';
export './error_handling/config/default_error_handling_config.dart';
export './error_handling/contracts/error_handling_config_contract.dart';
export './error_handling/error_handling_plugin.dart';
export './error_handling/exception_to_message_resolver.dart';
export './error_handling/helper/stack_trace_parser.dart';
export './error_handling/renderable_exception.dart';
export './error_handling/types.dart';
// @endindex

// @index(['./event/**/(*.dart)','!./event/**/*.g.dart', '!./event/**/_*.dart'], f => `export '${f.path}.dart';`)

// @endindex

// @index(['./form/**/(*.dart)','!./form/**/*.g.dart', '!./form/**/_*.dart', '!./form/**/*.freezed.dart'], f => `export '${f.path}.dart';`)
export './form/config/default_form_config.dart';
export './form/contracts/form_config_contract.dart';
export './form/form_plugin.dart';
export './form/hooks/use_bool_input/use_bool_input.dart';
export './form/hooks/use_form/form_options.dart';
export './form/hooks/use_form/use_form.dart';
export './form/hooks/use_input/input_options.dart';
export './form/hooks/use_input/use_input.dart';
export './form/hooks/use_text_input/use_text_input.dart';
// @endindex

// @index(['./hooks/**/(*.dart)','!./hooks/**/*.g.dart', '!./hooks/**/_*.dart'], f => `export '${f.path}.dart';`)
export './hooks/use_effect_once/use_effect_once.dart';
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
export './http/contracts/http_request_no_content_contract.dart';
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
export './kernel/contracts/kernel_contract.dart';
export './kernel/events/hide_loading_widget_event.dart';
export './kernel/exceptions/kernel_is_already_running_exception.dart';
export './kernel/kernel.dart';
export './kernel/loaders/velvet_plugin_loader.dart';
export './kernel/loaders/velvet_plugin_loader.velvet.dart';
export './kernel/mixins/setup_config_manager_mixin.dart';
export './kernel/mixins/setup_container_composition_mixin.dart';
export './kernel/mixins/setup_env_mixin.dart';
export './kernel/mixins/setup_event_but_mixin.dart';
export './kernel/mixins/setup_logger_mixin.dart';
export './kernel/mixins/setup_plugin_manager_mixin.dart';
export './kernel/mixins/setup_riverpod_mixin.dart';
export './kernel/mixins/setup_widgets_mixin.dart';
export './kernel/widgets/components/stack_trace_main_error_alert.dart';
export './kernel/widgets/components/stack_trace_parsed_line_info.dart';
export './kernel/widgets/components/stack_trace_viewer.dart';
export './kernel/widgets/components/strack_trace_parsed_line_row.dart';
export './kernel/widgets/kernel_app_widget.dart';
export './kernel/widgets/kernel_error_debug_widget.dart';
export './kernel/widgets/kernel_error_widget.dart';
export './kernel/widgets/kernel_loading_widget.dart';
export './kernel/widgets/kernel_widget.dart';
// @endindex

// @index(['./router/**/(*.dart)','!./router/**/*.g.dart', '!./router/**/_*.dart'], f => `export '${f.path}.dart';`)
export './router/config/default_velvet_router_config.dart';
export './router/contracts/velvet_router_config_contract.dart';
export './router/contracts/velvet_router_contract.dart';
export './router/enums/router_page_transition_enum.dart';
export './router/middleware/velvet_middleware_pipeline.dart';
export './router/middleware/velvet_middleware.dart';
export './router/mixins/velvet_route_page_builder_mixin.dart';
export './router/observers/hide_loading_widget_observer.dart';
export './router/router_plugin.dart';
export './router/velvet_route.dart';
// @endindex

// @index(['./store/**/(*.dart)','!./store/**/*.g.dart','!./store/**/_*.dart','!./store/**/store.dart'], f => `export '${f.path}.dart';`)
export './store/adapters/shared_preferences_simple_store.dart';
export './store/contracts/store_cleaner_adapter_contract.dart';
export './store/contracts/store_contract.dart';
export './store/contracts/store_simple_adapter_contract.dart';
export './store/extensions/store_on_container_extension.dart';
export './store/storable.dart';
export './store/store_plugin.dart';
// @endindex

// @index(['./talker/**/(*.dart)','!./talker/**/*.g.dart','!./talker/**/_*.dart'], f => `export '${f.path}.dart';`)

// @endindex

// @index(['./theme/**/(*.dart)','!./theme/**/*.g.dart','!./theme/**/*.tailor.dart','!./theme/**/_*.dart'], f => `export '${f.path}.dart';`)
export './theme/config/default_theme_config.dart';
export './theme/contracts/theme_config_contract.dart';
export './theme/contracts/theme_definition_contract.dart';
export './theme/extensions/theme_definition_build_context_extension.dart';
export './theme/extensions/theme_definition_theme_data_extension.dart';
export './theme/hooks/use_create_dark_theme.dart';
export './theme/hooks/use_create_light_theme.dart';
export './theme/providers/theme_dark_provider.dart';
export './theme/providers/theme_data_provider.dart';
export './theme/providers/theme_light_provider.dart';
export './theme/theme_definition.dart';
export './theme/theme_plugin.dart';
export './theme/themes/wireframe/wireframe_dark.dart';
export './theme/themes/wireframe/wireframe_light.dart';
// @endindex

// @index(['./translation/**/(*.dart)','!./translation/**/*.g.dart', '!./translation/**/_*.dart'], f => `export '${f.path}.dart';`)
export './translation/adapters/flutter_i18n_translator_adapter.dart';
export './translation/config/default_translation_config.dart';
export './translation/contracts/translation_config_contract.dart';
export './translation/contracts/translator_adapter_contract.dart';
export './translation/contracts/translator_contract.dart';
export './translation/events/locale_loaded_from_os.dart';
export './translation/events/locale_loaded_from_store.dart';
export './translation/exceptions/locale_not_available_exception.dart';
export './translation/extensions/translator_extension.dart';
export './translation/hooks/use_locale_switcher.dart';
export './translation/providers/translator_adapter_provider.dart';
export './translation/providers/translator_provider.dart';
export './translation/storables/locale_storable.dart';
export './translation/translate.dart';
export './translation/translation_plugin.dart';
export './translation/translator.dart';
// @endindex

// @index(['./utils/**/(*.dart)','!./utils/**/*.g.dart', '!./utils/**/_*.dart'], f => `export '${f.path}.dart';`)
export './utils/callback_manager.dart';
export './utils/kernel_context.dart';
export './utils/navigator_context.dart';
export './utils/riverpod_container.dart';
// @endindex

// @index(['./validation/**/(*.dart)','!./validation/**/*.g.dart', '!./validation/**/_*.dart'], f => `export '${f.path}.dart';`)
export './validation/rule.dart';
export './validation/rules/bool/must_be_false_rule.dart';
export './validation/rules/bool/must_be_true_rule.dart';
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
