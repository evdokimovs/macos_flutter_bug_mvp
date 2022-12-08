
import 'macos_media_test_plugin_platform_interface.dart';

class MacosMediaTestPlugin {
  Future<String?> getPlatformVersion() {
    return MacosMediaTestPluginPlatform.instance.getPlatformVersion();
  }
}
