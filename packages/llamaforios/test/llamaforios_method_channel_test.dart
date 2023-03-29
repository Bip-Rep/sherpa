import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:llamaforios/llamaforios_method_channel.dart';

void main() {
  MethodChannelLlamaforios platform = MethodChannelLlamaforios();
  const MethodChannel channel = MethodChannel('llamaforios');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
