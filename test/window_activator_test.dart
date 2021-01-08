import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:window_activator/window_activator.dart';

void main() {
  const MethodChannel channel = MethodChannel('window_activator');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await WindowActivator.platformVersion, '42');
  });
}
