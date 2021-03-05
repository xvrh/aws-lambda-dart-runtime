import 'dart:io' show Platform;

import '../client/client.dart';

/// Context contains the Lambda execution context information.
/// They are either provided via [Platform.environment] or [NextInvocation]
/// which is the result from the Lambda API.
///
/// Note: this should not be used directly.
class Context {
  /// Creates a new [Context] from [NextInvocation] which is the data
  /// from the Lambda Runtime Interface for the next [Handler<T>] invocation.
  static Context fromNextInvocation(NextInvocation nextInvocation) {
    return Context(
      requestId: nextInvocation.requestId,
      invokedFunction: nextInvocation.invokedFunctionArn,
    );
  }

  /// Id of the request.
  /// You can use this to track the request for the invocation.
  final String requestId;

  /// The ARN to identify the function.
  final String invokedFunctionArn;

  factory Context({
    required String requestId,
    required String invokedFunction,
  }) {
    return Context.raw(
        invokedFunctionArn: invokedFunction, requestId: requestId);
  }

  const Context.raw({
    required this.requestId,
    required this.invokedFunctionArn,
  })   : assert(requestId != null),
        assert(invokedFunctionArn != null);
}
