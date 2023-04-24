
import 'vidyo_plugin_swift_platform_interface.dart';

class VidyoPluginSwift {
  Future<String?> getPlatformVersion() {
    return VidyoPluginSwiftPlatform.instance.getPlatformVersion();
  }
}
