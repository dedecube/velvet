part of 'middleware_contract.dart';

/// A function type representing the next middleware in the chain.
///
/// The [Next] function is used to invoke the next middleware in the chain.
/// It returns a [Future] that resolves to a [MiddlewareOperation].
typedef Next = Future<MiddlewareOperation> Function();
