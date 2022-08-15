
import 'form_field_controller_platform_interface.dart';

class FormFieldController {
  Future<String?> getPlatformVersion() {
    return FormFieldControllerPlatform.instance.getPlatformVersion();
  }
}
