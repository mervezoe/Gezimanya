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


#import "ThriftPingRequest.h"


@implementation ThriftPingRequestConstants
+ (void) initialize {
}
@end

@implementation ThriftPingRequest

- (id) initWithGlobalResponseRequested: (BOOL) globalResponseRequested sessionKey: (int32_t) sessionKey pingRequestId: (int32_t) pingRequestId
{
  self = [super init];
  __globalResponseRequested = globalResponseRequested;
  __globalResponseRequested_isset = YES;
  __sessionKey = sessionKey;
  __sessionKey_isset = YES;
  __pingRequestId = pingRequestId;
  __pingRequestId_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"globalResponseRequested"])
  {
    __globalResponseRequested = [decoder decodeBoolForKey: @"globalResponseRequested"];
    __globalResponseRequested_isset = YES;
  }
  if ([decoder containsValueForKey: @"sessionKey"])
  {
    __sessionKey = [decoder decodeInt32ForKey: @"sessionKey"];
    __sessionKey_isset = YES;
  }
  if ([decoder containsValueForKey: @"pingRequestId"])
  {
    __pingRequestId = [decoder decodeInt32ForKey: @"pingRequestId"];
    __pingRequestId_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__globalResponseRequested_isset)
  {
    [encoder encodeBool: __globalResponseRequested forKey: @"globalResponseRequested"];
  }
  if (__sessionKey_isset)
  {
    [encoder encodeInt32: __sessionKey forKey: @"sessionKey"];
  }
  if (__pingRequestId_isset)
  {
    [encoder encodeInt32: __pingRequestId forKey: @"pingRequestId"];
  }
}

- (void) dealloc
{
  [super dealloc];
}

- (BOOL) globalResponseRequested {
  return __globalResponseRequested;
}

- (void) setGlobalResponseRequested: (BOOL) globalResponseRequested {
  __globalResponseRequested = globalResponseRequested;
  __globalResponseRequested_isset = YES;
}

- (BOOL) globalResponseRequestedIsSet {
  return __globalResponseRequested_isset;
}

- (void) unsetGlobalResponseRequested {
  __globalResponseRequested_isset = NO;
}

- (int32_t) sessionKey {
  return __sessionKey;
}

- (void) setSessionKey: (int32_t) sessionKey {
  __sessionKey = sessionKey;
  __sessionKey_isset = YES;
}

- (BOOL) sessionKeyIsSet {
  return __sessionKey_isset;
}

- (void) unsetSessionKey {
  __sessionKey_isset = NO;
}

- (int32_t) pingRequestId {
  return __pingRequestId;
}

- (void) setPingRequestId: (int32_t) pingRequestId {
  __pingRequestId = pingRequestId;
  __pingRequestId_isset = YES;
}

- (BOOL) pingRequestIdIsSet {
  return __pingRequestId_isset;
}

- (void) unsetPingRequestId {
  __pingRequestId_isset = NO;
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
        if (fieldType == TType_BOOL) {
          BOOL fieldValue = [inProtocol readBool];
          [self setGlobalResponseRequested: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setSessionKey: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setPingRequestId: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftPingRequest"];
  if (__globalResponseRequested_isset) {
    [outProtocol writeFieldBeginWithName: @"globalResponseRequested" type: TType_BOOL fieldID: 1];
    [outProtocol writeBool: __globalResponseRequested];
    [outProtocol writeFieldEnd];
  }
  if (__sessionKey_isset) {
    [outProtocol writeFieldBeginWithName: @"sessionKey" type: TType_I32 fieldID: 2];
    [outProtocol writeI32: __sessionKey];
    [outProtocol writeFieldEnd];
  }
  if (__pingRequestId_isset) {
    [outProtocol writeFieldBeginWithName: @"pingRequestId" type: TType_I32 fieldID: 3];
    [outProtocol writeI32: __pingRequestId];
    [outProtocol writeFieldEnd];
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftPingRequest("];
  [ms appendString: @"globalResponseRequested:"];
  [ms appendFormat: @"%i", __globalResponseRequested];
  [ms appendString: @",sessionKey:"];
  [ms appendFormat: @"%i", __sessionKey];
  [ms appendString: @",pingRequestId:"];
  [ms appendFormat: @"%i", __pingRequestId];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

