import 'package:flutter_test/flutter_test.dart';
import 'package:form_field_controller/form_field_controller.dart';
import 'package:form_field_controller/form_field_controller_platform_interface.dart';
import 'package:form_field_controller/form_field_controller_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFormFieldControllerPlatform 
    with MockPlatformInterfaceMixin
    implements FormFieldControllerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FormFieldControllerPlatform initialPlatform = FormFieldControllerPlatform.instance;

  test('$MethodChannelFormFieldController is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFormFieldController>());
  });

  test('getPlatformVersion', () async {
    FormFieldController formFieldControllerPlugin = FormFieldController();
    MockFormFieldControllerPlatform fakePlatform = MockFormFieldControllerPlatform();
    FormFieldControllerPlatform.instance = fakePlatform;
  
    expect(await formFieldControllerPlugin.getPlatformVersion(), '42');
  });
}
