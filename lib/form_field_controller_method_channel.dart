import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'form_field_controller_platform_interface.dart';

/// An implementation of [FormFieldControllerPlatform] that uses method channels.
class MethodChannelFormFieldController extends FormFieldControllerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('form_field_controller');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
