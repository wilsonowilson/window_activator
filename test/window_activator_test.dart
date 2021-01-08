import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:window_activator/window_activator.dart';

void main() {
  const MethodChannel channel = MethodChannel('window_activator');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('setFocus', () async {
    expect(await WindowActivator.activateWindow(), true);
  });
}
