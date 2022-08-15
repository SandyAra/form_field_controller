import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'form_field_controller_method_channel.dart';

abstract class FormFieldControllerPlatform extends PlatformInterface {
  /// Constructs a FormFieldControllerPlatform.
  FormFieldControllerPlatform() : super(token: _token);

  static final Object _token = Object();

  static FormFieldControllerPlatform _instance = MethodChannelFormFieldController();

  /// The default instance of [FormFieldControllerPlatform] to use.
  ///
  /// Defaults to [MethodChannelFormFieldController].
  static FormFieldControllerPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FormFieldControllerPlatform] when
  /// they register themselves.
  static set instance(FormFieldControllerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
