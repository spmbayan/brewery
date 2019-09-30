#import "BreweryPlugin.h"
#import <brewery/brewery-Swift.h>

@implementation BreweryPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBreweryPlugin registerWithRegistrar:registrar];
}
@end
