
import 'llamaforios_platform_interface.dart';

class Llamaforios {
  Future<String?> getPlatformVersion() {
    return LlamaforiosPlatform.instance.getPlatformVersion();
  }
}
