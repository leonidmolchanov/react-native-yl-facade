#import "React/RCTViewManager.h"
#import <React/RCTBridgeModule.h>


@interface RCT_EXTERN_MODULE(YlFacade, RCTViewManager)

RCT_EXTERN_METHOD(multiply:(float)a withB:(float)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

@end
