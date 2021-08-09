import 'dart:convert';
import 'dart:io' show File;

import 'package:aws_lambda_dart_runtime/aws_lambda_dart_runtime.dart';
import "package:test/test.dart";

Map<String, dynamic> loadFile(String file) {
  return jsonDecode(File(file).readAsStringSync()) as Map<String, dynamic>;
}

void main() {
  group('cognito_default', () {
    test('json got parsed and creates an event', () async {
      final event =
          AwsCognitoEvent.fromJson(loadFile('data/cognito_event.json'));

      expect(event.version, equals(1));
      expect(event.userPoolId, equals("1234567"));
      expect(event.userName, equals("foo"));
      expect(event.response.smsMessage, equals("foo"));
      expect(event.response.emailSubject, equals("foo"));
      expect(event.response.emailMessage, equals("bar"));
    });

    test('Cognito message event', () async {
      var event =
          AwsCognitoEvent.fromJson(loadFile('data/cognito_message_event.json'));
      expect(event.version, 1);
      expect(event.request.userAttributes, true);
    });
  });
}
