#import "AuthenticationManagerPlugin.h"
#if __has_include(<authentication_manager/authentication_manager-Swift.h>)
#import <authentication_manager/authentication_manager-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "authentication_manager-Swift.h"
#endif

@implementation AuthenticationManagerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAuthenticationManagerPlugin registerWithRegistrar:registrar];
}
@end
