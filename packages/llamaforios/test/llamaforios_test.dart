import 'package:flutter_test/flutter_test.dart';
import 'package:llamaforios/llamaforios.dart';
import 'package:llamaforios/llamaforios_platform_interface.dart';
import 'package:llamaforios/llamaforios_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLlamaforiosPlatform
    with MockPlatformInterfaceMixin
    implements LlamaforiosPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LlamaforiosPlatform initialPlatform = LlamaforiosPlatform.instance;

  test('$MethodChannelLlamaforios is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLlamaforios>());
  });

  test('getPlatformVersion', () async {
    Llamaforios llamaforiosPlugin = Llamaforios();
    MockLlamaforiosPlatform fakePlatform = MockLlamaforiosPlatform();
    LlamaforiosPlatform.instance = fakePlatform;

    expect(await llamaforiosPlugin.getPlatformVersion(), '42');
  });
}
