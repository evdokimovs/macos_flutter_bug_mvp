import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:macos_media_test_plugin/macos_media_test_plugin_method_channel.dart';

void main() {
  MethodChannelMacosMediaTestPlugin platform = MethodChannelMacosMediaTestPlugin();
  const MethodChannel channel = MethodChannel('macos_media_test_plugin');

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
