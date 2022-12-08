import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'macos_media_test_plugin_method_channel.dart';

abstract class MacosMediaTestPluginPlatform extends PlatformInterface {
  /// Constructs a MacosMediaTestPluginPlatform.
  MacosMediaTestPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static MacosMediaTestPluginPlatform _instance = MethodChannelMacosMediaTestPlugin();

  /// The default instance of [MacosMediaTestPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelMacosMediaTestPlugin].
  static MacosMediaTestPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MacosMediaTestPluginPlatform] when
  /// they register themselves.
  static set instance(MacosMediaTestPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
