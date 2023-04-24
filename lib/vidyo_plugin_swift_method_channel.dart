import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'vidyo_plugin_swift_platform_interface.dart';

/// An implementation of [VidyoPluginSwiftPlatform] that uses method channels.
class MethodChannelVidyoPluginSwift extends VidyoPluginSwiftPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('vidyo_plugin_swift');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
