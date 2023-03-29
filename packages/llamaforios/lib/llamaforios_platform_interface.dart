import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'llamaforios_method_channel.dart';

abstract class LlamaforiosPlatform extends PlatformInterface {
  /// Constructs a LlamaforiosPlatform.
  LlamaforiosPlatform() : super(token: _token);

  static final Object _token = Object();

  static LlamaforiosPlatform _instance = MethodChannelLlamaforios();

  /// The default instance of [LlamaforiosPlatform] to use.
  ///
  /// Defaults to [MethodChannelLlamaforios].
  static LlamaforiosPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LlamaforiosPlatform] when
  /// they register themselves.
  static set instance(LlamaforiosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
