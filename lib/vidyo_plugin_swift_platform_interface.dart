import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'vidyo_plugin_swift_method_channel.dart';

abstract class VidyoPluginSwiftPlatform extends PlatformInterface {
  /// Constructs a VidyoPluginSwiftPlatform.
  VidyoPluginSwiftPlatform() : super(token: _token);

  static final Object _token = Object();

  static VidyoPluginSwiftPlatform _instance = MethodChannelVidyoPluginSwift();

  /// The default instance of [VidyoPluginSwiftPlatform] to use.
  ///
  /// Defaults to [MethodChannelVidyoPluginSwift].
  static VidyoPluginSwiftPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VidyoPluginSwiftPlatform] when
  /// they register themselves.
  static set instance(VidyoPluginSwiftPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
