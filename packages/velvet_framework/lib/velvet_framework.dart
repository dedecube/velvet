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

// @index(['./src/**/(*.dart)', '!./src/**/*.g.dart', '!./src/**/_*.dart', '!./src/**/*.velvet.dart', '!./src/**/*.tailor.dart', '!./src/**/*.freezed.dart'], f => `export '${f.path}.dart';`)
export './src/contracts/factory_wrapper_contract.dart';
export './src/contracts/use_case_contract.dart';
export './src/core/config/contracts/velvet_config_manager_contract.dart';
export './src/core/config/velvet_config_manager.dart';
export './src/core/config/velvet_config.dart';
export './src/core/container/contracts/velvet_container_contract.dart';
export './src/core/container/mixins/proxy_to_get_it_mixin.dart';
export './src/core/container/velvet_container.dart';
export './src/core/env/config/dynamic_env_config.dart';
export './src/core/env/contracts/env_config_contract.dart';
export './src/core/env/events/env_read_event.dart';
export './src/core/env/hooks/use_load_env_on_reassemble.dart';
export './src/core/event/contracts/velvet_event_bus_contract.dart';
export './src/core/event/hooks/use_event_listener.dart';
export './src/core/event/utils/event.dart';
export './src/core/event/utils/listen.dart';
export './src/core/event/velvet_event_bus.dart';
export './src/core/event/velvet_event.dart';
export './src/core/event/velvet_observer_from_events.dart';
export './src/core/event/velvet_observer.dart';
export './src/core/event/velvet_subject.dart';
export './src/core/logger/channels/logging_velvet_logger_channel.dart';
export './src/core/logger/channels/talker_velvet_logger_channel.dart';
export './src/core/logger/config/default_velvet_logger_config.dart';
export './src/core/logger/contracts/velvet_logger_config_contract.dart';
export './src/core/logger/contracts/velvet_logger_contract.dart';
export './src/core/logger/enums/velvet_log_severity_enum.dart';
export './src/core/logger/velvet_logger_channel.dart';
export './src/core/logger/velvet_logger.dart';
export './src/core/plugin/contracts/velvet_plugin_manager_contract.dart';
export './src/core/plugin/events/plugin_manager/velvet_plugin_manager_after_run_boot.dart';
export './src/core/plugin/events/plugin_manager/velvet_plugin_manager_after_run_register.dart';
export './src/core/plugin/events/plugin_manager/velvet_plugin_manager_before_run_boot.dart';
export './src/core/plugin/events/plugin_manager/velvet_plugin_manager_before_run_register.dart';
export './src/core/plugin/events/plugin/velvet_plugin_after_boot.dart';
export './src/core/plugin/events/plugin/velvet_plugin_after_register.dart';
export './src/core/plugin/events/plugin/velvet_plugin_before_boot.dart';
export './src/core/plugin/events/plugin/velvet_plugin_before_register.dart';
export './src/core/plugin/extensions/observe_pattern_on_velvet_plugin_manager.dart';
export './src/core/plugin/observers/velvet_plugin_manager_observer.dart';
export './src/core/plugin/observers/velvet_plugin_observer.dart';
export './src/core/plugin/subjects/velvet_plugin_manager_subject.dart';
export './src/core/plugin/subjects/velvet_plugin_subject.dart';
export './src/core/plugin/velvet_plugin_manager.dart';
export './src/core/plugin/velvet_plugin.dart';
export './src/core/utils/config_manager.dart';
export './src/core/utils/config.dart';
export './src/core/utils/create_velvet_app.dart';
export './src/core/utils/env.dart';
export './src/core/utils/kernel.dart';
export './src/core/utils/logger.dart';
export './src/core/utils/navigator_key.dart';
export './src/core/utils/resolution_key.dart';
export './src/core/velvet_container.dart';
export './src/data_loader/builders/constructor_data_loader_error_builder.dart';
export './src/data_loader/builders/constructor_data_loader_loading_builder.dart';
export './src/data_loader/builders/default_data_loader_error_builder.dart';
export './src/data_loader/builders/default_data_loader_loading_builder.dart';
export './src/data_loader/contracts/data_loader_error_builder_contract.dart';
export './src/data_loader/contracts/data_loader_loading_builder_contract.dart';
export './src/data_loader/data_loader_plugin.dart';
export './src/data_loader/data_loader.dart';
export './src/data_loader/extensions/data_loader_on_container_extension.dart';
export './src/data_loader/extensions/data_loader_on_kernel_contract_extension.dart';
export './src/data_loader/interacts_with_success_data.dart';
export './src/data_loader/views/default_data_loader_error_view.dart';
export './src/error_handling/bag_exception.dart';
export './src/error_handling/config/default_error_handling_config.dart';
export './src/error_handling/contracts/error_handling_config_contract.dart';
export './src/error_handling/error_handling_plugin.dart';
export './src/error_handling/exception_to_message_resolver.dart';
export './src/error_handling/helper/stack_trace_parser.dart';
export './src/error_handling/renderable_exception.dart';
export './src/error_handling/types.dart';
export './src/form/config/default_form_config.dart';
export './src/form/contracts/form_config_contract.dart';
export './src/form/form_plugin.dart';
export './src/form/hooks/use_bool_input/use_bool_input.dart';
export './src/form/hooks/use_form/form_options.dart';
export './src/form/hooks/use_form/use_form.dart';
export './src/form/hooks/use_input/input_options.dart';
export './src/form/hooks/use_input/use_input.dart';
export './src/form/hooks/use_text_input/use_text_input.dart';
export './src/hooks/use_effect_once/use_effect_once.dart';
export './src/hooks/use_post_build_callback/use_post_build_callback.dart';
export './src/hooks/use_provider/use_provider.dart';
export './src/http/contracts/http_exception_handler_contract.dart';
export './src/http/contracts/http_request_bad_response_handler_contract.dart';
export './src/http/contracts/http_request_custom_handling_contract.dart';
export './src/http/enums/dio_request_options_extra_field_enum.dart';
export './src/http/enums/http_request_method_enum.dart';
export './src/http/exceptions/http_request/4xx/bad_http_request_exception.dart';
export './src/http/exceptions/http_request/4xx/conflict_http_request_exception.dart';
export './src/http/exceptions/http_request/4xx/forbidden_http_request_exception.dart';
export './src/http/exceptions/http_request/4xx/gone_http_request_exception.dart';
export './src/http/exceptions/http_request/4xx/method_not_allowed_http_request_exception.dart';
export './src/http/exceptions/http_request/4xx/not_acceptable_http_request_exception.dart';
export './src/http/exceptions/http_request/4xx/not_found_http_request_exception.dart';
export './src/http/exceptions/http_request/4xx/payload_too_large_http_request_exception.dart';
export './src/http/exceptions/http_request/4xx/payment_required_http_request_exception.dart';
export './src/http/exceptions/http_request/4xx/too_many_requests_http_request_exception.dart';
export './src/http/exceptions/http_request/4xx/unauthorized_http_request_exception.dart';
export './src/http/exceptions/http_request/4xx/unprocessable_content_http_request_exception.dart';
export './src/http/exceptions/http_request/5xx/bad_gateway_http_request_exception.dart';
export './src/http/exceptions/http_request/5xx/internal_server_error_http_request_exception.dart';
export './src/http/exceptions/http_request/bad_certificate_http_request_exception.dart';
export './src/http/exceptions/http_request/canceled_http_request_exception.dart';
export './src/http/exceptions/http_request/connection_error_http_request_exception.dart';
export './src/http/exceptions/http_request/connection_timeout_http_request_exception.dart';
export './src/http/exceptions/http_request/http_request_bag_exception.dart';
export './src/http/exceptions/http_request/http_request_exception.dart';
export './src/http/exceptions/http_request/receive_timeout_http_request_exception.dart';
export './src/http/exceptions/http_request/send_timeout_http_request_exception.dart';
export './src/http/exceptions/http_request/unknown_http_request_exception.dart';
export './src/http/exceptions/http_response_parse_exception.dart';
export './src/http/exceptions/velvet_http_request_not_found_exception.dart';
export './src/http/extensions/dio_request_options_has_velvet_request.dart';
export './src/http/mixins/velvet_http_handles_list_response.dart';
export './src/http/mixins/velvet_http_handles_map_response.dart';
export './src/http/request/velvet_http_handling_no_content_response.dart';
export './src/http/request/velvet_http_request_handling_list_response.dart';
export './src/http/request/velvet_http_request_handling_map_response.dart';
export './src/http/request/velvet_http_request.dart';
export './src/http/utils/create_http_request.dart';
export './src/http/velvet_http_config.dart';
export './src/http/velvet_http_exception_handler.dart';
export './src/http/velvet_http_response.dart';
export './src/http/velvet_http.dart';
export './src/kernel/contracts/kernel_contract.dart';
export './src/kernel/events/hide_loading_widget_event.dart';
export './src/kernel/exceptions/kernel_is_already_running_exception.dart';
export './src/kernel/kernel.dart';
export './src/kernel/loaders/velvet_plugin_loader.dart';
export './src/kernel/mixins/setup_config_manager_mixin.dart';
export './src/kernel/mixins/setup_container_composition_mixin.dart';
export './src/kernel/mixins/setup_env_mixin.dart';
export './src/kernel/mixins/setup_event_but_mixin.dart';
export './src/kernel/mixins/setup_logger_mixin.dart';
export './src/kernel/mixins/setup_plugin_manager_mixin.dart';
export './src/kernel/mixins/setup_riverpod_mixin.dart';
export './src/kernel/mixins/setup_widgets_mixin.dart';
export './src/kernel/widgets/components/stack_trace_main_error_alert.dart';
export './src/kernel/widgets/components/stack_trace_parsed_line_info.dart';
export './src/kernel/widgets/components/stack_trace_viewer.dart';
export './src/kernel/widgets/components/strack_trace_parsed_line_row.dart';
export './src/kernel/widgets/kernel_app_widget.dart';
export './src/kernel/widgets/kernel_error_debug_widget.dart';
export './src/kernel/widgets/kernel_error_widget.dart';
export './src/kernel/widgets/kernel_loading_widget.dart';
export './src/kernel/widgets/kernel_widget.dart';
export './src/router/config/default_velvet_router_config.dart';
export './src/router/contracts/velvet_router_config_contract.dart';
export './src/router/contracts/velvet_router_contract.dart';
export './src/router/enums/router_page_transition_enum.dart';
export './src/router/events/velvet_route_did_pop_event.dart';
export './src/router/events/velvet_route_did_push_event.dart';
export './src/router/events/velvet_route_did_remove_event.dart';
export './src/router/events/velvet_route_did_replace_event.dart';
export './src/router/events/velvet_route_did_start_user_gesture_event.dart';
export './src/router/events/velvet_route_did_stop_user_gesture_event.dart';
export './src/router/middleware/velvet_middleware_pipeline.dart';
export './src/router/middleware/velvet_middleware.dart';
export './src/router/mixins/velvet_route_page_builder_mixin.dart';
export './src/router/observers/hide_loading_widget_observer.dart';
export './src/router/observers/velvet_proxy_router_observer.dart';
export './src/router/velvet_route.dart';
export './src/router/velvet_router_plugin.dart';
export './src/store/adapters/shared_preferences_simple_store.dart';
export './src/store/contracts/velvet_store_cleaner_adapter_contract.dart';
export './src/store/contracts/velvet_store_contract.dart';
export './src/store/contracts/velvet_store_simple_adapter_contract.dart';
export './src/store/extensions/velvet_store_on_container_extension.dart';
export './src/store/velvet_storable.dart';
export './src/store/velvet_store_plugin.dart';
export './src/store/velvet_store.dart';
export './src/theme/config/default_theme_config.dart';
export './src/theme/contracts/theme_config_contract.dart';
export './src/theme/contracts/theme_definition_contract.dart';
export './src/theme/extensions/theme_definition_build_context_extension.dart';
export './src/theme/extensions/theme_definition_theme_data_extension.dart';
export './src/theme/hooks/use_create_dark_theme.dart';
export './src/theme/hooks/use_create_light_theme.dart';
export './src/theme/providers/theme_dark_provider.dart';
export './src/theme/providers/theme_data_provider.dart';
export './src/theme/providers/theme_light_provider.dart';
export './src/theme/theme_definition.dart';
export './src/theme/theme_plugin.dart';
export './src/theme/themes/wireframe/wireframe_dark.dart';
export './src/theme/themes/wireframe/wireframe_light.dart';
export './src/translation/adapters/flutter_i18n_translator_adapter.dart';
export './src/translation/config/default_translation_config.dart';
export './src/translation/contracts/translation_config_contract.dart';
export './src/translation/contracts/translator_adapter_contract.dart';
export './src/translation/contracts/translator_contract.dart';
export './src/translation/events/locale_loaded_from_os.dart';
export './src/translation/events/locale_loaded_from_store.dart';
export './src/translation/exceptions/locale_not_available_exception.dart';
export './src/translation/extensions/translator_extension.dart';
export './src/translation/hooks/use_locale_switcher.dart';
export './src/translation/providers/translator_adapter_provider.dart';
export './src/translation/providers/translator_provider.dart';
export './src/translation/storables/locale_storable.dart';
export './src/translation/translate.dart';
export './src/translation/translation_plugin.dart';
export './src/translation/translator.dart';
export './src/utils/callback_manager.dart';
export './src/utils/kernel_context.dart';
export './src/utils/navigator_context.dart';
export './src/utils/riverpod_container.dart';
export './src/validation/rules/bool/must_be_false_rule.dart';
export './src/validation/rules/bool/must_be_true_rule.dart';
export './src/validation/rules/confirmation_rule.dart';
export './src/validation/rules/email_rule.dart';
export './src/validation/rules/fixed_length_rule.dart';
export './src/validation/rules/max_length_rule.dart';
export './src/validation/rules/min_length_rule.dart';
export './src/validation/rules/required_string_rule.dart';
export './src/validation/velvet_rule.dart';
export './src/validation/velvet_validator.dart';
export './src/widgets/pre_renderer.dart';
// @endindex
