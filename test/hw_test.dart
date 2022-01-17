import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hw/hw.dart';

void main() {
  const MethodChannel channel = MethodChannel('hw');

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
    expect(await Hw.platformVersion, '42');
  });
}
