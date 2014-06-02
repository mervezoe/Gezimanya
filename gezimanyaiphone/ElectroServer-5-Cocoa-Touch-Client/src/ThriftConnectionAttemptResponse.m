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

#import "ThriftErrorType.h"

#import "ThriftConnectionAttemptResponse.h"


@implementation ThriftConnectionAttemptResponseConstants
+ (void) initialize {
}
@end

@implementation ThriftConnectionAttemptResponse

- (id) initWithSuccessful: (BOOL) successful connectionId: (int32_t) connectionId error: (int) error
{
  self = [super init];
  __successful = successful;
  __successful_isset = YES;
  __connectionId = connectionId;
  __connectionId_isset = YES;
  __error = error;
  __error_isset = YES;
  return self;
}

- (id) initWithCoder: (NSCoder *) decoder
{
  self = [super init];
  if ([decoder containsValueForKey: @"successful"])
  {
    __successful = [decoder decodeBoolForKey: @"successful"];
    __successful_isset = YES;
  }
  if ([decoder containsValueForKey: @"connectionId"])
  {
    __connectionId = [decoder decodeInt32ForKey: @"connectionId"];
    __connectionId_isset = YES;
  }
  if ([decoder containsValueForKey: @"error"])
  {
    __error = [decoder decodeIntForKey: @"error"];
    __error_isset = YES;
  }
  return self;
}

- (void) encodeWithCoder: (NSCoder *) encoder
{
  if (__successful_isset)
  {
    [encoder encodeBool: __successful forKey: @"successful"];
  }
  if (__connectionId_isset)
  {
    [encoder encodeInt32: __connectionId forKey: @"connectionId"];
  }
  if (__error_isset)
  {
    [encoder encodeInt: __error forKey: @"error"];
  }
}

- (void) dealloc
{
  [super dealloc];
}

- (BOOL) successful {
  return __successful;
}

- (void) setSuccessful: (BOOL) successful {
  __successful = successful;
  __successful_isset = YES;
}

- (BOOL) successfulIsSet {
  return __successful_isset;
}

- (void) unsetSuccessful {
  __successful_isset = NO;
}

- (int32_t) connectionId {
  return __connectionId;
}

- (void) setConnectionId: (int32_t) connectionId {
  __connectionId = connectionId;
  __connectionId_isset = YES;
}

- (BOOL) connectionIdIsSet {
  return __connectionId_isset;
}

- (void) unsetConnectionId {
  __connectionId_isset = NO;
}

- (int) error {
  return __error;
}

- (void) setError: (int) error {
  __error = error;
  __error_isset = YES;
}

- (BOOL) errorIsSet {
  return __error_isset;
}

- (void) unsetError {
  __error_isset = NO;
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
          [self setSuccessful: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 2:
        if (fieldType == TType_I32) {
          int32_t fieldValue = [inProtocol readI32];
          [self setConnectionId: fieldValue];
        } else { 
          [TProtocolUtil skipType: fieldType onProtocol: inProtocol];
        }
        break;
      case 3:
        if (fieldType == TType_I32) {
          int fieldValue = [inProtocol readI32];
          [self setError: fieldValue];
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
  [outProtocol writeStructBeginWithName: @"ThriftConnectionAttemptResponse"];
  if (__successful_isset) {
    [outProtocol writeFieldBeginWithName: @"successful" type: TType_BOOL fieldID: 1];
    [outProtocol writeBool: __successful];
    [outProtocol writeFieldEnd];
  }
  if (__connectionId_isset) {
    [outProtocol writeFieldBeginWithName: @"connectionId" type: TType_I32 fieldID: 2];
    [outProtocol writeI32: __connectionId];
    [outProtocol writeFieldEnd];
  }
  if (__error_isset) {
    [outProtocol writeFieldBeginWithName: @"error" type: TType_I32 fieldID: 3];
    [outProtocol writeI32: __error];
    [outProtocol writeFieldEnd];
  }
  [outProtocol writeFieldStop];
  [outProtocol writeStructEnd];
}

- (NSString *) description {
  NSMutableString * ms = [NSMutableString stringWithString: @"ThriftConnectionAttemptResponse("];
  [ms appendString: @"successful:"];
  [ms appendFormat: @"%i", __successful];
  [ms appendString: @",connectionId:"];
  [ms appendFormat: @"%i", __connectionId];
  [ms appendString: @",error:"];
  [ms appendFormat: @"%i", __error];
  [ms appendString: @")"];
  return [NSString stringWithString: ms];
}

@end

