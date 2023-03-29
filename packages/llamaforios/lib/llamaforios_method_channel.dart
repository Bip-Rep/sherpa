import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'llamaforios_platform_interface.dart';

/// An implementation of [LlamaforiosPlatform] that uses method channels.
class MethodChannelLlamaforios extends LlamaforiosPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('llamaforios');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
