import 'package:flutter_test/flutter_test.dart';
import 'package:vidyo_plugin_swift/vidyo_plugin_swift.dart';
import 'package:vidyo_plugin_swift/vidyo_plugin_swift_platform_interface.dart';
import 'package:vidyo_plugin_swift/vidyo_plugin_swift_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVidyoPluginSwiftPlatform
    with MockPlatformInterfaceMixin
    implements VidyoPluginSwiftPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VidyoPluginSwiftPlatform initialPlatform = VidyoPluginSwiftPlatform.instance;

  test('$MethodChannelVidyoPluginSwift is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVidyoPluginSwift>());
  });

  test('getPlatformVersion', () async {
    VidyoPluginSwift vidyoPluginSwiftPlugin = VidyoPluginSwift();
    MockVidyoPluginSwiftPlatform fakePlatform = MockVidyoPluginSwiftPlatform();
    VidyoPluginSwiftPlatform.instance = fakePlatform;

    expect(await vidyoPluginSwiftPlugin.getPlatformVersion(), '42');
  });
}
