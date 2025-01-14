// Autogenerated from Pigeon (v0.3.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
#import "messages.h"
#import <Flutter/Flutter.h>

#if !__has_feature(objc_arc)
#error File requires ARC to be enabled.
#endif

static NSDictionary<NSString*, id>* wrapResult(NSDictionary *result, FlutterError *error) {
  NSDictionary *errorDict = (NSDictionary *)[NSNull null];
  if (error) {
    errorDict = @{
        @"code": (error.code ? error.code : [NSNull null]),
        @"message": (error.message ? error.message : [NSNull null]),
        @"details": (error.details ? error.details : [NSNull null]),
        };
  }
  return @{
      @"result": (result ? result : [NSNull null]),
      @"error": errorDict,
      };
}

@interface FLTVersion ()
+(FLTVersion*)fromMap:(NSDictionary*)dict;
-(NSDictionary*)toMap;
@end
@interface FLTGoods ()
+(FLTGoods*)fromMap:(NSDictionary*)dict;
-(NSDictionary*)toMap;
@end

@implementation FLTVersion
+(FLTVersion*)fromMap:(NSDictionary*)dict {
  FLTVersion* result = [[FLTVersion alloc] init];
  result.string = dict[@"string"];
  if ((NSNull *)result.string == [NSNull null]) {
    result.string = nil;
  }
  return result;
}
-(NSDictionary*)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.string ? self.string : [NSNull null]), @"string", nil];
}
@end

@implementation FLTGoods
+(FLTGoods*)fromMap:(NSDictionary*)dict {
  FLTGoods* result = [[FLTGoods alloc] init];
  result.name = dict[@"name"];
  if ((NSNull *)result.name == [NSNull null]) {
    result.name = nil;
  }
  result.price = dict[@"price"];
  if ((NSNull *)result.price == [NSNull null]) {
    result.price = nil;
  }
  result.expiryDate = dict[@"expiryDate"];
  if ((NSNull *)result.expiryDate == [NSNull null]) {
    result.expiryDate = nil;
  }
  result.type = [dict[@"type"] integerValue];
  return result;
}
-(NSDictionary*)toMap {
  return [NSDictionary dictionaryWithObjectsAndKeys:(self.name ? self.name : [NSNull null]), @"name", (self.price ? self.price : [NSNull null]), @"price", (self.expiryDate ? self.expiryDate : [NSNull null]), @"expiryDate", @(self.type), @"type", nil];
}
@end

void FLTExampleApiSetup(id<FlutterBinaryMessenger> binaryMessenger, id<FLTExampleApi> api) {
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.ExampleApi.getPlatformVersion"
        binaryMessenger:binaryMessenger];
    if (api) {
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FlutterError *error;
        FLTVersion *output = [api getPlatformVersion:&error];
        callback(wrapResult([output toMap], error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}
void FLTStoreApiSetup(id<FlutterBinaryMessenger> binaryMessenger, id<FLTStoreApi> api) {
  {
    FlutterBasicMessageChannel *channel =
      [FlutterBasicMessageChannel
        messageChannelWithName:@"dev.flutter.pigeon.StoreApi.sell"
        binaryMessenger:binaryMessenger];
    if (api) {
      [channel setMessageHandler:^(id _Nullable message, FlutterReply callback) {
        FLTGoods *input = [FLTGoods fromMap:message];
        FlutterError *error;
        [api sell:input error:&error];
        callback(wrapResult(nil, error));
      }];
    }
    else {
      [channel setMessageHandler:nil];
    }
  }
}
