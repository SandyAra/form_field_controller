#import "FormFieldControllerPlugin.h"
#if __has_include(<form_field_controller/form_field_controller-Swift.h>)
#import <form_field_controller/form_field_controller-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "form_field_controller-Swift.h"
#endif

@implementation FormFieldControllerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFormFieldControllerPlugin registerWithRegistrar:registrar];
}
@end
