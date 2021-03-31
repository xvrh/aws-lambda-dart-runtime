import 'dart:io';

import 'package:mockito/mockito.dart';

class MockHttpClientResponse extends Mock implements HttpClientResponse {
  MockHttpClientResponse(this.statusCode,
      {required this.result, required this.headers, required this.body});

  @override
  final int statusCode;

  final String result;

  @override
  final HttpHeaders headers;

  // encode the response body as bytes.
  final List<int> body;
}

/// A mocked [HttpHeaders] that ignores all writes.
class MockHttpHeaders extends HttpHeaders {
  @override
  List<String> operator [](String name) => <String>[];

  @override
  void add(String name, Object value, {bool preserveHeaderCase = false}) {}

  @override
  void clear() {}

  @override
  void forEach(void Function(String name, List<String> values) f) {}

  @override
  void noFolding(String name) {}

  @override
  void remove(String name, Object value) {}

  @override
  void removeAll(String name) {}

  @override
  void set(String name, Object value, {bool preserveHeaderCase = false}) {}

  @override
  String? value(String name) => null;
}
