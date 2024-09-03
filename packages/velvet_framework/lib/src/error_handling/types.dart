import 'package:velvet_framework/src/error_handling/exception_to_message_resolver.dart';

/// A function type that matches an [Exception] and performs some action.
///
/// The [ExceptionMatcher] takes an [Exception] as input and performs some action
/// based on the type of the exception. It can be used to handle different types
/// of exceptions in a specific way.
typedef ExceptionMatcher = void Function(Exception exception);

/// A factory function type that creates an [ExceptionToMessageResolver].
///
/// The [ExceptionToMessageResolverFactory] is a factory function that creates
/// an [ExceptionToMessageResolver]. An [ExceptionToMessageResolver] is responsible
/// for resolving an [Exception] to a human-readable error message. This factory
/// function can be used to create different instances of [ExceptionToMessageResolver]
/// based on specific requirements.
typedef ExceptionToMessageResolverFactory = ExceptionToMessageResolver
    Function();
