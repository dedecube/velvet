part of 'use_input_state.dart';

class InputState {
  InputState({
    required this.controller,
    required this.focusNode,
    this.error,
    required this.setError,
    required this.clearError,
    this.exceptionMatcher,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String? error;

  void Function(String? errorMessage) setError;
  VoidCallback clearError;
  ExceptionMatcher? exceptionMatcher;
}
