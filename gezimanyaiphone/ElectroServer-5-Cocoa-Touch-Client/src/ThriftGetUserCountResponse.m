/**
 * Autogenerated by Thrift
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 */

#import <Foundation/Foundation.h>

#import <TProtocol.h>
#import <TApplicationException.h>
#import <TProtocolUtil.h>
#import <TProcessor.h>


#import "ThriftGetUserCountResponse.h"


@implementation ThriftGetUserCountResponseConstants
+ (void) initialize {
}
@end

@implementation ThriftGetUserCountResponse

- (id) initWithCount: (int32_t) count
{
  self = [super init];
  __count = count;
  __count_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"count"])
  {
    __count = [decoder decodeInt32ForKey: @"count"];
    __count_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__count_isset)
  {
    [encoder encodeInt32: __count forKey: @"count"];
  }
}

- (void) dealloc
{
  [super dealloc];
}

- (int32_t) count {
  return __count;
}

- (void) setCount: (int32_t) count {
  __count = count;
  __count_isset = YES;
}

- (BOOL) countIsSet {
  return __count_isset;
}

- (void) unsetCount {
  __count_isset = NO;
}

- (void) read: (id <TProtocol>) inProtocol
{
  NSString * fieldName;
  int fieldType;
  int fieldID;

  [inProtocol readStructBeginReturningName: NULL];
  while (true)
  {
    [inProtocol readFieldBeginReturningName: &fieldName type: &fieldType fieldID: &fieldID];
    if (fieldType == TType_STOP) { 
      break;
    }
    switch (fieldID)
    {
      case 1:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setCount: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      default:
        [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        break;
    }
    [inProtocol readFieldEnd];
  }
  [inProtocol readStructEnd];
}

- (void) write: (id <TProtocol>) outProtocol {
  [outProtocol writeStructBeginWithName: @"ThriftGetUserCountResponse"];
  if (__count_isset) {
    [outProtocol writeFieldBeginWithName: @"count" type: TType_I32 fieldID: 1];
    [outProtocol writeI32: __count];
    [outProtocol writeFieldEnd];
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftGetUserCountResponse("];
  [ms appendString: @"count:"];
  [ms appendFormat: @"%i", __count];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

