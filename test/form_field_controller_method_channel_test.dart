import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:form_field_controller/form_field_controller_method_channel.dart';

void main() {
  MethodChannelFormFieldController platform = MethodChannelFormFieldController();
  const MethodChannel channel = MethodChannel('form_field_controller');

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
