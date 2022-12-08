import 'package:flutter_test/flutter_test.dart';
import 'package:macos_media_test_plugin/macos_media_test_plugin.dart';
import 'package:macos_media_test_plugin/macos_media_test_plugin_platform_interface.dart';
import 'package:macos_media_test_plugin/macos_media_test_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMacosMediaTestPluginPlatform
    with MockPlatformInterfaceMixin
    implements MacosMediaTestPluginPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final MacosMediaTestPluginPlatform initialPlatform = MacosMediaTestPluginPlatform.instance;

  test('$MethodChannelMacosMediaTestPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMacosMediaTestPlugin>());
  });

  test('getPlatformVersion', () async {
    MacosMediaTestPlugin macosMediaTestPlugin = MacosMediaTestPlugin();
    MockMacosMediaTestPluginPlatform fakePlatform = MockMacosMediaTestPluginPlatform();
    MacosMediaTestPluginPlatform.instance = fakePlatform;

    expect(await macosMediaTestPlugin.getPlatformVersion(), '42');
  });
}
