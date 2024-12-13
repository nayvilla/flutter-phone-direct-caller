// This is a basic Flutter integration test.
//
// Since integration tests run in a full Flutter application, they can interact
// with the host side of a plugin implementation, unlike Dart unit tests.
//
// For more information about Flutter integration tests, please see
// https://flutter.dev/to/integration-testing

import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('callNumber test', (WidgetTester tester) async {
    const testNumber = '123456789';
    final bool? result = await FlutterPhoneDirectCaller.callNumber(testNumber);

    // Assert that the callNumber method returns a non-null result.
    expect(result, isNotNull);

    // Additional check: Ensure the call was successful (true).
    expect(result, true);
  });
}