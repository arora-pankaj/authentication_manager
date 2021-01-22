import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:authentication_manager/authentication_manager.dart';

void main() {
  const MethodChannel channel = MethodChannel('authentication_manager');

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
    expect(await AuthenticationManager.platformVersion, '42');
  });
}
